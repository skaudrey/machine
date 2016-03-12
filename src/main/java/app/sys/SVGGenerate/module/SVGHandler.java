package app.sys.SVGGenerate.module;

/**
 * Created by weishicong on 2016/3/11.
 */

import app.sys.SVGGenerate.service.HouseService;
import app.sys.SVGGenerate.structs.Building;
import app.sys.SVGGenerate.structs.House;
import app.sys.SVGGenerate.structs.SvgItem;
import app.sys.SVGGenerate.structs.Unit;
import org.springframework.beans.factory.annotation.Autowired;

import java.awt.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by weishicong on 2016/3/8.
 */
public class SVGHandler {
    private final int baseWidth=120;
    private final int baseHeight=80;
    private final int marginLeft=150;
    private final int marginTop=0;
    private final int textMarginTop=52;
    private final int textMarginLeft=25;
    private double scale=1;
    private Building building;

    @Autowired
    HouseService houseService;

    public Building getBuilding() {
        return building;
    }

    public void setBuilding(Building building) {
        this.building = building;
    }

    public int getBaseWidth() {
        return baseWidth;
    }

    public int getBaseHeight() {
        return baseHeight;
    }

    public SVGHandler(Building building)
    {
        this.building=building;
    }

    public List<SvgItem> makeSvgItems()
    {
        List<SvgItem> items=new ArrayList<SvgItem>();
        for(int unit=0;unit<building.getUnitList().size();unit++) {
            for (int floor = building.getUnitList().get(unit).getFloorList().size(); floor > 0; floor--) {
                for (int roomNum = 0; roomNum < building.getUnitList().get(unit).getFloorList().get(floor - 1).getHouseList().size(); roomNum++) {
                    House house = building.getUnitList().get(unit).getFloorList().get(floor - 1).getHouseList().get(roomNum);
                    if (house.leftCombine()) {
                        for (SvgItem item : items) {
                            if (item.haveRoom(house.getHouseInfo())) {
                                item.addRoomInfo(house.getHouseInfo());
                                break;
                            }
                        }
                        house.setAdded();
                    }
                    if (house.isAdded()) {
                        continue;
                    }
                    SvgItem item = new SvgItem();
                    addRooms(item, house);
                    items.add(item);
                }
            }
        }
        return items;
    }
    //from代表上一个房间的方位，0表示这个房间是item的初始房间，1表示上个房间在这个的上方，2表示上个房间在右方，3表示在下方，4表示在左方
    private void addRooms(SvgItem item,House origin)
    {
        House room=origin;
        int from=0;
        boolean ended=false;
        while(!ended)
        {
            room.setAdded();
            item.addRoomInfo(room.getHouseInfo());
            switch(from)
            {
                case 0:
                    if (room.bottomCombine()) {
                        ended=item.addPoint(getLeftTop(room))||ended;
                        room = getRoomBelow(room);
                        from=1;
                    }
                    else if(room.rightCombine())
                    {
                        ended=item.addPoint(getLeftTop(room))||ended;
                        ended=item.addPoint(getLeftBottom(room))||ended;
                        room=getRightRoom(room);
                        from=4;
                    }
                    else
                    {
                        ended=item.addPoint(getLeftTop(room))||ended;
                        ended=item.addPoint(getLeftBottom(room))||ended;
                        ended=item.addPoint(getRightBottom(room))||ended;
                        ended=item.addPoint(getRightTop(room))||ended;
                    }
                    break;
                case 1:
                    if(room.leftCombine())
                    {
                        ended=item.addPoint(getLeftTop(room))||ended;
                        room=getLeftRoom(room);
                        from=2;
                    }
                    else if(room.bottomCombine())
                    {
                        ended=item.addPoint(getLeftTop(room))||ended;
                        room=getRoomBelow(room);
                        from=1;
                    }
                    else if(room.rightCombine())
                    {
                        ended=item.addPoint(getLeftTop(room))||ended;
                        ended=item.addPoint(getLeftBottom(room))||ended;
                        room=getRightRoom(room);
                        from=4;
                    }
                    else
                    {
                        ended=item.addPoint(getLeftTop(room))||ended;
                        ended=item.addPoint(getLeftBottom(room))||ended;
                        ended=item.addPoint(getRightBottom(room))||ended;
                        room=getRoomUpon(room);
                        from=3;
                    }
                    break;
                case 2:
                    if(room.topCombine())
                    {
                        ended=item.addPoint(getRightTop(room))||ended;
                        room=getRoomUpon(room);
                        from=3;
                    }
                    else if(room.leftCombine())
                    {
                        ended=item.addPoint(getRightTop(room))||ended;
                        room=getLeftRoom(room);
                        from=2;
                    }
                    else if(room.bottomCombine())
                    {
                        ended=item.addPoint(getRightTop(room))||ended;
                        ended=item.addPoint(getLeftTop(room))||ended;
                        room=getRoomBelow(room);
                        from=1;
                    }
                    else
                    {
                        ended=item.addPoint(getRightTop(room))||ended;
                        ended=item.addPoint(getLeftTop(room))||ended;
                        ended=item.addPoint(getLeftBottom(room))||ended;
                        room=getRightRoom(room);
                        from=4;
                    }
                    break;
                case 3:
                    if(room.rightCombine())
                    {
                        ended=item.addPoint(getRightBottom(room))||ended;
                        room=getRightRoom(room);
                        from=4;
                    }
                    else if(room.topCombine())
                    {
                        ended=item.addPoint(getRightBottom(room))||ended;
                        room=getRoomUpon(room);
                        from=3;
                    }
                    else if(room.leftCombine())
                    {
                        ended=item.addPoint(getRightBottom(room))||ended;
                        ended=item.addPoint(getRightTop(room))||ended;
                        room=getLeftRoom(room);
                        from=2;
                    }
                    else
                    {
                        ended=item.addPoint(getRightBottom(room))||ended;
                        ended=item.addPoint(getRightTop(room))||ended;
                        ended=item.addPoint(getLeftTop(room))||ended;
                        room=getRoomBelow(room);
                        from=1;
                    }
                    break;
                case 4:
                    if(room.bottomCombine())
                    {
                        ended=item.addPoint(getLeftBottom(room))||ended;
                        room=getRoomBelow(room);
                        from=1;
                    }
                    else if(room.rightCombine())
                    {
                        ended=item.addPoint(getLeftBottom(room))||ended;
                        room=getRightRoom(room);
                        from=4;
                    }
                    else if(room.topCombine())
                    {
                        ended=item.addPoint(getLeftBottom(room))||ended;
                        ended=item.addPoint(getRightBottom(room))||ended;
                        room=getRoomUpon(room);
                        from=3;
                    }
                    else
                    {
                        ended=item.addPoint(getLeftBottom(room))||ended;
                        ended = item.addPoint(getRightBottom(room))||ended;
                        ended =item.addPoint(getRightTop(room))||ended;
                        room=getLeftRoom(room);
                        from=2;
                    }
            }
        }

    }
    //获取这个房间下方的房间
    private House getRoomBelow(House house)
    {
        House below;
        try {
            below = building.getUnitList().get(house.getUnit() - 1).getFloorList().get(house.getFloor() - 2).getHouseList().get(house.getRoomNum() - 1);
        }
        catch (Exception e)
        {
            e.printStackTrace();
            return null;
        }
        return below;
    }
    //获取这个房间上方的房间
    private House getRoomUpon(House house)
    {
        House upon;
        try {
            upon=building.getUnitList().get(house.getUnit() - 1).getFloorList().get(house.getFloor()).getHouseList().get(house.getRoomNum()-1);
        }
        catch(Exception e)
        {
            e.printStackTrace();
            return null;
        }
        return upon;
    }
    //获取这个房间左侧的房间
    private House getLeftRoom(House house)
    {
        House left;
        try {
            if(house.getRoomNum()!=1)
                left = building.getUnitList().get(house.getUnit() - 1).getFloorList().get(house.getFloor() - 1).getLeftRoom(house);
            else
            {
                List<House> houseList=building.getUnitList().get(house.getUnit()-2).getFloorList().get(house.getFloor()-1).getHouseList();
                left=houseList.get(houseList.size()-1);
            }
        }catch(Exception e)
        {
            e.printStackTrace();
            return null;
        }
        return left;
    }
    //获取这个房间右侧的房间
    private House getRightRoom(House house)
    {
        House right;
        try{
            if(building.getUnitList().get(house.getUnit()-1).getMaxRoomNumByFloor(house.getFloor())>house.getRoomNum())
                right=building.getUnitList().get(house.getUnit()-1).getFloorList().get(house.getFloor() - 1).getRightRoom(house);
            else
            {
                right=building.getUnitList().get(house.getUnit()).getFloorList().get(house.getFloor()-1).getHouseList().get(0);
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
            return null;
        }
        return right;
    }
    //获取房间左上的点的坐标
    private Point getLeftTop(House house)
    {
        Point point=new Point();
        point.setLocation(marginLeft+(roomsBeforeIt(house))*baseWidth,marginTop+(building.getMaxFloor()-house.getFloor())*baseHeight);
        return point;
    }
    //获取房间左下的点的坐标
    private Point getLeftBottom(House house)
    {
        Point point=new Point();
        point.setLocation(marginLeft+(roomsBeforeIt(house))*baseWidth,marginTop+(building.getMaxFloor()-house.getFloor()+1)*baseHeight);
        return point;
    }
    //获取房间右下的点的坐标
    private Point getRightBottom(House house)
    {
        Point point=new Point();
        point.setLocation(marginLeft+(roomsBeforeIt(house))*baseWidth+baseWidth,marginTop+(building.getMaxFloor()-house.getFloor()+1)*baseHeight);
        return point;
    }
    //获取房间右上的点的坐标
    private Point getRightTop(House house)
    {
        Point point=new Point();
        point.setLocation(marginLeft+(roomsBeforeIt(house))*baseWidth+baseWidth,marginTop+(building.getMaxFloor()-house.getFloor())*baseHeight);
        return point;
    }

    //获取排在这个房间之前的房间数
    public int roomsBeforeIt(House house)
    {
        int before=0;
        int unit=0;
        for(int i=0;i<building.getUnitList().size();i++)
        {
            for(int j=0;j<building.getUnitList().get(i).getFloorList().size();j++)
            {
                if(building.getUnitList().get(i).getFloorList().get(j).getHouseList().contains(house)) {
                    unit = i + 1;
                }
            }
        }
        for(int i=0;i<unit-1;i++)
        {
            before+=building.getUnitList().get(i).getFloorList().get(0).getHouseList().size();
        }
        before+=house.getRoomNum()-1;
        return before;
    }

    public int roomNumOfFirstFloor()
    {
        int number=0;
        for(Unit unit:building.getUnitList())
        {
            number+=unit.getFloorList().get(0).getHouseList().size();
        }
        return number;
    }
    //生辰SVG文件正文
    public String makeSVG()
    {
        building.sort();
        List<SvgItem> items=makeSvgItems();
        StringBuilder sb = new StringBuilder();
        sb.append("<?xml version=\"1.0\" standalone=\"no\"?>\n" +
                "<!DOCTYPE svg PUBLIC \"-//W3C//DTD SVG 1.1//EN\" \n" +
                "\"http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd\">");
        sb.append("<svg width=\""+(marginLeft+roomNumOfFirstFloor()*getBaseWidth()+50)*scale+"\" id=\"svgImg\" height=\""+(marginTop+building.getMaxFloor()*baseHeight)*1.5*scale+"\" version=\"1.1\"\n" +
                "xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 "+(marginLeft+roomNumOfFirstFloor()*getBaseWidth()+50)+" "+(marginTop+building.getMaxFloor()*baseHeight)+"\">");
        for(SvgItem item:items)
        {
            sb.append("<polygon id=\"element" + items.indexOf(item) + "\"" + " class=\"svg_item\" points=\"" + item.getPointStr() + "\" width=\"120\" height=\"80\"\n" +
                    " data-field=\"" + item.getRoomStr() + "\"" +
                    " style=\"fill:rgba(94,193,240,1);stroke:rgb(155,155,155);stroke-width:5;\n" +
                    " fill-opacity:0.1;stroke-opacity:0.9\" onmouseover=\"svgOn(this)\" onmouseout=\"svgOut(this)\" onclick=\"select(this)\"/>");

        }
        for(int u=0;u<building.getUnitList().size();u++) {
            for (int i = 0; i < building.getUnitList().get(u).getFloorList().size(); i++) {
                for (int j = 0; j < building.getUnitList().get(u).getFloorList().get(i).getHouseList().size(); j++) {
                    House house = building.getUnitList().get(u).getFloorList().get(i).getHouseList().get(j);
                    int index = 0;
                    for (SvgItem item : items) {
                        if (item.haveRoom(house.getHouseInfo())) {
                            index = items.indexOf(item);
                            break;
                        }
                    }
                    sb.append("<text class=\"element" + index + "\" style=\"fill:black;\" font-size=\"30\" font-family=\"LiSu \"\n" +
                            "x=" + "\"" + (marginLeft+textMarginLeft+ baseWidth * (roomsBeforeIt(house))) + "\"" + " y=" + "\"" + (textMarginTop + 80 * (building.getMaxFloor() - house.getFloor())) + "\"" + " width=\"200\" height=\"30\" onmouseover=\"svgOn(this)\" onclick=\"select(this)\">" +
                            house.getFullRoomNumber() +
                            "</text>");
                }
            }
        }
        //添加楼层号信息
        for(int f=0;f<building.getMaxFloor();f++)
        {
            sb.append("<text class=\"floor_num\" style=\"fill:black;\" font-size=\"30\" font-family=\"LiSu \"\n" +
                    "x=" + "\"" + 50 + "\"" + " y=" + "\"" + (textMarginTop+f*baseHeight) + "\"" + " width=\"100\" height=\"30\">" +
                    (building.getMaxFloor()-f)+" "+"楼" +
                    "</text>");
        }
        //添加单元信息
        for(int u=0;u<building.getUnitList().size();u++)
        {
            sb.append("<path d=\"M"+(marginLeft+roomsBeforeIt(building.getHouse(u + 1, 1, 1))*baseWidth+10)+" "+(marginTop+building.getMaxFloor()*baseHeight+20)+" L"+(marginLeft+roomsBeforeIt(building.getHouse(u+1,1,-1))*baseWidth+baseWidth-10)+" "+(marginTop+building.getMaxFloor()*baseHeight+20)+" Z\" style=\"fill:white;stroke:red;stroke-width:2\"/>");
            sb.append("<text class=\"floor_num\" style=\"fill:black;\" font-size=\"45\" font-family=\"LiSu \"\n" +
                    "x=" + "\"" + (marginLeft+roomsBeforeIt(building.getHouse(u + 1, 1, 1))*baseWidth+(building.getHouseNumOfFloor(u+1,1)*baseWidth-100)/2) + "\"" + " y=" + "\"" + (textMarginTop+building.getMaxFloor()*baseHeight+40) + "\"" + " width=\"100\" height=\"30\">" +
                    (u+1)+" "+"单元" +
                    "</text>");
        }

        sb.append("</svg>");
        return sb.toString();
    }
}
