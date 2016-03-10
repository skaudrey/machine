package app.sys.UploadData.dao;

import app.common.dao.GenericEntityDao;
import app.sys.UploadData.model.TPlacecommonEntity;

import javax.inject.Named;

/**
 * Created by lenovo on 2016/3/9.
 */
@Named("TPlacecommonDao")
public class TPlacecommonDao extends GenericEntityDao<TPlacecommonEntity,Integer> {
    @Override
    protected Class<TPlacecommonEntity> entityClass(){
        return TPlacecommonEntity.class;
    }
}
