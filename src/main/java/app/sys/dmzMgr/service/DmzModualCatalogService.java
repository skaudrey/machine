package app.sys.dmzMgr.service;

import app.sys.dmzMgr.VO.DmzCatalogOrder;
import app.sys.dmzMgr.modual.DmzDistmodualEntity;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Administrator on 2016/3/12.
 */
@Transactional
public interface DmzModualCatalogService {
    List<DmzCatalogOrder> getCatalogOrder(DmzDistmodualEntity dmzDistmodualEntity);
}
