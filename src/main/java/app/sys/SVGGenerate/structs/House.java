package app.sys.SVGGenerate.structs;

import app.sys.SVGGenerate.model.BudHouseEntity;

/**
 * Created by weishicong on 2016/3/7.
 */
public class House {
    private int unit;
    private int roomNum;
    private String owner;
    private int floor;
    private byte combine;
    private boolean is_added;
    private String houseCode;
    public House()
    {
        this.roomNum=1;
        this.owner=null;
        this.floor=1;
        this.combine=0;
        this.is_added=false;
        this.unit=1;
    }
    public House(BudHouseEntity entity,int floor,int unit)
    {
        this.roomNum=entity.getHouseNum();
        this.owner=entity.getOwner();
        this.combine=entity.getCombine();
        this.is_added=false;
        this.floor=floor;
        this.unit=unit;
        this.houseCode=entity.getHouseCode();
    }

    public void setAdded()
    {
        this.is_added=true;
    }

    public boolean isAdded()
    {
        return this.is_added;
    }

    public int getRoomNum() {
        return roomNum;
    }

    public void setRoomNum(int roomNum) {
        this.roomNum = roomNum;
    }

    public String getOwner() {
        return owner;
    }

    public void setOwner(String owner) {
        this.owner = owner;
    }

    public int getFloor() {
        return floor;
    }

    public void setFloor(int floor) {
        this.floor = floor;
    }

    public byte getCombine() {
        return combine;
    }

    public void setCombine(byte combine) {
        this.combine = combine;
    }

    public boolean leftCombine()
    {
        return (combine&0x1)==1;
    }

    public boolean rightCombine()
    {
        return ((combine>>>2)&0x1)==1;
    }

    public boolean topCombine()
    {
        return ((combine>>>3)&0x1)==1;
    }

    public boolean bottomCombine()
    {
        return ((combine>>>1)&0x1)==1;
    }

    public int getUnit() {
        return unit;
    }

    public void setUnit(int unit) {
        this.unit = unit;
    }

    public String getHouseCode() {
        return houseCode;
    }

    public void setHouseCode(String houseCode) {
        this.houseCode = houseCode;
    }
    /**
     * 返回完整的房间号码，例如5楼第3个房间就是503号房,其实就是一行表达式...
     * */
    public String getFullRoomNumber()
    {
        return new String(unit+"-"+Integer.toString(floor*100+roomNum));
    }

    public String getHouseInfo()
    {
        return new String(unit+"-"+Integer.toString(floor*100+roomNum)+","+owner+";");
    }
}
