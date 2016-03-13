package app.sys.appmat.model;

import javax.persistence.Column;
import javax.persistence.Id;
import java.io.Serializable;

/**
 * Created by Skaudrey on 2016/3/12.
 */
public class DicBusinessmaterialEntityPK implements Serializable {
    private int btId;


    @Column(name = "btID", nullable = false, insertable = true, updatable = true)
    @Id
    public int getBtId() {
        return btId;
    }

    public void setBtId(int btId) {
        this.btId = btId;
    }

    private int matId;

    @Column(name = "matID", nullable = false, insertable = true, updatable = true)
    @Id
    public int getMatId() {
        return matId;
    }

    public void setMatId(int matId) {
        this.matId = matId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        DicBusinessmaterialEntityPK that = (DicBusinessmaterialEntityPK) o;

        if (btId != that.btId) return false;
        if (matId != that.matId) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = btId;
        result = 31 * result + matId;
        return result;
    }
}
