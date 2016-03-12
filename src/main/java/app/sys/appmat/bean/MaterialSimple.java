package app.sys.appmat.bean;

/**
 * Created by Skaudrey on 2016/3/7.
 */
public class MaterialSimple {
    private String materialId;
    private String materialName;
    private boolean isCopyFlag;//交原件还是复印件，true为复印件

    public MaterialSimple(String materialId,String materialName,String isCopyFlag){
        this.materialId=materialId;
        this.materialName=materialName;
        //this.isCopyFlag=isCopyFlag;
    }

    public String getMaterialId() {
        return materialId;
    }

    public void setMaterialId(String materialId) {
        this.materialId = materialId;
    }

    public String getMaterialName() {
        return materialName;
    }

    public void setMaterialName(String materialName) {
        this.materialName = materialName;
    }

    public boolean isCopyFlag() {
        return isCopyFlag;
    }

    public void setIsCopyFlag(boolean isCopyFlag) {
        this.isCopyFlag = isCopyFlag;
    }
}
