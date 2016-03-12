package app.sys.usermgr.model;

import javax.persistence.*;

/**
 * Created by Administrator on 2016/3/11.
 */
@Entity
@Table(name = "user_userrole", schema = "", catalog = "toponymy")
@IdClass(UserUserroleEntityPK.class)
public class UserUserroleEntity {
    private int roId;
    private String usrId;

    @Id
    @Column(name = "roID", nullable = false, insertable = true, updatable = true)
    public int getRoId() {
        return roId;
    }

    public void setRoId(int roId) {
        this.roId = roId;
    }

    @Id
    @Column(name = "usrID", nullable = false, insertable = true, updatable = true, length = 20)
    public String getUsrId() {
        return usrId;
    }

    public void setUsrId(String usrId) {
        this.usrId = usrId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        UserUserroleEntity that = (UserUserroleEntity) o;

        if (roId != that.roId) return false;
        if (usrId != null ? !usrId.equals(that.usrId) : that.usrId != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = roId;
        result = 31 * result + (usrId != null ? usrId.hashCode() : 0);
        return result;
    }
}
