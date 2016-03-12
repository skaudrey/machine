package app.sys.SVGGenerate.service.impl;

import app.sys.SVGGenerate.dao.BudBuildingDao;
import app.sys.SVGGenerate.dao.BudFloorDao;
import app.sys.SVGGenerate.dao.BudHouseDao;
import app.sys.SVGGenerate.dao.BudUnitDao;
import app.sys.SVGGenerate.model.BudBuildingEntity;
import app.sys.SVGGenerate.model.BudFloorEntity;
import app.sys.SVGGenerate.model.BudHouseEntity;
import app.sys.SVGGenerate.model.BudUnitEntity;
import app.sys.SVGGenerate.service.HouseService;
import app.sys.SVGGenerate.structs.Building;
import app.sys.SVGGenerate.structs.Floor;
import app.sys.SVGGenerate.structs.House;
import app.sys.SVGGenerate.structs.Unit;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import javax.inject.Named;
import java.util.List;

/**
 * Created by weishicong on 2016/3/11.
 */
@Named(value="HouseService")
@Component
@Transactional
public class HouseServiceImpl implements HouseService{
    @Autowired
    BudBuildingDao buildingDao;
    @Autowired
    BudUnitDao unitDao;
    @Autowired
    BudFloorDao floorDao;
    @Autowired
    BudHouseDao houseDao;
    public Building getBuildingByID(int BID) {
        String sql1="from BudBuildingEntity where BID=:BID";
        List list=buildingDao.createQuery(sql1).setInteger("BID",BID).list();
        if(list.size()==0)
            return null;
        BudBuildingEntity buildingEntity=(BudBuildingEntity)list.get(0);
        Building building=new Building();
        building.setBuildingNumber(buildingEntity.getBuildingNum());
        building.setMaxFloor(buildingEntity.getMaxFloor());
        List<BudUnitEntity> unitEntities=getUnitByBuilding(BID);
        for(BudUnitEntity entity:unitEntities)
        {
            Unit newUnit=new Unit(entity.getUnitNum());
            building.getUnitList().add(newUnit);
        }
        for(int i=0;i<unitEntities.size();i++)
        {
            int unitNum= unitEntities.get(i).getUnitNum();
            List<BudFloorEntity> floorEntities=getFloorByUnit(unitEntities.get(i).getUid());
            for(BudFloorEntity floorEntity:floorEntities)
            {
                int floorNum=floorEntity.getFloorNum();
                Floor newFloor=new Floor(floorNum);
                List<BudHouseEntity> houseEntities=getHouseByFloor(floorEntity.getFid());
                for(BudHouseEntity houseEntity:houseEntities)
                {
                    House newHouse=new House(houseEntity,floorNum,unitNum);
                    newFloor.getHouseList().add(newHouse);
                }
                building.getUnitList().get(i).getFloorList().add(newFloor);
            }
        }
        return building;
    }
    public List<BudUnitEntity> getUnitByBuilding(int BID)
    {
        String sql="from BudUnitEntity where BID=:BID";
        List list=unitDao.createQuery(sql).setInteger("BID",BID).list();
        return list.size()>0?list:null;
    }
    public List<BudFloorEntity> getFloorByUnit(int UID)
    {
        String sql="from BudFloorEntity where UID=:UID";
        List list=floorDao.createQuery(sql).setInteger("UID",UID).list();
        return list.size()>0?list:null;
    }
    public List<BudHouseEntity> getHouseByFloor(int FID)
    {
        String sql="from BudHouseEntity where FID=:FID";
        List list=houseDao.createQuery(sql).setInteger("FID",FID).list();
        return list.size()>0?list:null;
    }
}
