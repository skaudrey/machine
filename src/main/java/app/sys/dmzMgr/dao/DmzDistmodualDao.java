package app.sys.dmzMgr.dao;

import app.common.dao.GenericEntityDao;
import app.sys.dmzMgr.modual.DmzDistmodualEntity;

import javax.inject.Named;

/**
 * Created by Administrator on 2016/3/12.
 */
@Named("DmzDistmodualDao")
public class DmzDistmodualDao extends GenericEntityDao<DmzDistmodualEntity,Integer> {
    @Override
    protected Class<DmzDistmodualEntity> entityClass() {
        return DmzDistmodualEntity.class;
    }
}
