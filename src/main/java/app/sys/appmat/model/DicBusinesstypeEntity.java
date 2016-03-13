package app.sys.appmat.model;

import javax.persistence.*;

/**
 * Created by Skaudrey on 2016/3/12.
 */
@Entity
@Table(name = "dic_businesstype", schema = "", catalog = "toponymy")
public class DicBusinesstypeEntity {
    private int btId;
    private String procId;
    private String btName;
    private int deptId;

    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    @Column(name = "btID", nullable = false, insertable = true, updatable = true)
    public int getBtId() {
        return btId;
    }

    public void setBtId(int btId) {
        this.btId = btId;
    }

    @Basic
    @Column(name = "procID", nullable = true, insertable = true, updatable = true, length = 20)
    public String getProcId() {
        return procId;
    }

    public void setProcId(String procId) {
        this.procId = procId;
    }

    @Basic
    @Column(name = "btName", nullable = false, insertable = true, updatable = true, length = 20)
    public String getBtName() {
        return btName;
    }

    public void setBtName(String btName) {
        this.btName = btName;
    }

    @Basic
    @Column(name = "deptID", nullable = false, insertable = true, updatable = true)
    public int getDeptId() {
        return deptId;
    }

    public void setDeptId(int deptId) {
        this.deptId = deptId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        DicBusinesstypeEntity that = (DicBusinesstypeEntity) o;

        if (btId != that.btId) return false;
        if (deptId != that.deptId) return false;
        if (procId != null ? !procId.equals(that.procId) : that.procId != null) return false;
        if (btName != null ? !btName.equals(that.btName) : that.btName != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = btId;
        result = 31 * result + (procId != null ? procId.hashCode() : 0);
        result = 31 * result + (btName != null ? btName.hashCode() : 0);
        result = 31 * result + deptId;
        return result;
    }
}
