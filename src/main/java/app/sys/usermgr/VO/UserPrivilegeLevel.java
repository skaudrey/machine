package app.sys.usermgr.VO;

/**
 * Created by Administrator on 2016/3/11.
 */
public class UserPrivilegeLevel {
    private int priId;
    private String description;
    private String action;
    private String name;
    private String upPriId;
    private String type;
    private int  level;
    public UserPrivilegeLevel(int priId, String description,String action,String name,String upPriId, String type,int  level){
        this.priId=priId;
        this.description=description;
        this.action=action;
        this.name=name;
        this.upPriId=upPriId;
        this.type=type;
        this.level=level;
    }
    public int getPriId() {
        return priId;
    }

    public void setPriId(int priId) {
        this.priId = priId;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getAction() {
        return action;
    }

    public void setAction(String action) {
        this.action = action;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUpPriId() {
        return upPriId;
    }

    public void setUpPriId(String upPriId) {
        this.upPriId = upPriId;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public int getLevel() {
        return level;
    }

    public void setLevel(int level) {
        this.level = level;
    }
}
