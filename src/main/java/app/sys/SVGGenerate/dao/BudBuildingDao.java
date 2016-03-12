package app.sys.SVGGenerate.dao;

import app.common.dao.GenericEntityDao;
import app.sys.SVGGenerate.model.BudBuildingEntity;

import javax.inject.Named;

/**
 * Created by weishicong on 2016/3/11.
 */
@Named("BudBuildingDao")
public class BudBuildingDao extends GenericEntityDao<BudBuildingEntity,Integer> {
    @Override
    protected Class<BudBuildingEntity> entityClass() {
        return BudBuildingEntity.class;
    }
}