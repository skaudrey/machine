package app.sys.usermgr.model;

import javax.persistence.*;

/**
 * Created by Administrator on 2016/3/11.
 */
@Entity
@Table(name = "user_privilege", schema = "", catalog = "toponymy")
public class UserPrivilegeEntity {
    private int priId;
    private String description;
    private String action;
    private String name;
    private String upPriId;
    private String type;

    @Id
    @Column(name = "priID", nullable = false, insertable = true, updatable = true)
    public int getPriId() {
        return priId;
    }

    public void setPriId(int priId) {
        this.priId = priId;
    }

    @Basic
    @Column(name = "description", nullable = false, insertable = true, updatable = true, length = 50)
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Basic
    @Column(name = "action", nullable = false, insertable = true, updatable = true, length = 100)
    public String getAction() {
        return action;
    }

    public void setAction(String action) {
        this.action = action;
    }

    @Basic
    @Column(name = "name", nullable = false, insertable = true, updatable = true, length = 20)
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Basic
    @Column(name = "upPriID", nullable = true, insertable = true, updatable = true, length = 20)
    public String getUpPriId() {
        return upPriId;
    }

    public void setUpPriId(String upPriId) {
        this.upPriId = upPriId;
    }

    @Basic
    @Column(name = "type", nullable = true, insertable = true, updatable = true, length = 20)
    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        UserPrivilegeEntity that = (UserPrivilegeEntity) o;

        if (priId != that.priId) return false;
        if (description != null ? !description.equals(that.description) : that.description != null) return false;
        if (action != null ? !action.equals(that.action) : that.action != null) return false;
        if (name != null ? !name.equals(that.name) : that.name != null) return false;
        if (upPriId != null ? !upPriId.equals(that.upPriId) : that.upPriId != null) return false;
        if (type != null ? !type.equals(that.type) : that.type != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = priId;
        result = 31 * result + (description != null ? description.hashCode() : 0);
        result = 31 * result + (action != null ? action.hashCode() : 0);
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + (upPriId != null ? upPriId.hashCode() : 0);
        result = 31 * result + (type != null ? type.hashCode() : 0);
        return result;
    }
}
