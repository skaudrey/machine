package app.sys.UploadData.dao;

import app.common.dao.GenericEntityDao;
import app.sys.UploadData.model.MetaTxtfiled2TfieldTxtEntity;

import javax.inject.Named;

/**
 * Created by niubidedashenxc on 2016/3/10.
 */
@Named("MetaTxtfiled2TfieldTxtDao")
public class MetaTxtfiled2TfieldTxtDao extends GenericEntityDao<MetaTxtfiled2TfieldTxtEntity,Integer> {
    @Override
    protected Class<MetaTxtfiled2TfieldTxtEntity> entityClass() {
        return MetaTxtfiled2TfieldTxtEntity.class;
    }
}
