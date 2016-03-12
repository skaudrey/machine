package app.sys.SVGGenerate.action;


import app.common.action.GenericActionSupport;
import app.sys.SVGGenerate.module.SVGHandler;
import app.sys.SVGGenerate.service.HouseService;
import org.springframework.beans.factory.annotation.Autowired;

import java.io.IOException;
import java.io.PrintWriter;


/**
 * Created by weishicong on 2016/2/23.
 */

public class SVGShowAction extends GenericActionSupport {
    @Autowired
    HouseService houseService;
    public String generateSvg() throws IOException
    {
        SVGHandler handler=new SVGHandler(houseService.getBuildingByID(1));
        PrintWriter writer=super.getResponse().getWriter();
        writer.write(handler.makeSVG());
        writer.flush();
        writer.close();
        return SUCCESS;
    }

}
