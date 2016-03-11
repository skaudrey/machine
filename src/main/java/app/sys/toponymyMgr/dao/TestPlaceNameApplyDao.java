package app.sys.toponymyMgr.dao;

import app.common.dao.GenericEntityDao;
import app.sys.toponymyMgr.model.TestPlaceNameApplyEntity;

import javax.inject.Named;

/**
 * Created by Administrator on 2016/3/11 0011.
 */
@Named("TestPlaceNameApplyDao")
public class TestPlaceNameApplyDao extends GenericEntityDao<TestPlaceNameApplyEntity,Integer> {
    @Override
    protected Class<TestPlaceNameApplyEntity> entityClass(){
        return TestPlaceNameApplyEntity.class;
    }
}
