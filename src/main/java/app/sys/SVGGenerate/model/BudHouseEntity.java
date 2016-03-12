package app.sys.SVGGenerate.model;

import javax.persistence.*;

/**
 * Created by weishicong on 2016/3/11.
 */
@Entity
@Table(name = "bud_house", schema = "", catalog = "toponymy")
public class BudHouseEntity {
    private int hid;
    private int houseNum;
    private String houseCode;
    private int area;
    private String owner;
    private int fid;
    private byte combine;

    @Id
    @Column(name = "HID", nullable = false, insertable = true, updatable = true)
    public int getHid() {
        return hid;
    }

    public void setHid(int hid) {
        this.hid = hid;
    }

    @Basic
    @Column(name = "HouseNum", nullable = false, insertable = true, updatable = true)
    public int getHouseNum() {
        return houseNum;
    }

    public void setHouseNum(int houseNum) {
        this.houseNum = houseNum;
    }

    @Basic
    @Column(name = "HouseCode", nullable = false, insertable = true, updatable = true, length = 20)
    public String getHouseCode() {
        return houseCode;
    }

    public void setHouseCode(String houseCode) {
        this.houseCode = houseCode;
    }

    @Basic
    @Column(name = "Area", nullable = false, insertable = true, updatable = true)
    public int getArea() {
        return area;
    }

    public void setArea(int area) {
        this.area = area;
    }

    @Basic
    @Column(name = "Owner", nullable = false, insertable = true, updatable = true, length = 20)
    public String getOwner() {
        return owner;
    }

    public void setOwner(String owner) {
        this.owner = owner;
    }

    @Basic
    @Column(name = "FID", nullable = false, insertable = true, updatable = true)
    public int getFid() {
        return fid;
    }

    public void setFid(int fid) {
        this.fid = fid;
    }

    @Basic
    @Column(name = "Combine", nullable = false, insertable = true, updatable = true)
    public byte getCombine() {
        return combine;
    }

    public void setCombine(byte combine) {
        this.combine = combine;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        BudHouseEntity that = (BudHouseEntity) o;

        if (hid != that.hid) return false;
        if (houseNum != that.houseNum) return false;
        if (area != that.area) return false;
        if (fid != that.fid) return false;
        if (combine != that.combine) return false;
        if (houseCode != null ? !houseCode.equals(that.houseCode) : that.houseCode != null) return false;
        if (owner != null ? !owner.equals(that.owner) : that.owner != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = hid;
        result = 31 * result + houseNum;
        result = 31 * result + (houseCode != null ? houseCode.hashCode() : 0);
        result = 31 * result + area;
        result = 31 * result + (owner != null ? owner.hashCode() : 0);
        result = 31 * result + fid;
        result = 31 * result + (int) combine;
        return result;
    }
}
