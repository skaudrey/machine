package app.sys.usermgr.model;

import javax.persistence.*;

/**
 * Created by Administrator on 2016/3/12.
 */
@Entity
@Table(name = "user_userdepartment", schema = "", catalog = "toponymy")
@IdClass(UserUserdepartmentEntityPK.class)
public class UserUserdepartmentEntity {
    private int deptId;
    private String usrId;

    @Id
    @Column(name = "deptID", nullable = false, insertable = true, updatable = true)
    public int getDeptId() {
        return deptId;
    }

    public void setDeptId(int deptId) {
        this.deptId = deptId;
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

        UserUserdepartmentEntity that = (UserUserdepartmentEntity) o;

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
