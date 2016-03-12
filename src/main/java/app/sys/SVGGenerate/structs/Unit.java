package app.sys.SVGGenerate.structs;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/**
 * Created by weishicong on 2016/3/5.
 */
public class Unit {
    private int unitNum;
    private List<Floor> floorList;

    public Unit(int unitNum)
    {
        this.unitNum=unitNum;
        this.floorList=new ArrayList<Floor>();
    }

    public int getUnitNum() {
        return unitNum;
    }

    public void setUnitNum(int unitNum) {
        this.unitNum = unitNum;
    }

    public List<Floor> getFloorList() {
        return floorList;
    }

    public void setFloorList(List<Floor> floorList) {
        this.floorList = floorList;
    }

    public int getMaxRoomNumByFloor(int floor)
    {
        int max=0;
        for(House house:floorList.get(floor-1).getHouseList())
        {
            if(house.getRoomNum()>max)
                max=house.getRoomNum();
        }
        return max;
    }

    public void sort()
    {
        Collections.sort(floorList, new RoomComparator());
        for(Floor floor:floorList)
        {
            floor.sort();
        }
    }

    private class RoomComparator implements Comparator
    {
        public int compare(Object o1, Object o2) {
            if(((Floor)o1).getFloorNum()>((Floor)o2).getFloorNum())
                return 1;
            else if(((Floor)o1).getFloorNum()<((Floor)o2).getFloorNum())
                return -1;
            else
                return 0;
        }
    }
}
