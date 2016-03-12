package app.sys.usermgr.model;

import javax.persistence.Column;
import javax.persistence.Id;
import java.io.Serializable;

/**
 * Created by Administrator on 2016/3/11.
 */
public class UserRoleprivEntityPK implements Serializable {
    private int roId;
    private int priId;

    @Column(name = "roID", nullable = false, insertable = true, updatable = true)
    @Id
    public int getRoId() {
        return roId;
    }

    public void setRoId(int roId) {
        this.roId = roId;
    }

    @Column(name = "priID", nullable = false, insertable = true, updatable = true)
    @Id
    public int getPriId() {
        return priId;
    }

    public void setPriId(int priId) {
        this.priId = priId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        UserRoleprivEntityPK that = (UserRoleprivEntityPK) o;

        if (roId != that.roId) return false;
        if (priId != that.priId) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = roId;
        result = 31 * result + priId;
        return result;
    }
}
