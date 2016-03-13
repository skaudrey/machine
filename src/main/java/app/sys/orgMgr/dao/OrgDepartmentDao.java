package app.sys.orgMgr.dao;

import app.common.dao.GenericEntityDao;
import app.sys.appmat.model.OrgDepartmentEntity;


import javax.inject.Named;

/**
 * Created by Administrator on 2016/3/12.
 */
@Named("OrgDepartmentDao")
public class OrgDepartmentDao extends GenericEntityDao{
    @Override
    public Class<OrgDepartmentEntity> entityClass(){
        return OrgDepartmentEntity.class;
    }
}
