package app.sys.usermgr.model;

import javax.persistence.*;

/**
 * Created by Administrator on 2016/3/11 0011.
 */
@Entity
@Table(name = "user_user", schema = "", catalog = "toponymy")
public class UserUserEntity {
    private String usrId;
    private String name;
    private String password;
    private Integer upId;
    private String rev;
    private String email;
    private String pictureId;

    @Id
    @Column(name = "usrID", nullable = false, insertable = true, updatable = true, length = 20)
    public String getUsrId() {
        return usrId;
    }

    public void setUsrId(String usrId) {
        this.usrId = usrId;
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
    @Column(name = "password", nullable = false, insertable = true, updatable = true, length = 20)
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Basic
    @Column(name = "upID", nullable = true, insertable = true, updatable = true)
    public Integer getUpId() {
        return upId;
    }

    public void setUpId(Integer upId) {
        this.upId = upId;
    }

    @Basic
    @Column(name = "REV_", nullable = true, insertable = true, updatable = true, length = 20)
    public String getRev() {
        return rev;
    }

    public void setRev(String rev) {
        this.rev = rev;
    }

    @Basic
    @Column(name = "email", nullable = true, insertable = true, updatable = true, length = 20)
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Basic
    @Column(name = "picture_id_", nullable = true, insertable = true, updatable = true, length = 20)
    public String getPictureId() {
        return pictureId;
    }

    public void setPictureId(String pictureId) {
        this.pictureId = pictureId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        UserUserEntity that = (UserUserEntity) o;

        if (usrId != null ? !usrId.equals(that.usrId) : that.usrId != null) return false;
        if (name != null ? !name.equals(that.name) : that.name != null) return false;
        if (password != null ? !password.equals(that.password) : that.password != null) return false;
        if (upId != null ? !upId.equals(that.upId) : that.upId != null) return false;
        if (rev != null ? !rev.equals(that.rev) : that.rev != null) return false;
        if (email != null ? !email.equals(that.email) : that.email != null) return false;
        if (pictureId != null ? !pictureId.equals(that.pictureId) : that.pictureId != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = usrId != null ? usrId.hashCode() : 0;
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + (password != null ? password.hashCode() : 0);
        result = 31 * result + (upId != null ? upId.hashCode() : 0);
        result = 31 * result + (rev != null ? rev.hashCode() : 0);
        result = 31 * result + (email != null ? email.hashCode() : 0);
        result = 31 * result + (pictureId != null ? pictureId.hashCode() : 0);
        return result;
    }
}
