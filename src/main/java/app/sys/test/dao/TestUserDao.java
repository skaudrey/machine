package app.sys.test.dao;

import app.common.dao.GenericEntityDao;
import app.sys.test.model.TestUserEntity;

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