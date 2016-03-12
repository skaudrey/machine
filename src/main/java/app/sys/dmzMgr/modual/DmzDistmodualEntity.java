package app.sys.dmzMgr.modual;

import javax.persistence.*;
import java.sql.Timestamp;

/**
 * Created by Administrator on 2016/3/12.
 */
@Entity
@Table(name = "dmz_distmodual", schema = "", catalog = "toponymy")
public class DmzDistmodualEntity {
    private Integer mId;
    private String distCode;
    private int id;
    private String usrId;
    private Timestamp setTime;

    @Basic
    @Column(name = "mID", nullable = true, insertable = true, updatable = true)
    public Integer getmId() {
        return mId;
    }

    public void setmId(Integer mId) {
        this.mId = mId;
    }

    @Basic
    @Column(name = "distCode", nullable = false, insertable = true, updatable = true, length = 20)
    public String getDistCode() {
        return distCode;
    }

    public void setDistCode(String distCode) {
        this.distCode = distCode;
    }

    @Id
    @Column(name = "ID", nullable = false, insertable = true, updatable = true)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "usrID", nullable = true, insertable = true, updatable = true, length = 20)
    public String getUsrId() {
        return usrId;
    }

    public void setUsrId(String usrId) {
        this.usrId = usrId;
    }

    @Basic
    @Column(name = "setTime", nullable = false, insertable = true, updatable = true)
    public Timestamp getSetTime() {
        return setTime;
    }

    public void setSetTime(Timestamp setTime) {
        this.setTime = setTime;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        DmzDistmodualEntity that = (DmzDistmodualEntity) o;

        if (id != that.id) return false;
        if (mId != null ? !mId.equals(that.mId) : that.mId != null) return false;
        if (distCode != null ? !distCode.equals(that.distCode) : that.distCode != null) return false;
        if (usrId != null ? !usrId.equals(that.usrId) : that.usrId != null) return false;
        if (setTime != null ? !setTime.equals(that.setTime) : that.setTime != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = mId != null ? mId.hashCode() : 0;
        result = 31 * result + (distCode != null ? distCode.hashCode() : 0);
        result = 31 * result + id;
        result = 31 * result + (usrId != null ? usrId.hashCode() : 0);
        result = 31 * result + (setTime != null ? setTime.hashCode() : 0);
        return result;
    }
}
