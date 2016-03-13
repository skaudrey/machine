package app.sys.appmat.dao;

import app.common.dao.GenericEntityDao;
import app.sys.appmat.model.DicBusinesstypeEntity;

import javax.inject.Named;

/**
 * Created by Skaudrey on 2016/3/11.
 */
@Named("DicBusinesstypeDao")
public class DicBusinesstypeDao extends GenericEntityDao<DicBusinesstypeEntity,Integer> {
    @Override
    protected Class<DicBusinesstypeEntity> entityClass() {
        return DicBusinesstypeEntity.class;
    }
}
