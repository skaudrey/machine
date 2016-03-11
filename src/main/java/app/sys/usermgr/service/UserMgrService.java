package app.sys.usermgr.service;

import app.sys.usermgr.model.TestUserEntity;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by Administrator on 2016/2/25 0025.
 */
@Transactional
public interface UserMgrService {
    //保存用户实体
    int saveUserEntity(TestUserEntity user);
    //根据用户名密码获取用户实体
    TestUserEntity getUserEntityByParam(String username,String password);
}
