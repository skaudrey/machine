package app.sys.usermgr.model;

import javax.persistence.*;

/**
 * Created by Administrator on 2016/3/11.
 */
@Entity
@Table(name = "user_rolepriv", schema = "", catalog = "toponymy")
@IdClass(UserRoleprivEntityPK.class)
public class UserRoleprivEntity {
    private int roId;
    private int priId;

    @Id
    @Column(name = "roID", nullable = false, insertable = true, updatable = true)
    public int getRoId() {
        return roId;
    }

    public void setRoId(int roId) {
        this.roId = roId;
    }

    @Id
    @Column(name = "priID", nullable = false, insertable = true, updatable = true)
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

        UserRoleprivEntity that = (UserRoleprivEntity) o;

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
