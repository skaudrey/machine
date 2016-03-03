package app.sys.test.model;

import javax.persistence.*;

/**
 * Created by Administrator on 2016/2/26 0026.
 */
@Entity
@javax.persistence.Table(name = "test_user_role", schema = "", catalog = "activiti_test")
public class TestUserRoleEntity {
    private int rid;

    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    @javax.persistence.Column(name = "rid", nullable = false, insertable = true, updatable = true)
    public int getRid() {
        return rid;
    }

    public void setRid(int rid) {
        this.rid = rid;
    }

    private String roleName;

    @Basic
    @javax.persistence.Column(name = "roleName", nullable = false, insertable = true, updatable = true, length = 15)
    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        TestUserRoleEntity that = (TestUserRoleEntity) o;

        if (rid != that.rid) return false;
        if (roleName != null ? !roleName.equals(that.roleName) : that.roleName != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = rid;
        result = 31 * result + (roleName != null ? roleName.hashCode() : 0);
        return result;
    }
}
