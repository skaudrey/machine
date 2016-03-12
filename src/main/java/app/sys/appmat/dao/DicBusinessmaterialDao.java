package app.sys.appmat.dao;

import app.common.dao.GenericEntityDao;
import app.sys.appmat.model.DicBusinessmaterialEntity;

import javax.inject.Named;

/**
 * Created by Skaudrey on 2016/3/11.
 */
@Named("DicBusinessmaterialDao")
public class DicBusinessmaterialDao extends GenericEntityDao<DicBusinessmaterialEntity,Integer> {
    @Override
    protected Class<DicBusinessmaterialEntity> entityClass() {
        return DicBusinessmaterialEntity.class;
    }
}
