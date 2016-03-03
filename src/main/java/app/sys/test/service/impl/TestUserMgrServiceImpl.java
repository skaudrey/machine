package app.sys.test.service.impl;

import app.sys.test.dao.TestUserDao;
import app.sys.test.model.TestUserEntity;
import app.sys.test.service.TestUserMgrService;
import org.hibernate.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by Administrator on 2016/2/25 0025.
 */
@Component
@Transactional
public class TestUserMgrServiceImpl implements TestUserMgrService{
    @Autowired
    private TestUserDao testUserDao;
    @Override
    public int saveUserEntity(TestUserEntity user) {
        return testUserDao.save(user);
    }

    @Override
    public TestUserEntity getUserEntityByParam(String username, String password) {
        String hql = "from TestUserEntity t where t.username = :USERNAME and t.password = :PASSWORD";
        Query query = testUserDao.createQuery(hql).setString("USERNAME",username).setString("PASSWORD",password);
        return (TestUserEntity)query.uniqueResult();
    }
}
