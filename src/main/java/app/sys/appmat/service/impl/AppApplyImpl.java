package app.sys.appmat.service.impl;

import app.common.dao.GenericEntityDao;
import app.sys.appmat.dao.AppApplyDao;
import app.sys.appmat.dao.DicBusinesstypeDao;
import app.sys.appmat.dao.DicMaterialDao;
import app.sys.appmat.model.DicBusinesstypeEntity;
import app.sys.appmat.model.DicMaterialEntity;
import app.sys.appmat.service.AppApplyService;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Skaudrey on 2016/3/11.
 */
@Component
@Transactional
public class AppApplyImpl extends GenericEntityDao implements AppApplyService {

    @Autowired
    AppApplyDao appApplyDao;

    @Autowired
    DicMaterialDao materialDao;

    @Autowired
    DicBusinesstypeDao businesstypeDao;

    @Override
    protected Class entityClass() {
        return null;
    }

    @Override
    public List<Object[]> findAppSimpleByDeptId(int nDeptId) {
        String sql="select bt.btId,bt.btName FROM DicBusinesstypeEntity bt where bt.deptId="+nDeptId;
        Session session=super.getCurrentSession();
        return session.createQuery(sql).list();
    }

    @Override
    public List<Object[]> findDeptByUserId(String sUserID) {
        String sql="select od.deptId,od.name from UserUserdepartmentEntity ud,OrgDepartmentEntity od where od.deptId=ud.deptId and ud.usrId="+sUserID;
        Session session=super.getCurrentSession();
        return session.createQuery(sql).list();
    }

    @Override
    public List<Object[]> findAppMatByAppId(int nBusinessTypeId) {
        String sql="select bm.matId,m.matName,bm.isCopy,bm.amount from" +
                " DicBusinessmaterialEntity bm, DicMaterialEntity m " +
                "where bm.matId=m.matId and bm.btId="+nBusinessTypeId;
        Session session=super.getCurrentSession();
        return session.createQuery(sql).list();
    }

    @Override
    public Integer saveMatType(DicMaterialEntity materialEntity) {
        return materialDao.save(materialEntity);
    }

    @Override
    public Integer saveBusinessType(DicBusinesstypeEntity businesstypeEntity) {
        return businesstypeDao.save(businesstypeEntity);

    }


}
