package app.sys.dmzMgr.VO;

/**
 * Created by Administrator on 2016/3/12.
 */
public class DmzCatalogOrder {
    private int id;
    private int mId;
    private String mcorder;
    private String distCode;
    private int cId;
    private String name;
    private String upcId;
    private String type;
    private String tableName;
    private String fieldName;
    private String claCode;
    public DmzCatalogOrder(int id,int mId,String distCode,String mcorder,int cId,String name,
            String upcId,String type,String tableName,String fieldName,String claCode){
        this.id=id;
        this.mId=mId;
        this.distCode=distCode;
        this.mcorder=mcorder;
        this.cId=cId;
        this.name=name;
        this.upcId=upcId;
        this.type=type;
        this.tableName=tableName;
        this.fieldName=fieldName;
        this.claCode=claCode;

    }
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getmId() {
        return mId;
    }

    public void setmId(int mId) {
        this.mId = mId;
    }

    public String getMcorder() {
        return mcorder;
    }

    public void setMcorder(String mcorder) {
        this.mcorder = mcorder;
    }

    public String getDistCode() {
        return distCode;
    }

    public void setDistCode(String distCode) {
        this.distCode = distCode;
    }

    public int getcId() {
        return cId;
    }

    public void setcId(int cId) {
        this.cId = cId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUpcId() {
        return upcId;
    }

    public void setUpcId(String upcId) {
        this.upcId = upcId;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getTableName() {
        return tableName;
    }

    public void setTableName(String tableName) {
        this.tableName = tableName;
    }

    public String getFieldName() {
        return fieldName;
    }

    public void setFieldName(String fieldName) {
        this.fieldName = fieldName;
    }

    public String getClaCode() {
        return claCode;
    }

    public void setClaCode(String claCode) {
        this.claCode = claCode;
    }
}
