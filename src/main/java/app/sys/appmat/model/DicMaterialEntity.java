package app.sys.appmat.model;

import javax.persistence.*;

/**
 * Created by Skaudrey on 2016/3/12.
 */
@Entity
@Table(name = "dic_material", schema = "", catalog = "toponymy")
public class DicMaterialEntity {
    private int matId;
    private String matName;

    @Id
    @Column(name = "matID", nullable = false, insertable = true, updatable = true)
    public int getMatId() {
        return matId;
    }

    public void setMatId(int matId) {
        this.matId = matId;
    }

    @Basic
    @Column(name = "matName", nullable = false, insertable = true, updatable = true, length = 20)
    public String getMatName() {
        return matName;
    }

    public void setMatName(String matName) {
        this.matName = matName;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        DicMaterialEntity that = (DicMaterialEntity) o;

        if (matId != that.matId) return false;
        if (matName != null ? !matName.equals(that.matName) : that.matName != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = matId;
        result = 31 * result + (matName != null ? matName.hashCode() : 0);
        return result;
    }
}
