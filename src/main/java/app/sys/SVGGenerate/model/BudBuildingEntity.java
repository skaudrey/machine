package app.sys.SVGGenerate.model;

import javax.persistence.*;

/**
 * Created by weishicong on 2016/3/11.
 */
@Entity
@Table(name = "bud_building", schema = "", catalog = "toponymy")
public class BudBuildingEntity {
    private int bid;
    private int buildingNum;
    private int unitNum;
    private int maxFloor;
    private String address;

    @Id
    @Column(name = "BID", nullable = false, insertable = true, updatable = true)
    public int getBid() {
        return bid;
    }

    public void setBid(int bid) {
        this.bid = bid;
    }

    @Basic
    @Column(name = "BuildingNum", nullable = false, insertable = true, updatable = true)
    public int getBuildingNum() {
        return buildingNum;
    }

    public void setBuildingNum(int buildingNum) {
        this.buildingNum = buildingNum;
    }

    @Basic
    @Column(name = "UnitNum", nullable = false, insertable = true, updatable = true)
    public int getUnitNum() {
        return unitNum;
    }

    public void setUnitNum(int unitNum) {
        this.unitNum = unitNum;
    }

    @Basic
    @Column(name = "MaxFloor", nullable = false, insertable = true, updatable = true)
    public int getMaxFloor() {
        return maxFloor;
    }

    public void setMaxFloor(int maxFloor) {
        this.maxFloor = maxFloor;
    }

    @Basic
    @Column(name = "Address", nullable = false, insertable = true, updatable = true, length = 50)
    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        BudBuildingEntity that = (BudBuildingEntity) o;

        if (bid != that.bid) return false;
        if (buildingNum != that.buildingNum) return false;
        if (unitNum != that.unitNum) return false;
        if (maxFloor != that.maxFloor) return false;
        if (address != null ? !address.equals(that.address) : that.address != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = bid;
        result = 31 * result + buildingNum;
        result = 31 * result + unitNum;
        result = 31 * result + maxFloor;
        result = 31 * result + (address != null ? address.hashCode() : 0);
        return result;
    }
}
