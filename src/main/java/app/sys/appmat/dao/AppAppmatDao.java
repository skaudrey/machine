package app.sys.appmat.dao;

import app.common.dao.GenericEntityDao;
import app.sys.appmat.model.AppAppmatEntity;

import javax.inject.Named;

/**
 * Created by Skaudrey on 2016/3/11.
 */
@Named("AppAppmatDao")
public class AppAppmatDao extends GenericEntityDao<AppAppmatEntity,Integer> {
    @Override
    protected Class<AppAppmatEntity> entityClass() {
        return AppAppmatEntity.class;
    }
}
