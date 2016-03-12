package app.sys.dmzMgr.service.Impl;

import app.common.action.GenericActionSupport;
import app.common.dao.GenericEntityDao;
import app.sys.dmzMgr.VO.DmzCatalogOrder;
import app.sys.dmzMgr.dao.DmzModualcatalogDao;
import app.sys.dmzMgr.modual.DmzDistmodualEntity;
import app.sys.dmzMgr.service.DmzModualCatalogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Administrator on 2016/3/12.
 */
@Component
@Transactional
public class DmzModualCatalogServiceImpl extends GenericEntityDao implements DmzModualCatalogService {

    @Autowired
    DmzModualcatalogDao dmzModualcatalogDao;

    @Override
    public List<DmzCatalogOrder> getCatalogOrder(DmzDistmodualEntity dmzDistmodualEntity){
        int id=dmzDistmodualEntity.getId();
        String distId=dmzDistmodualEntity.getDistCode();
        int mid=dmzDistmodualEntity.getmId();
        String sql="select new app.sys.dmzMgr.VO.DmzCatalogOrder("+id +
                ",dmc.mId,"+distId+",dmc.mcorder,dc.cId,dc.name," +
                "dc.upcId,dc.type,dc.tableName,dc.fieldName,dc.claCode)" +
                "from DmzModualcatalogEntity dmc,DmzCatalogEntity dc " +
                " where dmc.mId="+mid+" " +
                " and dmc.cId=dc.cId ";
        List<DmzCatalogOrder> list=super.getCurrentSession().createQuery(sql).list();
        return list;
    }

    @Override
    protected Class entityClass() {
        return null;
    }
}
