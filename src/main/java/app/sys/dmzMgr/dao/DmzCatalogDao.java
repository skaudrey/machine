package app.sys.dmzMgr.dao;

import app.common.dao.GenericEntityDao;
import app.sys.dmzMgr.modual.DmzCatalogEntity;

import javax.inject.Named;

/**
 * Created by Administrator on 2016/3/12.
 */
@Named("DmzCatalogDao")
public class DmzCatalogDao extends GenericEntityDao{
    @Override
    protected Class<DmzCatalogEntity> entityClass() {
        return DmzCatalogEntity.class;
    }
}
