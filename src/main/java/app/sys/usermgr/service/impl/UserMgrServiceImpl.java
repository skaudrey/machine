package app.sys.usermgr.service.impl;

import app.sys.usermgr.dao.UserUserDao;
import app.sys.usermgr.model.UserUserEntity;
import app.sys.usermgr.service.UserMgrService;
import org.hibernate.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by Administrator on 2016/2/25 0025.
 */
@Component
@Transactional
public class UserMgrServiceImpl implements UserMgrService {
    @Autowired
    private UserUserDao userUserDao;
    @Override
    public boolean saveUserEntity(UserUserEntity user) {
        userUserDao.save(user);
        return true;
    }

    @Override
    public UserUserEntity getUserEntityByParam(String account, String password) {
        String hql = "from UserUserEntity u where u.usrId = :ACCOUNT and u.password = :PASSWORD";
        Query query = userUserDao.createQuery(hql).setString("ACCOUNT",account).setString("PASSWORD",password);
        return (UserUserEntity)query.uniqueResult();
    }
}
