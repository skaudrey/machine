package app.sys.UploadData.action;

import app.common.action.GenericActionSupport;
import app.sys.UploadData.service.MetaTablenameService;
import com.alibaba.fastjson.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.PrintStream;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Objects;


/**
 * Created by niubidedashenxc on 2016/3/10.
 */
public class Step3_GenerateSql extends GenericActionSupport{
    ArrayList<ArrayList<String>> txtdata=(ArrayList<ArrayList<String>>) getSession().getAttribute("txtdata");
    String filename=(String)getSession().getAttribute("uploadfile");
    String data;
    @Autowired
    MetaTablenameService metaTablenameService;

    public String getData() {
        return data;
    }

    public void setData(String data) {
        this.data = data;
    }
    public String execute(){
        JSONArray list=JSONArray.parseArray(data);
        ArrayList<Object> arrayList=new ArrayList<Object>();
        for(int i=0;i<list.size();i++){
            if(list.get(i).toString().contains("无对应关系")){
            }else {
                arrayList.add(list.get(i));
            }
        }
        PrintStream ps=null;
        File InsertSQL = new File("D://InsertSQL.txt");
        try {
            ps=new PrintStream(new FileOutputStream(InsertSQL));
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        String tablename=metaTablenameService.GetTablenameByUploadedFile(filename);
        for(int k=0;k<txtdata.size();k++){
            String sentence="INSERT INTO "+tablename;
            String columns="";
            String values="";
            for(int m=0;m<arrayList.size();m++){
                JSONArray iden = (JSONArray)arrayList.get(m);
                columns+=iden.get(1)+",";
                values+="\""+txtdata.get(k).get(Integer.parseInt(iden.getString(0)))+"\""+",";
            }
            sentence=sentence+" ("+columns.substring(0,columns.length()-1)+") VALUES("+values.substring(0,values.length()-1)+");"+"\r\n";
            ps.append(sentence);
        }
        ps.close();
        super.writeJson("生成的插入语句已写入D盘InsertSQL.txt中");
        return "";
    }
}
