package app.sys.appmat.model;

import javax.persistence.Column;
import javax.persistence.Id;
import java.io.Serializable;

/**
 * Created by Skaudrey on 2016/3/11.
 */
public class UserUserdepartmentEntityPK implements Serializable {
    private int deptId;
    private String usrId;

    @Column(name = "deptID", nullable = false, insertable = true, updatable = true)
    @Id
    public int getDeptId() {
        return deptId;
    }

    public void setDeptId(int deptId) {
        this.deptId = deptId;
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

        UserUserdepartmentEntityPK that = (UserUserdepartmentEntityPK) o;

        if (deptId != that.deptId) return false;
        if (usrId != null ? !usrId.equals(that.usrId) : that.usrId != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = deptId;
        result = 31 * result + (usrId != null ? usrId.hashCode() : 0);
        return result;
    }
}
