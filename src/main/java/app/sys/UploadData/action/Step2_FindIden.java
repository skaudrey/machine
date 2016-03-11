package app.sys.UploadData.action;

import app.common.action.GenericActionSupport;
import app.sys.UploadData.service.MetaTablenameService;
import app.sys.UploadData.service.MetaTxtfiled2TfieldTxtService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by niubidedashenxc on 2016/3/9.
 */
public class Step2_FindIden extends GenericActionSupport {

    @Autowired
    MetaTablenameService metaTablenameService;
    @Autowired
    MetaTxtfiled2TfieldTxtService metaTxtfiled2TfieldTxtService;
    public String execute(){
        String filename=(String)getSession().getAttribute("uploadfilename");
        String tablename=metaTablenameService.GetTablenameByUploadedFile(filename);
        List<Object> aa=metaTablenameService.GetIdentifiesByUploadedFile(filename);
        aa.add(0,"无对应关系");
        ArrayList<List<Object>> arrayList=new ArrayList<List<Object>>();
        ArrayList<String> Identifiers=(ArrayList<String>)getSession().getAttribute("ChineseName");
        for(int i=0;i<Identifiers.size();i++){
            String defaul=metaTxtfiled2TfieldTxtService.GetDefalutBytbnameandchineseIdentify(tablename,Identifiers.get(i));
            if(aa.contains(defaul)){
                aa.remove(defaul);
                aa.add(0,defaul);
            }
            arrayList.add(aa);
        }
        int m=arrayList.size();
        getSession().setAttribute("Identifies", arrayList);
        getSession().setAttribute("uploadfile",filename);
        getSession().setAttribute("tbName",tablename);
        getSession().setAttribute("IdenChineseName",Identifiers);
        return "topage";
    }
}
