package app.sys.appmat.dao;

import app.common.dao.GenericEntityDao;
import app.sys.appmat.model.AppApplyEntity;

import javax.inject.Named;

/**
 * Created by Skaudrey on 2016/3/11.
 */
@Named("AppApplyDao")
public class AppApplyDao extends GenericEntityDao<AppApplyEntity,Integer> {
    @Override
    protected Class<AppApplyEntity> entityClass() {
        return AppApplyEntity.class;
    }
}
