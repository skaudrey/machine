package app.sys.SVGGenerate.dao;

import app.common.dao.GenericEntityDao;
import app.sys.SVGGenerate.model.BudHouseEntity;

import javax.inject.Named;

/**
 * Created by weishicong on 2016/3/11.
 */
@Named("BudHouseDao")
public class BudHouseDao extends GenericEntityDao<BudHouseEntity,Integer> {
    @Override
    protected Class<BudHouseEntity> entityClass() {
        return BudHouseEntity.class;
    }
}