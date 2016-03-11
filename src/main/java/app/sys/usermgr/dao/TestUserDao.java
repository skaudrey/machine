package app.sys.usermgr.dao;

import app.common.dao.GenericEntityDao;
import app.sys.usermgr.model.TestUserEntity;

import javax.inject.Named;

/**
 * Created by Peng on 2015/12/10 0010.
 */
@Named("TestUserDao")
public class TestUserDao extends GenericEntityDao<TestUserEntity,Integer> {
    @Override
    protected Class<TestUserEntity> entityClass(){
        return TestUserEntity.class;
    }
}