package app.sys.dmzMgr.modual;

import javax.persistence.*;

/**
 * Created by Administrator on 2016/3/12.
 */
@Entity
@Table(name = "dmz_modualcatalog", schema = "", catalog = "toponymy")
@IdClass(DmzModualcatalogEntityPK.class)
public class DmzModualcatalogEntity {
    private int mId;
    private int cId;
    private String mcorder;

    @Id
    @Column(name = "mID", nullable = false, insertable = true, updatable = true)
    public int getmId() {
        return mId;
    }

    public void setmId(int mId) {
        this.mId = mId;
    }

    @Id
    @Column(name = "cID", nullable = false, insertable = true, updatable = true)
    public int getcId() {
        return cId;
    }

    public void setcId(int cId) {
        this.cId = cId;
    }

    @Basic
    @Column(name = "mcorder", nullable = false, insertable = true, updatable = true, length = 20)
    public String getMcorder() {
        return mcorder;
    }

    public void setMcorder(String mcorder) {
        this.mcorder = mcorder;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        DmzModualcatalogEntity that = (DmzModualcatalogEntity) o;

        if (mId != that.mId) return false;
        if (cId != that.cId) return false;
        if (mcorder != null ? !mcorder.equals(that.mcorder) : that.mcorder != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = mId;
        result = 31 * result + cId;
        result = 31 * result + (mcorder != null ? mcorder.hashCode() : 0);
        return result;
    }
}
