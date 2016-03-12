package app.sys.orgMgr.modual;

import javax.persistence.*;

/**
 * Created by Administrator on 2016/3/12.
 */
@Entity
@Table(name = "org_district", schema = "", catalog = "toponymy")
public class OrgDistrictEntity {
    private String distCode;
    private String upDistCode;
    private String name;

    @Id
    @Column(name = "distCode", nullable = false, insertable = true, updatable = true, length = 20)
    public String getDistCode() {
        return distCode;
    }

    public void setDistCode(String distCode) {
        this.distCode = distCode;
    }

    @Basic
    @Column(name = "upDistCode", nullable = false, insertable = true, updatable = true, length = 20)
    public String getUpDistCode() {
        return upDistCode;
    }

    public void setUpDistCode(String upDistCode) {
        this.upDistCode = upDistCode;
    }

    @Basic
    @Column(name = "name", nullable = false, insertable = true, updatable = true, length = 20)
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        OrgDistrictEntity that = (OrgDistrictEntity) o;

        if (distCode != null ? !distCode.equals(that.distCode) : that.distCode != null) return false;
        if (upDistCode != null ? !upDistCode.equals(that.upDistCode) : that.upDistCode != null) return false;
        if (name != null ? !name.equals(that.name) : that.name != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = distCode != null ? distCode.hashCode() : 0;
        result = 31 * result + (upDistCode != null ? upDistCode.hashCode() : 0);
        result = 31 * result + (name != null ? name.hashCode() : 0);
        return result;
    }
}
