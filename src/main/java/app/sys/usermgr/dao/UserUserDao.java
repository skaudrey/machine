package app.sys.usermgr.dao;

import app.common.dao.GenericEntityDao;
import app.sys.usermgr.model.UserUserEntity;

import javax.inject.Named;

/**
 * Created by Peng on 2015/12/10 0010.
 */
@Named("UserUserDao")
public class UserUserDao extends GenericEntityDao<UserUserEntity,String> {
    @Override
    protected Class<UserUserEntity> entityClass(){
        return UserUserEntity.class;
    }
}