package app.sys.usermgr.model;

import javax.persistence.Column;
import javax.persistence.Id;
import java.io.Serializable;

/**
 * Created by Administrator on 2016/3/11.
 */
public class UserUserroleEntityPK implements Serializable {
    private int roId;
    private String usrId;

    @Column(name = "roID", nullable = false, insertable = true, updatable = true)
    @Id
    public int getRoId() {
        return roId;
    }

    public void setRoId(int roId) {
        this.roId = roId;
    }

    @Column(name = "usrID", nullable = false, insertable = true, updatable = true, length = 20)
    @Id
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

        UserUserroleEntityPK that = (UserUserroleEntityPK) o;

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
