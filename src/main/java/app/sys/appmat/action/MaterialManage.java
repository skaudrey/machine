package app.sys.appmat.action;

import app.common.Constant;
import app.common.action.GenericActionSupport;
import app.sys.appmat.model.DicBusinessmaterialEntity;
import app.sys.appmat.model.DicBusinesstypeEntity;
import app.sys.appmat.model.DicMaterialEntity;
import app.sys.appmat.service.AppApplyService;
import app.sys.appmat.service.DicBusinessmaterialService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Skaudrey on 2016/3/7.
 */
public class MaterialManage extends GenericActionSupport {

    /*测试用*/
    private String userId="2012302580231";

    @Autowired
    AppApplyService appApplyService;
    @Autowired
    DicBusinessmaterialService businessmaterialService;

    private int deptId;
    private int appId;
    private String matName;
    private String btName;
    private int amount;
    private int matId;
    private String isCopy;

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public int getMatId() {
        return matId;
    }

    public void setMatId(int matId) {
        this.matId = matId;
    }

    public String getIsCopy() {
        return isCopy;
    }

    public void setIsCopy(String isCopy) {
        this.isCopy = isCopy;
    }

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

        int nId=appApplyService.saveMatType(materialEntity);
        System.out.println("材料ID"+nId);

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

    /*添加业务所需的材料*/
    public String addMaterials(){

        List<DicBusinessmaterialEntity> dicBusinessmaterialEntities=new ArrayList<DicBusinessmaterialEntity>();

        DicBusinessmaterialEntity materialEntity=new DicBusinessmaterialEntity();

        materialEntity.setBtId(appId);
        materialEntity.setMatId(matId);
        materialEntity.setAmount(amount);
        materialEntity.setIsCopy(isCopy);

        dicBusinessmaterialEntities.add(materialEntity);


        if(businessmaterialService.saveOrUpdateBusinessMat(dicBusinessmaterialEntities))
            writeJsonArray(Constant.PROCESS_RESULT.add(0));

        return "";
    }
}
