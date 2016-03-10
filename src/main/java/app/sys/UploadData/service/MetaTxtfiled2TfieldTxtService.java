package app.sys.UploadData.service;

import org.springframework.transaction.annotation.Transactional;

/**
 * Created by niubidedashenxc on 2016/3/10.
 */
@Transactional
public interface MetaTxtfiled2TfieldTxtService {
    String GetDefalutBytbnameandchineseIdentify(String tablename,String Identifer);
}
