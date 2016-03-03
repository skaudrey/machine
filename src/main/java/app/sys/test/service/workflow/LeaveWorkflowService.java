package app.sys.test.service.workflow;

import app.sys.test.dao.TestLeaveDao;
import app.sys.test.model.TestLeaveEntity;
import org.activiti.engine.IdentityService;
import org.activiti.engine.RuntimeService;
import org.activiti.engine.TaskService;
import org.activiti.engine.runtime.ProcessInstance;
import org.activiti.engine.task.Task;
import org.activiti.engine.task.TaskQuery;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2016/2/27 0027.
 */
@Service
@Transactional
public class LeaveWorkflowService {
    @Autowired
    private TestLeaveDao leaveDao;
    @Autowired
    private IdentityService identityService;
    @Autowired
    private RuntimeService runtimeService;
    @Autowired
    private TaskService taskService;

    /**
     * 保存请假业务实体，同时启动流程
     * @param leaveEntity 请假业务实体
     * @param userId
     * @param variables 启动流量所需变量
     * @return
     */
    public ProcessInstance startWorkflow(TestLeaveEntity leaveEntity,String userId,String userName, Map<String,Object> variables){
        if (leaveEntity.getLid()== 0){
            String  time = new Timestamp(new Date().getTime()).toString().subSequence(0, 19).toString();
            DateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            Timestamp currentTimestamp = null;
            try {
                currentTimestamp = new Timestamp(format.parse(time).getTime());
            } catch (ParseException e) {
                e.printStackTrace();
            }
            leaveEntity.setApplyTime(currentTimestamp);
            leaveEntity.setUid(Integer.parseInt(userId));
            leaveEntity.setApplyName(userName);
        }
        //保存请假的业务实体，获取其生成的id作为业务Id
        String businessKey = leaveDao.save(leaveEntity).toString();
        //把这个用户的id设置成为流程的发启人，也就是说，是这个人请假！数据会存进activiti自己的表里
        identityService.setAuthenticatedUserId(userId+"");
        //启动流程实例
        ProcessInstance processInstance = runtimeService.startProcessInstanceByKey("leave",businessKey,variables);
        String piid = processInstance.getId();
        //建立双向关联,这里需要update吗？待会试试
        leaveEntity.setPiid(piid);
        return processInstance;
    }

    /**
     * 根据用户id，找到这个用户的待办任务呃
     * @param userId
     * @return
     */
    public List<TestLeaveEntity> findTodoTasks(String userId){
        List<TestLeaveEntity> results = new ArrayList<TestLeaveEntity>();

        // 根据当前人的ID查询他所有的任务   这里用的是Activiti的Api来查，任务相关数据存在Activiti自己的表里。
        TaskQuery taskQuery = taskService.createTaskQuery().taskCandidateOrAssigned(userId);
        List<Task> tasks = taskQuery.list();
        // 根据流程的业务ID查询实体并关联
        for(Task task : tasks){
            String piid = task.getProcessInstanceId();
            ProcessInstance processInstance = runtimeService.createProcessInstanceQuery().processInstanceId(piid).singleResult();
            String businessKey = processInstance.getBusinessKey();//获取之前启动流程时设置好的businessKey,也就是我们自己建的 Test_leave表
            TestLeaveEntity leaveEntity = leaveDao.get(Integer.parseInt(businessKey));

            //把task的相关的值获取出来，填到leaveEntity的临时属性里，方便在前台一次性显示所有属性
            leaveEntity.setTaskId(task.getId());
            leaveEntity.setPdid(task.getProcessDefinitionId());
            leaveEntity.setTaskName(task.getName());
            leaveEntity.setTaskCreateTime(task.getCreateTime());
            leaveEntity.setAssignee(task.getAssignee());
            results.add(leaveEntity);
        }
        return results;
    }

    //完成任务，完成任务的同时设置
    public void complete(String taskId, Map<String, Object> variables){
        taskService.complete(taskId, variables);
    }

    //顾名思义
    public TestLeaveEntity getLeaveEntityById(int lid){
        return leaveDao.get(lid);
    }
}
