package app.sys.appmat.dao;

import app.common.dao.GenericEntityDao;
import app.sys.appmat.model.DicMaterialEntity;

import javax.inject.Named;

/**
 * Created by Skaudrey on 2016/3/11.
 */
@Named("DicMaterialDao")
public class DicMaterialDao extends GenericEntityDao<DicMaterialEntity,Integer> {
    @Override
    protected Class<DicMaterialEntity> entityClass() {
        return DicMaterialEntity.class;
    }
}
