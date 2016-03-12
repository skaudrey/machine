package app.sys.toponymyMgr.action;

import app.common.action.GenericActionSupport;
import app.sys.toponymyMgr.model.TestPlaceNameApplyEntity;
import app.sys.toponymyMgr.service.workflow.PlaceNameWorkflowService;
import org.activiti.engine.RuntimeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Administrator on 2016/3/12 0012.
 */
@Component
public class ToponymyApplyQueryAction extends GenericActionSupport {
    private String userId;

    @Autowired
    private RuntimeService runtimeService;
    @Autowired
    private PlaceNameWorkflowService placeNameWorkflowService;

    @Override
    public String execute() throws Exception {
        return super.execute();
    }

    /**
     * 根据用户Id查询他的 地名申请任务
     */
    public void findToponymyApplyMsgByUid(){

    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }
}
