package app.sys.SVGGenerate.model;

import javax.persistence.*;

/**
 * Created by weishicong on 2016/3/11.
 */
@Entity
@Table(name = "bud_unit", schema = "", catalog = "toponymy")
public class BudUnitEntity {
    private int uid;
    private int unitNum;
    private int maxFloor;
    private int bid;

    @Id
    @Column(name = "UID", nullable = false, insertable = true, updatable = true)
    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
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
    @Column(name = "BID", nullable = false, insertable = true, updatable = true)
    public int getBid() {
        return bid;
    }

    public void setBid(int bid) {
        this.bid = bid;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        BudUnitEntity that = (BudUnitEntity) o;

        if (uid != that.uid) return false;
        if (unitNum != that.unitNum) return false;
        if (maxFloor != that.maxFloor) return false;
        if (bid != that.bid) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = uid;
        result = 31 * result + unitNum;
        result = 31 * result + maxFloor;
        result = 31 * result + bid;
        return result;
    }
}
