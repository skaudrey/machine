package app.sys.UploadData.model;

import javax.persistence.*;

/**
 * Created by lenovo on 2016/3/10.
 */
@Entity
@Table(name = "meta_tablename", schema = "", catalog = "toponymy")
public class MetaTablenameEntity {
    private short tbnId;
    private String tableName;
    private String topClaId;
    private String txtFileName;
    private String type;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "tbnID")
    public short getTbnId() {
        return tbnId;
    }

    public void setTbnId(short tbnId) {
        this.tbnId = tbnId;
    }

    @Basic
    @Column(name = "tableName")
    public String getTableName() {
        return tableName;
    }

    public void setTableName(String tableName) {
        this.tableName = tableName;
    }

    @Basic
    @Column(name = "topClaID")
    public String getTopClaId() {
        return topClaId;
    }

    public void setTopClaId(String topClaId) {
        this.topClaId = topClaId;
    }

    @Basic
    @Column(name = "txtFileName")
    public String getTxtFileName() {
        return txtFileName;
    }

    public void setTxtFileName(String txtFileName) {
        this.txtFileName = txtFileName;
    }

    @Basic
    @Column(name = "type")
    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        MetaTablenameEntity that = (MetaTablenameEntity) o;

        if (tbnId != that.tbnId) return false;
        if (tableName != null ? !tableName.equals(that.tableName) : that.tableName != null) return false;
        if (topClaId != null ? !topClaId.equals(that.topClaId) : that.topClaId != null) return false;
        if (txtFileName != null ? !txtFileName.equals(that.txtFileName) : that.txtFileName != null) return false;
        if (type != null ? !type.equals(that.type) : that.type != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = (int) tbnId;
        result = 31 * result + (tableName != null ? tableName.hashCode() : 0);
        result = 31 * result + (topClaId != null ? topClaId.hashCode() : 0);
        result = 31 * result + (txtFileName != null ? txtFileName.hashCode() : 0);
        result = 31 * result + (type != null ? type.hashCode() : 0);
        return result;
    }
}
