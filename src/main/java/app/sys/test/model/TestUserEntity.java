package app.sys.test.model;

import javax.persistence.*;

/**
 * Created by Administrator on 2016/2/27 0027.
 */
@Entity
@Table(name = "test_user", schema = "", catalog = "activiti_test")
public class TestUserEntity {
    private int uid;
    private String username;
    private String password;
    private int rid;

    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    @Column(name = "uid", nullable = false, insertable = true, updatable = true)
    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    @Basic
    @Column(name = "username", nullable = false, insertable = true, updatable = true, length = 25)
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    @Basic
    @Column(name = "password", nullable = false, insertable = true, updatable = true, length = 25)
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Basic
    @Column(name = "rid", nullable = false, insertable = true, updatable = true)
    public int getRid() {
        return rid;
    }

    public void setRid(int rid) {
        this.rid = rid;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        TestUserEntity that = (TestUserEntity) o;

        if (uid != that.uid) return false;
        if (rid != that.rid) return false;
        if (username != null ? !username.equals(that.username) : that.username != null) return false;
        if (password != null ? !password.equals(that.password) : that.password != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = uid;
        result = 31 * result + (username != null ? username.hashCode() : 0);
        result = 31 * result + (password != null ? password.hashCode() : 0);
        result = 31 * result + rid;
        return result;
    }
}
