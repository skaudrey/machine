package app.sys.orgMgr.dao;

import app.common.dao.GenericEntityDao;
import app.sys.orgMgr.modual.OrgDistrictdepartmentEntity;

import javax.inject.Named;

/**
 * Created by Administrator on 2016/3/12.
 */
@Named("OrgDistrictDepartmentDao")
public class OrgDistrictDepartmentDao extends GenericEntityDao{
    @Override
    public Class<OrgDistrictdepartmentEntity> entityClass(){
        return OrgDistrictdepartmentEntity.class;
    }
}
