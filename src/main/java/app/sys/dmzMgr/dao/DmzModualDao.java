package app.sys.dmzMgr.dao;

import app.common.dao.GenericEntityDao;
import app.sys.dmzMgr.modual.DmzModualEntity;
import sun.net.www.content.text.Generic;

import javax.inject.Named;

/**
 * Created by Administrator on 2016/3/12.
 */
@Named("DmzModualDao")
public class DmzModualDao extends GenericEntityDao {
    @Override
    protected Class<DmzModualEntity> entityClass() {
        return DmzModualEntity.class;
    }
}
