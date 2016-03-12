package app.sys.appmat.action;

import app.common.Constant;
import app.common.action.GenericActionSupport;
import app.sys.appmat.model.DicBusinesstypeEntity;
import app.sys.appmat.model.DicMaterialEntity;
import app.sys.appmat.service.AppApplyService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * Created by Skaudrey on 2016/3/7.
 */
public class MaterialManage extends GenericActionSupport {

    /*测试用*/
    private String userId="2012302580231";

    @Autowired
    AppApplyService appApplyService;

    private int deptId;
    private int appId;
    private String matName;
    private String btName;

    public String getBtName() {
        return btName;
    }

    public void setBtName(String btName) {
        this.btName = btName;
    }

    public String getMatName() {
        return matName;
    }

    public void setMatName(String matName) {
        this.matName = matName;
    }

    public int getAppId() {
        return appId;
    }

    public void setAppId(int appId) {
        this.appId = appId;
    }

    public int getDeptId() {
        return deptId;
    }

    public void setDeptId(int deptId) {
        this.deptId = deptId;
    }

    public String getDept(){
        List<Object[]> departments=appApplyService.findDeptByUserId(userId);

        mServletRequest.setAttribute("userDept",departments);

        return SUCCESS;
    }

    public String getAppByDept(){
        List<Object[]> deptApps=appApplyService.findAppSimpleByDeptId(deptId);

        writeJsonArray(deptApps);

        return "";
    }

    public String getMatsByAppId(){
        List<Object[]> appMaterials=appApplyService.findAppMatByAppId(appId);

        writeJsonArray(appMaterials);

        return "";
    }

    //添加材料类型
    public String newMatType(){
        DicMaterialEntity materialEntity=new DicMaterialEntity();
        materialEntity.setMatName(matName);

        int nId=-1;
        nId=appApplyService.saveMatType(materialEntity);

        if(nId>0)
            writeJsonArray(Constant.PROCESS_RESULT.add(nId));
        else
            writeJsonArray(Constant.PROCESS_RESULT.add(-1));
        return "";
    }
    /*添加业务类型*/
    public String newBusinessType(){
        DicBusinesstypeEntity businesstypeEntity=new DicBusinesstypeEntity();
        businesstypeEntity.setBtName(btName);
        businesstypeEntity.setDeptId(deptId);

        int nId=appApplyService.saveBusinessType(businesstypeEntity);

        if(nId>0)
            writeJsonArray(Constant.PROCESS_RESULT.add(nId));
        else
            writeJsonArray(Constant.PROCESS_RESULT.add(-1));

        return "";
    }

}
