package app.sys.usermgr.service;

import app.sys.usermgr.model.UserUserEntity;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by Administrator on 2016/2/25 0025.
 */
@Transactional
public interface UserMgrService {
    //保存用户实体
    boolean saveUserEntity(UserUserEntity user);
    //根据用户名密码获取用户实体
    UserUserEntity getUserEntityByParam(String account,String password);
}
