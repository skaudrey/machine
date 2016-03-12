package app.sys.SVGGenerate.dao;

import app.common.dao.GenericEntityDao;
import app.sys.SVGGenerate.model.BudFloorEntity;

import javax.inject.Named;

/**
 * Created by weishicong on 2016/3/11.
 */
@Named("BudFloorDao")
public class BudFloorDao extends GenericEntityDao<BudFloorEntity,Integer> {
    @Override
    protected Class<BudFloorEntity> entityClass() {
        return BudFloorEntity.class;
    }
}