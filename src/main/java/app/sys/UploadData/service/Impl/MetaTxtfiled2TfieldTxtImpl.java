package app.sys.UploadData.service.Impl;

import app.common.action.GenericActionSupport;
import app.common.dao.GenericEntityDao;
import app.sys.UploadData.service.MetaTxtfiled2TfieldTxtService;
import org.hibernate.Session;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.io.UnsupportedEncodingException;
import java.util.List;

/**
 * Created by niubidedashenxc on 2016/3/10.
 */
@Component
@Transactional
public class MetaTxtfiled2TfieldTxtImpl extends GenericEntityDao implements MetaTxtfiled2TfieldTxtService{
    @Override
    public String GetDefalutBytbnameandchineseIdentify(String tablename, String Identifer) {

        String sql = "select fieldName from meta_TxtFiled2TField_txt where tableName = "+"\""+tablename+"\""+"AND txtFieldName="+"\""+Identifer+"\"";
        Session session = super.getCurrentSession();
        List as=session.createSQLQuery(sql).list();
        if(as.size()<1){
            return "";
        }else return as.get(0).toString();
    }

    @Override
    protected Class entityClass() {
        return null;
    }
}
