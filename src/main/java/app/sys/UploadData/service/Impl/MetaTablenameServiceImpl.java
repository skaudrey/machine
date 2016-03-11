package app.sys.UploadData.service.Impl;

import app.common.action.GenericActionSupport;
import app.common.dao.GenericEntityDao;
import app.sys.UploadData.dao.MetaTablenameDao;
import app.sys.UploadData.model.MetaTablenameEntity;
import app.sys.UploadData.service.MetaTablenameService;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;
import java.util.*;

/**
 * Created by niubidedashenxc on 2016/3/9.
 */
@Component
@Transactional
public class MetaTablenameServiceImpl extends GenericEntityDao implements MetaTablenameService {
    @Autowired
    MetaTablenameDao metaTablenameDao;
    @Override
    public int saveMetaTablenameEntity(MetaTablenameEntity metaTablenameEntity) {
        return metaTablenameDao.save(metaTablenameEntity);
    }

    @Override
    public String GetTopClaIdBytxtFilename(String txtfilename) {
        String sql = "select topClaID from meta_tablename where txtFileName = "+"\""+txtfilename+"\"";
        Session session = super.getCurrentSession();
        List as=session.createSQLQuery(sql).list();
        return as.get(0).toString();
    }

    @Override
    public List<Object> GetIdentifiesByUploadedFile(String filename) {
        String sql = "select tableName from meta_tablename where txtFileName = "+"\""+filename+"\"";
        Session session = super.getCurrentSession();
        List as=session.createSQLQuery(sql).list();
        String tablename="meta_"+as.get(0).toString();
        Session session1 = super.getCurrentSession();
        String sql1="select inner_identifier FROM "+tablename;
        List<Object> aa=(List<Object>)session1.createSQLQuery(sql1).list();
        return aa;
    }

    @Override
    public String GetTablenameByUploadedFile(String filename) {
        String sql = "select tableName from meta_tablename where txtFileName = "+"\""+filename+"\"";
        Session session = super.getCurrentSession();
        List as=session.createSQLQuery(sql).list();
        return as.get(0).toString();
    }

    @Override
    protected Class entityClass() {
        return null;
    }
}
