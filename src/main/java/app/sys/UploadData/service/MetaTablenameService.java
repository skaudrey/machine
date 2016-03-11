package app.sys.UploadData.service;

import app.sys.UploadData.model.MetaTablenameEntity;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Administrator on 2016/3/10.
 */
@Transactional
public interface MetaTablenameService {
    int saveMetaTablenameEntity(MetaTablenameEntity metaTablenameEntity);
    String GetTopClaIdBytxtFilename(String txtfilename);
    List<Object> GetIdentifiesByUploadedFile(String filename);
    String GetTablenameByUploadedFile(String filename);

}
