package app.sys.SVGGenerate.service;

import app.sys.SVGGenerate.structs.Building;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by weishicong on 2016/3/11.
 */
@Transactional
public interface HouseService {
    Building getBuildingByID(int BID);
}

