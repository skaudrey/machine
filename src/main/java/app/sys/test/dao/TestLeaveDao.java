package app.sys.test.dao;

import app.common.dao.GenericEntityDao;
import app.sys.test.model.TestLeaveEntity;

import javax.inject.Named;

/**
 * Created by Administrator on 2016/2/27 0027.
 */
@Named("TestLeaveDao")
public class TestLeaveDao extends GenericEntityDao<TestLeaveEntity,Integer> {
    @Override
    protected Class<TestLeaveEntity> entityClass(){
        return TestLeaveEntity.class;
    }
}
