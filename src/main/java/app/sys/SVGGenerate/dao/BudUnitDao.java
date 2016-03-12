package app.sys.SVGGenerate.dao;

import app.common.dao.GenericEntityDao;
import app.sys.SVGGenerate.model.BudUnitEntity;

import javax.inject.Named;

/**
 * Created by weishicong on 2016/3/11.
 */
@Named("BudUnitDao")
public class BudUnitDao extends GenericEntityDao<BudUnitEntity,Integer> {
    @Override
    protected Class<BudUnitEntity> entityClass() {
        return BudUnitEntity.class;
    }
}