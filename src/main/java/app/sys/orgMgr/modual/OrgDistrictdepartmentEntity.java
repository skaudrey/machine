package app.sys.orgMgr.modual;

import javax.persistence.*;

/**
 * Created by Administrator on 2016/3/12.
 */
@Entity
@Table(name = "org_districtdepartment", schema = "", catalog = "toponymy")
public class OrgDistrictdepartmentEntity {
    private int deptId;
    private String distCode;

    @Id
    @Column(name = "deptID", nullable = false, insertable = true, updatable = true)
    public int getDeptId() {
        return deptId;
    }

    public void setDeptId(int deptId) {
        this.deptId = deptId;
    }

    @Basic
    @Column(name = "distCode", nullable = true, insertable = true, updatable = true, length = 20)
    public String getDistCode() {
        return distCode;
    }

    public void setDistCode(String distCode) {
        this.distCode = distCode;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        OrgDistrictdepartmentEntity that = (OrgDistrictdepartmentEntity) o;

        if (deptId != that.deptId) return false;
        if (distCode != null ? !distCode.equals(that.distCode) : that.distCode != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = deptId;
        result = 31 * result + (distCode != null ? distCode.hashCode() : 0);
        return result;
    }
}
