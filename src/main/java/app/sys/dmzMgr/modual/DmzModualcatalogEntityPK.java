package app.sys.dmzMgr.modual;

import javax.persistence.Column;
import javax.persistence.Id;
import java.io.Serializable;

/**
 * Created by Administrator on 2016/3/12.
 */
public class DmzModualcatalogEntityPK implements Serializable {
    private int mId;
    private int cId;

    @Column(name = "mID", nullable = false, insertable = true, updatable = true)
    @Id
    public int getmId() {
        return mId;
    }

    public void setmId(int mId) {
        this.mId = mId;
    }

    @Column(name = "cID", nullable = false, insertable = true, updatable = true)
    @Id
    public int getcId() {
        return cId;
    }

    public void setcId(int cId) {
        this.cId = cId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        DmzModualcatalogEntityPK that = (DmzModualcatalogEntityPK) o;

        if (mId != that.mId) return false;
        if (cId != that.cId) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = mId;
        result = 31 * result + cId;
        return result;
    }
}
