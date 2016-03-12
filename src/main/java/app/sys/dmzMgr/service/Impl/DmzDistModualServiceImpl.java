package app.sys.dmzMgr.service.Impl;

import app.common.Constant;
import app.common.action.GenericActionSupport;
import app.sys.dmzMgr.dao.DmzDistmodualDao;
import app.sys.dmzMgr.modual.DmzDistmodualEntity;
import app.sys.dmzMgr.service.DmzDistModualService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;

/**
 * Created by Administrator on 2016/3/12.
 */
@Component
@Transactional
public class DmzDistModualServiceImpl extends GenericActionSupport implements DmzDistModualService {
    @Autowired
    DmzDistmodualDao dmzDistmodualDao;

    @Override
    public DmzDistmodualEntity establishDistModual(String distId){
        String hql="from DmzDistmodualEntity ddm where ddm.distCode='"+distId+"'";
        List<DmzDistmodualEntity> list=dmzDistmodualDao.createQuery(hql).list();
        DmzDistmodualEntity dmzDistmodualEntity=new DmzDistmodualEntity();
        if(list.size()==0){
            dmzDistmodualEntity.setDistCode(distId);
            dmzDistmodualEntity.setmId(1);
            dmzDistmodualEntity.setSetTime((new Date()).toString());
            dmzDistmodualEntity.setUsrId(mSessionMap.get(Constant.USER_ID).toString());
            dmzDistmodualDao.saveOrUpdate(dmzDistmodualEntity);
            return dmzDistmodualEntity;
        }
        return list.get(0);
    }
}
