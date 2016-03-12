package app.sys.SVGGenerate.structs;

import java.awt.*;
import java.util.*;
import java.util.List;

/**
 * Created by weishicong on 2016/2/27.
 */
public class SvgItem {
    private int type;
    private int x;
    private int y;
    private List<Point> pointList;
    private Set<String> roomSet;

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public int getX() {
        return x;
    }

    public void setX(int x) {
        this.x = x;
    }

    public int getY() {
        return y;
    }

    public void setY(int y) {
        this.y = y;
    }

    public List<Point> getPointList() {
        return pointList;
    }

    public void setPointList(List<Point> pointList) {
        this.pointList = pointList;
    }

    public String getPointStr()
    {
        StringBuilder sb=new StringBuilder();
        for(Point point:pointList)
        {
            sb.append(point.x);
            sb.append(",");
            sb.append(point.y);
            sb.append(" ");
        }
        return sb.toString();
    }
    public boolean addPoint(Point point)
    {
        boolean ended=false;
        if(pointList==null)
        {
            pointList = new ArrayList<Point>();
            pointList.add(point);
        }
        else
        {
            if(pointList.get(0).equals(point))
                ended=true;
            if(!pointList.contains(point))
                pointList.add(point);
        }
        return ended;
    }
    public boolean haveRoom(String roomNum)
    {
        if(this.roomSet==null)
            return false;
        return this.roomSet.contains(roomNum);
    }

    public void addRoomInfo(String roomInfo)
    {
        if(this.roomSet==null)
            this.roomSet=new HashSet<String>();
        this.roomSet.add(roomInfo);
    }

    public String getRoomStr()
    {
        StringBuilder sb=new StringBuilder();
        Iterator<String> it = roomSet.iterator();
        while(it.hasNext())
        {
            String num=it.next();
            sb.append(num);
        }
        return sb.toString();
    }
}
