package app.sys.usermgr.service.impl;

import app.sys.usermgr.VO.UserPrivilegeLevel;
import app.sys.usermgr.dao.UserPrivilegeDao;
import app.sys.usermgr.model.UserPrivilegeEntity;
import app.sys.usermgr.service.UserPrivilegeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Administrator on 2016/3/11.
 */
@Component
@Transactional
public class UserPrivilegeServiceImpl implements UserPrivilegeService {
    @Autowired
    UserPrivilegeDao userPrivilegeDao;
    @Override
    public List<UserPrivilegeEntity> getUserPrivilegesByUserId(String userId){
        String hql="from UserPrivilegeEntity up where up.priId in (" +
                "select urp.priId  from UserUserroleEntity uur,UserRoleEntity ur,UserRoleprivEntity urp where " +
                "uur.usrId='"+userId+"' and uur.roId=ur.roId and ur.roId=urp.roId )";
        List<UserPrivilegeEntity> list=userPrivilegeDao.createQuery(hql).list();
        return list;
    }
    @Override
    public void getUserPrivilegesLevel(int level,List<UserPrivilegeEntity> userPrivilegeEntities,List<UserPrivilegeLevel> userPrivilegeLevels,List<UserPrivilegeEntity> businessType,List<String> priIdList){
        //将要移除掉的
        List<UserPrivilegeEntity> remove=new ArrayList<UserPrivilegeEntity>();

        List<String> next=new ArrayList<String>();
        int size=userPrivilegeEntities.size();
        for(int i=0;i<size;i++){
            UserPrivilegeEntity userPrivilegeEntity=userPrivilegeEntities.get(i);
            UserPrivilegeLevel userPrivilegeLevel;
            if(userPrivilegeEntity.getType().equals("0")){
                if(level==1){
                    if(userPrivilegeEntity.getUpPriId()==null){
                        userPrivilegeLevel=new UserPrivilegeLevel(userPrivilegeEntity.getPriId(),
                                userPrivilegeEntity.getDescription(),userPrivilegeEntity.getAction(),
                                userPrivilegeEntity.getName(),"0",userPrivilegeEntity.getType(),1);
                        userPrivilegeLevels.add(userPrivilegeLevel);
                        remove.add(userPrivilegeEntity);
                        next.add(userPrivilegeEntity.getPriId()+"");
                    }
                } else{
                    if(priIdList.contains(userPrivilegeEntity.getUpPriId()+"")){
                        userPrivilegeLevel=new UserPrivilegeLevel(userPrivilegeEntity.getPriId(),
                                userPrivilegeEntity.getDescription(),userPrivilegeEntity.getAction(),
                                userPrivilegeEntity.getName(),userPrivilegeEntity.getUpPriId(),userPrivilegeEntity.getType(),level);
                        userPrivilegeLevels.add(userPrivilegeLevel);
                        remove.add(userPrivilegeEntity);
                        next.add(userPrivilegeEntity.getPriId()+"");
                    }
                }


            }else{
                businessType.add(userPrivilegeEntity);
                remove.add(userPrivilegeEntity);
            }


        }
        userPrivilegeEntities.removeAll(remove);
        if(userPrivilegeEntities.size()!=0){
            getUserPrivilegesLevel(level + 1, userPrivilegeEntities,userPrivilegeLevels,businessType,next);
        }

    }

}
