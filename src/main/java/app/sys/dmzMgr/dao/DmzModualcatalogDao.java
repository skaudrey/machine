package app.sys.dmzMgr.dao;

import app.common.dao.GenericEntityDao;
import app.sys.dmzMgr.modual.DmzModualcatalogEntity;

import javax.inject.Named;

/**
 * Created by Administrator on 2016/3/12.
 */
@Named("DmzModualcatalogDao")
public class DmzModualcatalogDao extends GenericEntityDao{
    @Override
    protected Class<DmzModualcatalogEntity> entityClass() {
        return DmzModualcatalogEntity.class;
    }
}
