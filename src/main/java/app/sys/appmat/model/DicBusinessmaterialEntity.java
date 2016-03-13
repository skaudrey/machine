package app.sys.appmat.model;

import javax.persistence.*;

/**
 * Created by Skaudrey on 2016/3/12.
 */
@Entity
@Table(name = "dic_businessmaterial", schema = "", catalog = "toponymy")
@IdClass(DicBusinessmaterialEntityPK.class)
public class DicBusinessmaterialEntity {
    private int btId;
    private int matId;
    private String isCopy;
    private int amount;

    @Id
    @Column(name = "btID", nullable = false, insertable = true, updatable = true)
    public int getBtId() {
        return btId;
    }

    public void setBtId(int btId) {
        this.btId = btId;
    }

    @Id
    @Column(name = "matID", nullable = false, insertable = true, updatable = true)
    public int getMatId() {
        return matId;
    }

    public void setMatId(int matId) {
        this.matId = matId;
    }

    @Basic
    @Column(name = "isCopy", nullable = false, insertable = true, updatable = true, length = 20)
    public String getIsCopy() {
        return isCopy;
    }

    public void setIsCopy(String isCopy) {
        this.isCopy = isCopy;
    }

    @Basic
    @Column(name = "amount", nullable = false, insertable = true, updatable = true)
    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        DicBusinessmaterialEntity that = (DicBusinessmaterialEntity) o;

        if (btId != that.btId) return false;
        if (matId != that.matId) return false;
        if (amount != that.amount) return false;
        if (isCopy != null ? !isCopy.equals(that.isCopy) : that.isCopy != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = btId;
        result = 31 * result + matId;
        result = 31 * result + (isCopy != null ? isCopy.hashCode() : 0);
        result = 31 * result + amount;
        return result;
    }
}
