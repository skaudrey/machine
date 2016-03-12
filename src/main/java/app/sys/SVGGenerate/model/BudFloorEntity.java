package app.sys.SVGGenerate.model;

import javax.persistence.*;

/**
 * Created by weishicong on 2016/3/11.
 */
@Entity
@Table(name = "bud_floor", schema = "", catalog = "toponymy")
public class BudFloorEntity {
    private int fid;
    private int floorNum;
    private int housesNum;
    private int uid;

    @Id
    @Column(name = "FID", nullable = false, insertable = true, updatable = true)
    public int getFid() {
        return fid;
    }

    public void setFid(int fid) {
        this.fid = fid;
    }

    @Basic
    @Column(name = "FloorNum", nullable = false, insertable = true, updatable = true)
    public int getFloorNum() {
        return floorNum;
    }

    public void setFloorNum(int floorNum) {
        this.floorNum = floorNum;
    }

    @Basic
    @Column(name = "HousesNum", nullable = false, insertable = true, updatable = true)
    public int getHousesNum() {
        return housesNum;
    }

    public void setHousesNum(int housesNum) {
        this.housesNum = housesNum;
    }

    @Basic
    @Column(name = "UID", nullable = false, insertable = true, updatable = true)
    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        BudFloorEntity that = (BudFloorEntity) o;

        if (fid != that.fid) return false;
        if (floorNum != that.floorNum) return false;
        if (housesNum != that.housesNum) return false;
        if (uid != that.uid) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = fid;
        result = 31 * result + floorNum;
        result = 31 * result + housesNum;
        result = 31 * result + uid;
        return result;
    }
}
