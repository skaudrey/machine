package app.sys.dmzMgr.modual;

import javax.persistence.*;

/**
 * Created by Administrator on 2016/3/12.
 */
@Entity
@Table(name = "dmz_catalog", schema = "", catalog = "toponymy")
public class DmzCatalogEntity {
    private int cId;
    private String name;
    private String upcId;
    private String type;
    private String tableName;
    private String fieldName;
    private String claCode;

    @Id
    @Column(name = "cID", nullable = false, insertable = true, updatable = true)
    public int getcId() {
        return cId;
    }

    public void setcId(int cId) {
        this.cId = cId;
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
    @Column(name = "upcID", nullable = true, insertable = true, updatable = true, length = 20)
    public String getUpcId() {
        return upcId;
    }

    public void setUpcId(String upcId) {
        this.upcId = upcId;
    }

    @Basic
    @Column(name = "type", nullable = false, insertable = true, updatable = true, length = 20)
    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    @Basic
    @Column(name = "tableName", nullable = false, insertable = true, updatable = true, length = 20)
    public String getTableName() {
        return tableName;
    }

    public void setTableName(String tableName) {
        this.tableName = tableName;
    }

    @Basic
    @Column(name = "fieldName", nullable = false, insertable = true, updatable = true, length = 20)
    public String getFieldName() {
        return fieldName;
    }

    public void setFieldName(String fieldName) {
        this.fieldName = fieldName;
    }

    @Basic
    @Column(name = "claCode", nullable = false, insertable = true, updatable = true, length = 20)
    public String getClaCode() {
        return claCode;
    }

    public void setClaCode(String claCode) {
        this.claCode = claCode;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        DmzCatalogEntity that = (DmzCatalogEntity) o;

        if (cId != that.cId) return false;
        if (name != null ? !name.equals(that.name) : that.name != null) return false;
        if (upcId != null ? !upcId.equals(that.upcId) : that.upcId != null) return false;
        if (type != null ? !type.equals(that.type) : that.type != null) return false;
        if (tableName != null ? !tableName.equals(that.tableName) : that.tableName != null) return false;
        if (fieldName != null ? !fieldName.equals(that.fieldName) : that.fieldName != null) return false;
        if (claCode != null ? !claCode.equals(that.claCode) : that.claCode != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = cId;
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + (upcId != null ? upcId.hashCode() : 0);
        result = 31 * result + (type != null ? type.hashCode() : 0);
        result = 31 * result + (tableName != null ? tableName.hashCode() : 0);
        result = 31 * result + (fieldName != null ? fieldName.hashCode() : 0);
        result = 31 * result + (claCode != null ? claCode.hashCode() : 0);
        return result;
    }
}
