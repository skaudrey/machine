package app.sys.dmzMgr.modual;

import javax.persistence.*;

/**
 * Created by Administrator on 2016/3/12.
 */
@Entity
@Table(name = "dmz_content", schema = "", catalog = "toponymy")
public class DmzContentEntity {
    private int conId;
    private String content;
    private Integer cId;
    private String distCode;
    private String usrId;
    private String version;
    private String corder;
    private String updateTime;

    @Id
    @Column(name = "conID", nullable = false, insertable = true, updatable = true)
    public int getConId() {
        return conId;
    }

    public void setConId(int conId) {
        this.conId = conId;
    }

    @Basic
    @Column(name = "content", nullable = false, insertable = true, updatable = true, length = 20)
    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    @Basic
    @Column(name = "cID", nullable = true, insertable = true, updatable = true)
    public Integer getcId() {
        return cId;
    }

    public void setcId(Integer cId) {
        this.cId = cId;
    }

    @Basic
    @Column(name = "distCode", nullable = false, insertable = true, updatable = true, length = 20)
    public String getDistCode() {
        return distCode;
    }

    public void setDistCode(String distCode) {
        this.distCode = distCode;
    }

    @Basic
    @Column(name = "usrID", nullable = false, insertable = true, updatable = true, length = 20)
    public String getUsrId() {
        return usrId;
    }

    public void setUsrId(String usrId) {
        this.usrId = usrId;
    }

    @Basic
    @Column(name = "version", nullable = false, insertable = true, updatable = true, length = 20)
    public String getVersion() {
        return version;
    }

    public void setVersion(String version) {
        this.version = version;
    }

    @Basic
    @Column(name = "corder", nullable = false, insertable = true, updatable = true, length = 20)
    public String getCorder() {
        return corder;
    }

    public void setCorder(String corder) {
        this.corder = corder;
    }

    @Basic
    @Column(name = "updateTime", nullable = false, insertable = true, updatable = true, length = 20)
    public String getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(String updateTime) {
        this.updateTime = updateTime;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        DmzContentEntity that = (DmzContentEntity) o;

        if (conId != that.conId) return false;
        if (content != null ? !content.equals(that.content) : that.content != null) return false;
        if (cId != null ? !cId.equals(that.cId) : that.cId != null) return false;
        if (distCode != null ? !distCode.equals(that.distCode) : that.distCode != null) return false;
        if (usrId != null ? !usrId.equals(that.usrId) : that.usrId != null) return false;
        if (version != null ? !version.equals(that.version) : that.version != null) return false;
        if (corder != null ? !corder.equals(that.corder) : that.corder != null) return false;
        if (updateTime != null ? !updateTime.equals(that.updateTime) : that.updateTime != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = conId;
        result = 31 * result + (content != null ? content.hashCode() : 0);
        result = 31 * result + (cId != null ? cId.hashCode() : 0);
        result = 31 * result + (distCode != null ? distCode.hashCode() : 0);
        result = 31 * result + (usrId != null ? usrId.hashCode() : 0);
        result = 31 * result + (version != null ? version.hashCode() : 0);
        result = 31 * result + (corder != null ? corder.hashCode() : 0);
        result = 31 * result + (updateTime != null ? updateTime.hashCode() : 0);
        return result;
    }
}
