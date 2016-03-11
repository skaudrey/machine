package app.sys.UploadData.service.Impl;

import app.sys.UploadData.dao.TPlacecommonDao;
import app.sys.UploadData.model.TPlacecommonEntity;
import app.sys.UploadData.service.TPlacecommonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by niubidedashenxc on 2016/3/9.
 */
@Component
@Transactional
public class TPlacecommonServiceImpl implements TPlacecommonService{
    @Autowired
    TPlacecommonDao tPlacecommonDao;
    @Override
    public int saveTPlacecommonEntity(TPlacecommonEntity tPlacecommonEntity) {
        return tPlacecommonDao.save(tPlacecommonEntity);
    }
}
