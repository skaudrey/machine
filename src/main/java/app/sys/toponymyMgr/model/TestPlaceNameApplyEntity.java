package app.sys.toponymyMgr.model;

import javax.persistence.*;

/**
 * Created by Administrator on 2016/3/11 0011.
 */
@Entity
@Table(name = "test_place_name_apply", schema = "", catalog = "toponymy")
public class TestPlaceNameApplyEntity {
    private int id;
    private String placeName;
    private String description;
    private String piid;

    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    @Column(name = "id", nullable = false, insertable = true, updatable = true)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "place_name", nullable = false, insertable = true, updatable = true, length = 30)
    public String getPlaceName() {
        return placeName;
    }

    public void setPlaceName(String placeName) {
        this.placeName = placeName;
    }

    @Basic
    @Column(name = "description", nullable = false, insertable = true, updatable = true, length = 16777215)
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Basic
    @Column(name = "piid", nullable = true, insertable = true, updatable = true, length = 64)
    public String getPiid() {
        return piid;
    }

    public void setPiid(String piid) {
        this.piid = piid;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        TestPlaceNameApplyEntity that = (TestPlaceNameApplyEntity) o;

        if (id != that.id) return false;
        if (placeName != null ? !placeName.equals(that.placeName) : that.placeName != null) return false;
        if (description != null ? !description.equals(that.description) : that.description != null) return false;
        if (piid != null ? !piid.equals(that.piid) : that.piid != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (placeName != null ? placeName.hashCode() : 0);
        result = 31 * result + (description != null ? description.hashCode() : 0);
        result = 31 * result + (piid != null ? piid.hashCode() : 0);
        return result;
    }
}
