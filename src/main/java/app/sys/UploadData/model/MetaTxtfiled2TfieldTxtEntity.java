package app.sys.UploadData.model;

import javax.persistence.*;

/**
 * Created by lenovo on 2016/3/10.
 */
@Entity
@Table(name = "meta_txtfiled2tfield_txt", schema = "", catalog = "toponymy")
public class MetaTxtfiled2TfieldTxtEntity {
    private String fieldName;
    private String txtFieldName;
    private String tableName;
    private int id;

    @Basic
    @Column(name = "fieldName")
    public String getFieldName() {
        return fieldName;
    }

    public void setFieldName(String fieldName) {
        this.fieldName = fieldName;
    }

    @Basic
    @Column(name = "txtFieldName")
    public String getTxtFieldName() {
        return txtFieldName;
    }

    public void setTxtFieldName(String txtFieldName) {
        this.txtFieldName = txtFieldName;
    }

    @Basic
    @Column(name = "tableName")
    public String getTableName() {
        return tableName;
    }

    public void setTableName(String tableName) {
        this.tableName = tableName;
    }

    @Id
    @Column(name = "ID")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        MetaTxtfiled2TfieldTxtEntity that = (MetaTxtfiled2TfieldTxtEntity) o;

        if (id != that.id) return false;
        if (fieldName != null ? !fieldName.equals(that.fieldName) : that.fieldName != null) return false;
        if (txtFieldName != null ? !txtFieldName.equals(that.txtFieldName) : that.txtFieldName != null) return false;
        if (tableName != null ? !tableName.equals(that.tableName) : that.tableName != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = fieldName != null ? fieldName.hashCode() : 0;
        result = 31 * result + (txtFieldName != null ? txtFieldName.hashCode() : 0);
        result = 31 * result + (tableName != null ? tableName.hashCode() : 0);
        result = 31 * result + id;
        return result;
    }
}
