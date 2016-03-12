package app.sys.appmat.service.impl;

import app.common.dao.GenericEntityDao;
import app.sys.appmat.dao.DicBusinessmaterialDao;
import app.sys.appmat.model.DicBusinessmaterialEntity;
import app.sys.appmat.service.DicBusinessmaterialService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by Skaudrey on 2016/3/11.
 */
@Component
@Transactional
public class DicBusinessmaterialImpl extends GenericEntityDao implements DicBusinessmaterialService {

    @Autowired
    DicBusinessmaterialDao businessmaterialDao;

    @Override
    protected Class entityClass() {
        return null;
    }

    @Override
    public boolean saveOrUpdateBusinessMat(DicBusinessmaterialEntity businessmaterialEntity) {

        businessmaterialDao.saveOrUpdate(businessmaterialEntity);
        return true;
    }
}
