package app.sys.dmzMgr.action;

import app.common.Constant;
import app.common.action.GenericActionSupport;
import app.sys.dmzMgr.VO.DmzCatalogOrder;
import app.sys.dmzMgr.modual.DmzDistmodualEntity;
import app.sys.dmzMgr.service.DmzDistModualService;
import app.sys.dmzMgr.service.DmzModualCatalogService;
import app.sys.orgMgr.service.OrgDepartmentService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * Created by Administrator on 2016/3/12.
 */
public class DmzModualCatalogAction extends GenericActionSupport{

    @Autowired
    DmzModualCatalogService dmzModualCatalogService;
    @Autowired
    DmzDistModualService dmzDistModualService;
    @Autowired
    OrgDepartmentService orgDepartmentService;
    public void getCatalogOrder(){
        String userId=mSessionMap.get(Constant.USER_ID).toString();
        String distID=orgDepartmentService.getDistrictOfDept(userId);
        DmzDistmodualEntity dmzDistmodualEntity=dmzDistModualService.establishDistModual(distID);
        List<DmzCatalogOrder> list=dmzModualCatalogService.getCatalogOrder(dmzDistmodualEntity);
        super.writeJson(list);

    }
}
