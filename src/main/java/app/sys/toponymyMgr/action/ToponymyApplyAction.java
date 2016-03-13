package app.sys.toponymyMgr.action;

import app.common.Constant;
import app.common.action.GenericActionSupport;
import app.sys.toponymyMgr.model.TestPlaceNameApplyEntity;
import app.sys.toponymyMgr.service.workflow.PlaceNameWorkflowService;
import com.opensymphony.xwork2.ModelDriven;
import org.activiti.engine.IdentityService;
import org.activiti.engine.RepositoryService;
import org.activiti.engine.RuntimeService;
import org.activiti.engine.TaskService;
import org.activiti.engine.identity.Group;
import org.activiti.engine.identity.User;
import org.activiti.engine.repository.DeploymentBuilder;
import org.activiti.engine.runtime.ProcessInstance;
import org.activiti.engine.task.Task;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2016/2/26 0026.
 */
@Component
public class ToponymyApplyAction extends GenericActionSupport implements ModelDriven<TestPlaceNameApplyEntity> {
    private TestPlaceNameApplyEntity testPlaceNameApplyEntity;

    private List<TestPlaceNameApplyEntity> results;

    @Autowired
    private RepositoryService repositoryService; //Activiti 的服务

    @Autowired
    private TaskService taskService; //Activiti 的服务
    @Autowired
    private RuntimeService runtimeService; //Activiti 的服务
    @Autowired
    private IdentityService identityService; //Activiti 的服务
    @Autowired
    private PlaceNameWorkflowService placeNameWorkflowService; //自定义的服务，用来处理请假流程

    @Override
    public String execute() throws Exception {
        return super.execute();
    }

    //启动地名申请流程
    public String startToponymyApplyProcess(){
        String userId = mSessionMap.get(Constant.USER_ID).toString();
        String userName = mSessionMap.get(Constant.USER_NAME).toString();
        Map<String,Object> variables = new HashMap<String, Object>(); //这个叫作流程变量，存在于整个流程过程中，你可以把一些东西丢进去，需要的时候用API取出来
        ProcessInstance processInstance = placeNameWorkflowService.startWorkflow(testPlaceNameApplyEntity, userId, userName, variables);
        return SUCCESS;
    }

    //查看待办任务
    public String getTaskList(){
        String userId = mSessionMap.get(Constant.USER_ID).toString();
        results = placeNameWorkflowService.findTodoTasks(userId);
        return "task_show";
    }

    //签收任务
    public String claimTask(){
        String userId = mSessionMap.get(Constant.USER_ID).toString();
        taskService.claim(mServletRequest.getParameter("taskId"), userId);// 这个任务由这个用户签收
                                         // 当一个任务有多个候选人，或者属于一个候选组时，有一个人签收了这个任务，其他人就看不到这个任务了，这个任务归签收人所有，由签收人办理
        return "claimed"; //签收之后，再查询并显示任务列表
    }

    //显示处理任务界面
    public String showTaskView(){
        String taskId = mServletRequest.getParameter("taskId");
        //根据前台传过来的taskId参数，我们可以使用Activiti的taskService来查到该任务（从Activiti自己的任务表里查）
        Task task = taskService.createTaskQuery().taskId(taskId).singleResult(); //跟uniqueResult()是同一个意思
        ProcessInstance processInstance = runtimeService.createProcessInstanceQuery()
                .processInstanceId(task.getProcessInstanceId()).singleResult();
        int placeNameApplyId = Integer.parseInt(processInstance.getBusinessKey());
        testPlaceNameApplyEntity = placeNameWorkflowService.getPlaceNameApplyEntityById(placeNameApplyId);
        testPlaceNameApplyEntity.setTaskId(taskId);//不要忘记把taskId设置回去，在前台的时候还要用来放在<input hidden 里面暂时存着，方便后面屎用。
        return "task-" + task.getTaskDefinitionKey(); // taskId 和 taskDefinitionId 是不一样的, 例如， taskid=30021,是这个任务在数据库表里的主键
                                                      // taskDefinitonId=“deptLeaderVerify”,是写在Bpmn里面，在定时userTask的时候，设置的一个Id
    }

    //完成任务方法  比如说 完成审批
    public String finishTask(){
        //声明流程变量，等会儿要把 true 或者 false 塞里面去，供输出流进行判断
        Map<String,Object> variables = new HashMap<String, Object>();
        //先把前台所有传过来的参数 的 参数名 给获取到
        Enumeration<String> parameterNames = mServletRequest.getParameterNames();  //一般用Iterator比较多
        while (parameterNames.hasMoreElements()){
            //我们约定，前台传过来的参数（也就是html标签的name） 以 p_XXX_XXX 来命名，p 代表这是个参数，第一个XXX是参数类型，第二个XXX是参数名称
            String parameterName = parameterNames.nextElement();
            if (parameterName.startsWith("p_")){
                String[] parameter = parameterName.split("_");
                if (parameter.length == 3){
                    //把参数值拿到手
                    String parameterValue = mServletRequest.getParameter(parameterName);
                    Object value = new Object();
                    if (parameter[1].equals("b")){
                        //如果参数类型是Boolean类型的话 .间接地把它转化成Boolean类型
                        if (parameterValue.equals(Constant.TRUE)){
                            value = true;
                        }else if (parameterValue.equals(Constant.FALSE)){
                            value = false;
                        }
                    }
                    variables.put(parameter[2],value);
                }
            }

        }
        placeNameWorkflowService.complete(mServletRequest.getParameter("taskId"), variables);
        return SUCCESS;
    }

    //获取用户的申请流程信息
    public String getUserApplyFlows(){
        results = placeNameWorkflowService.findApplyResultByUid(mSessionMap.get(Constant.USER_ID).toString());
        return "userApplyList";
    }

    //手动部署（写着玩，一般都是在spring里面配置好，让spring自动部署所有流程文件，或者是上传流程文件进行部署）
    public String deploymentByClick(){
        //定义classpath
        String bpmnClassPath = "/diagrams/leave/leave.bpmn";
        String pngClassPath = "/diagrams/leave/leave.png";
        //创建部署构建器
        DeploymentBuilder deploymentBuilder = repositoryService.createDeployment();
        //添加资源
        deploymentBuilder.addClasspathResource(bpmnClassPath);
        deploymentBuilder.addClasspathResource(pngClassPath);
        //执行部署
        deploymentBuilder.deploy();
        return SUCCESS;
    }

    //初始化一些用户数据，以及相关的组数据
    public void initUserData(){
        /*//创建组，可以理解为角色
        Group group = identityService.newGroup("deptLeader");//括号里面是主键，String类型的
        group.setName("部门领导");
        group.setType("assignment");
        identityService.saveGroup(group);

        //创建并保存用户对象 林忆珺
        User user1 = identityService.newUser("2");
        user1.setFirstName("lin");
        user1.setLastName("yijun");
        identityService.saveUser(user1);

        //创建并保存用户对象 冯淼
        User user2 = identityService.newUser("4");
        user2.setFirstName("feng");
        user2.setLastName("miao");
        identityService.saveUser(user2);

        //创建组与用户的关联  把他们两个都设为部门领导
        identityService.createMembership("2","deptLeader");
        identityService.createMembership("4","deptLeader");*/

        /*Group group = identityService.newGroup("countyLeader");//括号里面是主键，String类型的
        group.setName("县领导");
        group.setType("assignment");
        identityService.saveGroup(group);

        //创建并保存用户对象 李梦
        User user1 = identityService.newUser("2012302580231");
        user1.setFirstName("李");
        user1.setLastName("梦");
        identityService.saveUser(user1);

        //创建并保存用户对象 林林
        User user2 = identityService.newUser("2012302802222");
        user2.setFirstName("林");
        user2.setLastName("林");
        identityService.saveUser(user2);

        //创建组与用户的关联  把他们两个都设为县领导
        identityService.createMembership("2012302580231","countyLeader");
        identityService.createMembership("2012302802222","countyLeader");*/
    }

    @Override
    public TestPlaceNameApplyEntity getModel() {
        if (testPlaceNameApplyEntity==null){
            testPlaceNameApplyEntity = new TestPlaceNameApplyEntity();
        }
        return testPlaceNameApplyEntity;
    }

    public List<TestPlaceNameApplyEntity> getResults() {
        return results;
    }


    public void setResults(List<TestPlaceNameApplyEntity> results) {
        this.results = results;
    }

    public TestPlaceNameApplyEntity getTestPlaceNameApplyEntity() {
        return testPlaceNameApplyEntity;
    }

    public void setTestPlaceNameApplyEntity(TestPlaceNameApplyEntity testPlaceNameApplyEntity) {
        this.testPlaceNameApplyEntity = testPlaceNameApplyEntity;
    }
}
