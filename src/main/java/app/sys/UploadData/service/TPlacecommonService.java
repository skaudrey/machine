package app.sys.UploadData.service;

import app.sys.UploadData.model.TPlacecommonEntity;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by niubidedashenxc on 2016/3/9.
 */
@Transactional
public interface TPlacecommonService {
    //保存数据
    int saveTPlacecommonEntity(TPlacecommonEntity tPlacecommonEntity);

}
