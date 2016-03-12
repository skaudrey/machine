package app.sys.appmat.model;

import javax.persistence.*;
import java.util.Arrays;

/**
 * Created by Skaudrey on 2016/3/12.
 */
@Entity
@Table(name = "app_appmat", schema = "", catalog = "toponymy")
public class AppAppmatEntity {
    private int appmId;
    private String appmMatid;
    private Integer appId;
    private byte[] appmFile;
    private String apmMatalias;
    private String appmIscopy;
    private String appmAmout;
    private String appmBeenscaned;
    private String appmPagenum;
    private String appmSort;

    @Id
    @Column(name = "appm_id", nullable = false, insertable = true, updatable = true)
    public int getAppmId() {
        return appmId;
    }

    public void setAppmId(int appmId) {
        this.appmId = appmId;
    }

    @Basic
    @Column(name = "appm_matid", nullable = false, insertable = true, updatable = true, length = 20)
    public String getAppmMatid() {
        return appmMatid;
    }

    public void setAppmMatid(String appmMatid) {
        this.appmMatid = appmMatid;
    }

    @Basic
    @Column(name = "app_ID", nullable = true, insertable = true, updatable = true)
    public Integer getAppId() {
        return appId;
    }

    public void setAppId(Integer appId) {
        this.appId = appId;
    }

    @Basic
    @Column(name = "appm_file", nullable = false, insertable = true, updatable = true)
    public byte[] getAppmFile() {
        return appmFile;
    }

    public void setAppmFile(byte[] appmFile) {
        this.appmFile = appmFile;
    }

    @Basic
    @Column(name = "apm_matalias", nullable = false, insertable = true, updatable = true, length = 20)
    public String getApmMatalias() {
        return apmMatalias;
    }

    public void setApmMatalias(String apmMatalias) {
        this.apmMatalias = apmMatalias;
    }

    @Basic
    @Column(name = "appm_iscopy", nullable = false, insertable = true, updatable = true, length = 20)
    public String getAppmIscopy() {
        return appmIscopy;
    }

    public void setAppmIscopy(String appmIscopy) {
        this.appmIscopy = appmIscopy;
    }

    @Basic
    @Column(name = "appm_amout", nullable = false, insertable = true, updatable = true, length = 20)
    public String getAppmAmout() {
        return appmAmout;
    }

    public void setAppmAmout(String appmAmout) {
        this.appmAmout = appmAmout;
    }

    @Basic
    @Column(name = "appm_beenscaned", nullable = false, insertable = true, updatable = true, length = 20)
    public String getAppmBeenscaned() {
        return appmBeenscaned;
    }

    public void setAppmBeenscaned(String appmBeenscaned) {
        this.appmBeenscaned = appmBeenscaned;
    }

    @Basic
    @Column(name = "appm_pagenum", nullable = false, insertable = true, updatable = true, length = 20)
    public String getAppmPagenum() {
        return appmPagenum;
    }

    public void setAppmPagenum(String appmPagenum) {
        this.appmPagenum = appmPagenum;
    }

    @Basic
    @Column(name = "appm_sort", nullable = false, insertable = true, updatable = true, length = 20)
    public String getAppmSort() {
        return appmSort;
    }

    public void setAppmSort(String appmSort) {
        this.appmSort = appmSort;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        AppAppmatEntity that = (AppAppmatEntity) o;

        if (appmId != that.appmId) return false;
        if (appmMatid != null ? !appmMatid.equals(that.appmMatid) : that.appmMatid != null) return false;
        if (appId != null ? !appId.equals(that.appId) : that.appId != null) return false;
        if (!Arrays.equals(appmFile, that.appmFile)) return false;
        if (apmMatalias != null ? !apmMatalias.equals(that.apmMatalias) : that.apmMatalias != null) return false;
        if (appmIscopy != null ? !appmIscopy.equals(that.appmIscopy) : that.appmIscopy != null) return false;
        if (appmAmout != null ? !appmAmout.equals(that.appmAmout) : that.appmAmout != null) return false;
        if (appmBeenscaned != null ? !appmBeenscaned.equals(that.appmBeenscaned) : that.appmBeenscaned != null)
            return false;
        if (appmPagenum != null ? !appmPagenum.equals(that.appmPagenum) : that.appmPagenum != null) return false;
        if (appmSort != null ? !appmSort.equals(that.appmSort) : that.appmSort != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = appmId;
        result = 31 * result + (appmMatid != null ? appmMatid.hashCode() : 0);
        result = 31 * result + (appId != null ? appId.hashCode() : 0);
        result = 31 * result + (appmFile != null ? Arrays.hashCode(appmFile) : 0);
        result = 31 * result + (apmMatalias != null ? apmMatalias.hashCode() : 0);
        result = 31 * result + (appmIscopy != null ? appmIscopy.hashCode() : 0);
        result = 31 * result + (appmAmout != null ? appmAmout.hashCode() : 0);
        result = 31 * result + (appmBeenscaned != null ? appmBeenscaned.hashCode() : 0);
        result = 31 * result + (appmPagenum != null ? appmPagenum.hashCode() : 0);
        result = 31 * result + (appmSort != null ? appmSort.hashCode() : 0);
        return result;
    }
}
