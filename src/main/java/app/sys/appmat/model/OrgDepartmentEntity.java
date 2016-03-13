package app.sys.appmat.model;

import javax.persistence.*;

/**
 * Created by Skaudrey on 2016/3/12.
 */
@Entity
@Table(name = "org_department", schema = "", catalog = "toponymy")
public class OrgDepartmentEntity {
    private int deptId;

    @Id
    @Column(name = "deptID", nullable = false, insertable = true, updatable = true)
    public int getDeptId() {
        return deptId;
    }

    public void setDeptId(int deptId) {
        this.deptId = deptId;
    }

    private String name;

    @Basic
    @Column(name = "name", nullable = false, insertable = true, updatable = true, length = 20)
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    private String location;

    @Basic
    @Column(name = "location", nullable = false, insertable = true, updatable = true, length = 50)
    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    private String upDeptId;

    @Basic
    @Column(name = "upDeptID", nullable = false, insertable = true, updatable = true, length = 20)
    public String getUpDeptId() {
        return upDeptId;
    }

    public void setUpDeptId(String upDeptId) {
        this.upDeptId = upDeptId;
    }

    private String description;

    @Basic
    @Column(name = "description", nullable = false, insertable = true, updatable = true, length = 20)
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    private String orgCode;

    @Basic
    @Column(name = "orgCode", nullable = false, insertable = true, updatable = true, length = 20)
    public String getOrgCode() {
        return orgCode;
    }

  /*  @Basic
    @Column(name = "orgCode", nullable = false, insertable = true, updatable = true, length = 20)
    public String getOrgCode() {
        return orgCode;
    }*/

    public void setOrgCode(String orgCode) {
        this.orgCode = orgCode;
    }    private String createTime;

    @Basic
    @Column(name = "createTime", nullable = false, insertable = true, updatable = true, length = 20)
    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        OrgDepartmentEntity that = (OrgDepartmentEntity) o;

        if (deptId != that.deptId) return false;
        if (name != null ? !name.equals(that.name) : that.name != null) return false;
        if (location != null ? !location.equals(that.location) : that.location != null) return false;
        if (upDeptId != null ? !upDeptId.equals(that.upDeptId) : that.upDeptId != null) return false;
        if (description != null ? !description.equals(that.description) : that.description != null) return false;
        if (orgCode != null ? !orgCode.equals(that.orgCode) : that.orgCode != null) return false;
        if (createTime != null ? !createTime.equals(that.createTime) : that.createTime != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = deptId;
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + (location != null ? location.hashCode() : 0);
        result = 31 * result + (upDeptId != null ? upDeptId.hashCode() : 0);
        result = 31 * result + (description != null ? description.hashCode() : 0);
        result = 31 * result + (orgCode != null ? orgCode.hashCode() : 0);
        result = 31 * result + (createTime != null ? createTime.hashCode() : 0);
        return result;
    }
}
