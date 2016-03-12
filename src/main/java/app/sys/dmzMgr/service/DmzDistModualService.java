package app.sys.dmzMgr.service;

import app.sys.dmzMgr.modual.DmzDistmodualEntity;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by Administrator on 2016/3/12.
 */
@Transactional
public interface DmzDistModualService {
    DmzDistmodualEntity establishDistModual(String distId,String userId);
}
