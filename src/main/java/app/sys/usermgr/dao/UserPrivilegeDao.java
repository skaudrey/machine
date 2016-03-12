package app.sys.usermgr.dao;

import app.common.dao.GenericEntityDao;
import app.sys.usermgr.model.UserPrivilegeEntity;

import javax.inject.Named;

/**
 * Created by Administrator on 2016/3/11.
 */
@Named("UserPrivilegeDao")
public class UserPrivilegeDao extends GenericEntityDao{
    @Override
    public Class<UserPrivilegeEntity> entityClass(){
        return UserPrivilegeEntity.class;
    }
}
