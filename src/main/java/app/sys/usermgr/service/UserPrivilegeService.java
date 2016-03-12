package app.sys.usermgr.service;

import app.sys.usermgr.VO.UserPrivilegeLevel;
import app.sys.usermgr.model.UserPrivilegeEntity;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Administrator on 2016/3/11.
 */
@Transactional
public interface UserPrivilegeService {
    List<UserPrivilegeEntity> getUserPrivilegesByUserId(String userId);
    void getUserPrivilegesLevel(int level,List<UserPrivilegeEntity> userPrivilegeEntities,List<UserPrivilegeLevel> userPrivilegeLevels,List<UserPrivilegeEntity> businessType,List<String> priIdList);
}
