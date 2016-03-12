package app.sys.orgMgr.service.Impl;


import app.sys.orgMgr.dao.OrgDepartmentDao;
import app.sys.orgMgr.dao.OrgDistrictDepartmentDao;
import app.sys.orgMgr.modual.OrgDistrictdepartmentEntity;
import app.sys.orgMgr.service.OrgDepartmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Administrator on 2016/3/12.
 */
@Component
@Transactional
public class OrgDepartmentServiceImpl implements OrgDepartmentService {
    @Autowired
    OrgDistrictDepartmentDao orgDistrictDepartmentDao;

    @Override
    public  String getDistrictOfDept(String userId){
        String hql="from OrgDistrictdepartmentEntity odd where odd.deptId in( " +
                "select uud.deptId form UserUserdepartmentEntity uud where uud.usrId='"+userId+"') ";
        List<OrgDistrictdepartmentEntity> list=orgDistrictDepartmentDao.createQuery(hql).list();
        return list.get(0).getDistCode();
    }
}
