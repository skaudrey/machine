package app.sys.UploadData.dao;

import app.common.dao.GenericEntityDao;
import app.sys.UploadData.model.MetaTablenameEntity;

import javax.inject.Named;

/**
 * Created by lenovo on 2016/3/9.
 */
@Named("MetaTablenameDao")
public class MetaTablenameDao extends GenericEntityDao<MetaTablenameEntity,Integer> {
    @Override
    protected Class<MetaTablenameEntity> entityClass(){
        return MetaTablenameEntity.class;
    }
}
