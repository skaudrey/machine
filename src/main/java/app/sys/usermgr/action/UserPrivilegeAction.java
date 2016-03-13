package app.sys.usermgr.action;

import app.common.Constant;
import app.common.action.GenericActionSupport;
import app.sys.usermgr.VO.UserPrivilegeLevel;
import app.sys.usermgr.model.UserPrivilegeEntity;
import app.sys.usermgr.service.UserPrivilegeService;
import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.security.web.bind.annotation.AuthenticationPrincipal;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Administrator on 2016/3/11.
 */
public class UserPrivilegeAction extends GenericActionSupport{
    @Autowired
    UserPrivilegeService userPrivilegeService;
    public void getUserPrivilegsByUserId(){
        String userId=mSessionMap.get(Constant.USER_ID).toString();
        //根据用户的ID确定用户的权限
        List<UserPrivilegeEntity> userPrivilegeEntities=userPrivilegeService.getUserPrivilegesByUserId(userId);
        List<UserPrivilegeEntity> businessType=new ArrayList<UserPrivilegeEntity>();
        List<UserPrivilegeLevel> userPrivilegeLevels=new ArrayList<UserPrivilegeLevel>();
        List<String> priIdList=new ArrayList<String>();
        userPrivilegeService.getUserPrivilegesLevel(1,userPrivilegeEntities,userPrivilegeLevels,businessType,priIdList);
        mSessionMap.put("businessType",businessType);
        super.writeJson(userPrivilegeLevels);

    }
}
