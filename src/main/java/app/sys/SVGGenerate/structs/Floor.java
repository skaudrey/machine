package app.sys.SVGGenerate.structs;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/**
 * Created by weishicong on 2016/2/27.
 */
public class Floor {
    private int floorNum;
    private List<House> houseList;
    private int maxRoomNum;
    public Floor(int floor) {
        this.floorNum=floor;
        houseList=new ArrayList<House>();
    }

    public int getFloorNum() {
        return floorNum;
    }

    public void setFloorNum(int floorNum) {
        this.floorNum = floorNum;
    }

    public List<House> getHouseList() {
        return houseList;
    }

    public void setHouseList(List<House> houseList) {
        this.houseList = houseList;
    }

    public boolean addHouse(House house)
    {
        if(house.getRoomNum()>this.maxRoomNum)
            this.maxRoomNum=house.getRoomNum();
        houseList.add(house);
        return true;
    }

    public void sort()
    {
        Collections.sort(houseList,new RoomComparator());
    }

    private class RoomComparator implements Comparator
    {
        public int compare(Object o1, Object o2) {
            if(((House)o1).getRoomNum()>((House)o2).getRoomNum())
                return 1;
            else if(((House)o1).getRoomNum()<((House)o2).getRoomNum())
                return -1;
            else
                return 0;
        }
    }

    public int getMaxRoomNum()
    {
        return this.maxRoomNum;
    }

    public House getLeftRoom(House house)
    {
        int index=houseList.indexOf(house);
        if(index==0||index==-1)
        {
            return null;
        }
        House leftRoom=houseList.get(index-1);
        return leftRoom;
    }

    public House getRightRoom(House house)
    {
        int index=houseList.indexOf(house);
        if(index==houseList.size()||index==-1)
        {
            return null;
        }
        House rightRoom=houseList.get(index+1);
        return rightRoom;
    }
}
