package app.sys.SVGGenerate.structs;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/**
 * Created by weishicong on 2016/3/7.
 */
public class Building {
    private String address;
    private int buildingNumber;
    private List<Unit> unitList;
    private int maxFloor;

    public Building()
    {
        unitList=new ArrayList<Unit>();
    }
    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public List<Unit> getUnitList() {
        return unitList;
    }

    public void setUnitList(List<Unit> unitList) {
        this.unitList = unitList;
    }

    public int getMaxFloor() {
        return maxFloor;
    }

    public void setMaxFloor(int maxFloor) {
        this.maxFloor = maxFloor;
    }

    public int getBuildingNumber() {
        return buildingNumber;
    }

    public void setBuildingNumber(int buildingNumber) {
        this.buildingNumber = buildingNumber;
    }

    public void sort()
    {
        Collections.sort(unitList, new RoomComparator());
        for(Unit unit:unitList)
        {
            unit.sort();
        }
    }

    private class RoomComparator implements Comparator
    {
        public int compare(Object o1, Object o2) {
            if(((Unit)o1).getUnitNum()>((Unit)o2).getUnitNum())
                return 1;
            else if(((Unit)o1).getUnitNum()<((Unit)o2).getUnitNum())
                return -1;
            else
                return 0;
        }
    }
    /**
     * 获取指定房间
     * @param unit 房间所在单元
     * @param floor 房间所在楼层
     * @param houseNum 房间号 正值表示正常房间号，如果以负数为参数表示从右往左反向查找，例如1代表最靠左的房间,-1代表最靠右的房间,-2代表右数第二个房间
     * @return 所查找的房间，如果对应房间不存在则返回null
     * ******/
    public House getHouse(int unit,int floor,int houseNum)
    {
        House house=null;
        try
        {
            if(houseNum>0)
            {
                house=unitList.get(unit-1).getFloorList().get(floor-1).getHouseList().get(houseNum-1);
            }
            else if(houseNum<0)
            {

                house=unitList.get(unit-1).getFloorList().get(floor-1).getHouseList().get(unitList.get(unit-1).getFloorList().get(floor-1).getHouseList().size()+houseNum);
            }
        }
        catch(IndexOutOfBoundsException e)
        {
            return null;
        }
        return house;
    }

    public int getHouseNumOfFloor(int unit,int floor)
    {
        try{
            return unitList.get(unit-1).getFloorList().get(floor-1).getHouseList().size();
        }
        catch (IndexOutOfBoundsException e)
        {
            return -1;
        }
    }
}
