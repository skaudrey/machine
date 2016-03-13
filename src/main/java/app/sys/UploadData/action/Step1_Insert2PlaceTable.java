package app.sys.UploadData.action;

import app.common.action.GenericActionSupport;
import app.sys.UploadData.model.TPlacecommonEntity;
import app.sys.UploadData.service.MetaTablenameService;
import app.sys.UploadData.service.TPlacecommonService;
import com.sun.xml.internal.fastinfoset.util.StringArray;
import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;

import java.io.*;
import java.sql.Timestamp;
import java.util.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Locale;


/**
 * Created by niubidedashenxc on 2016/3/9.
 */
public class Step1_Insert2PlaceTable extends GenericActionSupport {
    @Autowired
    MetaTablenameService metaTablenameService;
    @Autowired
    TPlacecommonService tPlacecommonService;
    public String execute() {
        String filename=(String)getSession().getAttribute("txtfilename");
        String txtFilePath = (String) ServletActionContext.getRequest().getAttribute("FilePath");//在服务器上的绝对文件路径
        ArrayList<String> Identifiers = new ArrayList<String>();//关键字中文名
        ArrayList<ArrayList<String>> txtdata=new ArrayList<ArrayList<String>>();//txt里的数据(需要插入数据表的数据)
        StringArray datalists = new StringArray();
        PrintStream ps=null;
        try {
            String encoding = "UTF-8";
            File file = new File(txtFilePath);
            InputStreamReader read = new InputStreamReader(new FileInputStream(file));
            BufferedReader br = new BufferedReader(read);//建立BufferedReader对象，并实例化为br

            String s = br.readLine();
            while (s != null) {
                datalists.add(s);
                s = br.readLine();
            }
            for (int i = 0; i < datalists.get(0).split("\t").length; i++) {
                Identifiers.add(datalists.get(0).split("\t")[i]);
            }
            for(int a=1;a<datalists.getSize();a++){
                ArrayList<String> onerow=new ArrayList<String>();
                for (int b = 0; b < datalists.get(a).split("\t").length; b++) {
                    onerow.add(datalists.get(a).split("\t")[b]);
                }
                while (onerow.size()<Identifiers.size()){
                    onerow.add("");
                }
                txtdata.add(onerow);
            }
            br.close();
            read.close();
            file.delete();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

        String topclaId=metaTablenameService.GetTopClaIdBytxtFilename(filename);
        File errorInfo = new File("D://errorInfo.txt");
        try {
            ps=new PrintStream(new FileOutputStream(errorInfo));
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        ps.append("以下地名代码对应的数据未被写入数据库："+"\r\n");

        for(int ii=0;ii<txtdata.size();ii++){
            Timestamp dateTemp=Timestamp.valueOf(txtdata.get(ii).get(31));
            Timestamp dengjishijian= new Timestamp(dateTemp.getTime());
            try{

                TPlacecommonEntity aNewTPE = new TPlacecommonEntity();
                aNewTPE.setPlacecommonId(txtdata.get(ii).get(0));//地名代码
                aNewTPE.setBiaozhunmingcheng(txtdata.get(ii).get(1));//标准名称
                aNewTPE.setBieming(txtdata.get(ii).get(2));//别名
                aNewTPE.setJiancheng(txtdata.get(ii).get(3));//简称
                aNewTPE.setDimingduyin(txtdata.get(ii).get(7));//地名读音
                aNewTPE.setRomepinxie(txtdata.get(ii).get(9));//罗马拼写
                aNewTPE.setYuzhong(txtdata.get(ii).get(10));//地名语种
                aNewTPE.setPlacetype(txtdata.get(ii).get(11));//地名类型
                aNewTPE.setDongjing(Float.parseFloat(txtdata.get(ii).get(12)));//东经
                aNewTPE.setZhidongjing(Float.parseFloat(txtdata.get(ii).get(13)));//至东经
                aNewTPE.setBeiwei(Float.parseFloat(txtdata.get(ii).get(14)));//北纬
                aNewTPE.setZhibeiwei(Float.parseFloat(txtdata.get(ii).get(15)));//至北纬
                aNewTPE.setBilichi(txtdata.get(ii).get(19));//比例尺
                aNewTPE.setShiyongshijian(txtdata.get(ii).get(20));//使用时间
                aNewTPE.setHanyi(txtdata.get(ii).get(22));//地名的含义
                aNewTPE.setLishiyange(txtdata.get(ii).get(23));//地名的历史沿革
                aNewTPE.setMiji(txtdata.get(ii).get(24));//密级
                aNewTPE.setZuobiaoxi(txtdata.get(ii).get(25));//坐标系
                aNewTPE.setCeliangfangfa(txtdata.get(ii).get(26));//测量方法
                aNewTPE.setDilishitimiaoshu(txtdata.get(ii).get(27));//地名的实体描述
                aNewTPE.setDuomeiti(txtdata.get(ii).get(28));//多媒体信息
                aNewTPE.setZiliaolaiyuan(txtdata.get(ii).get(29));//资料来源
                aNewTPE.setBeizhu(txtdata.get(ii).get(30));//备注
                aNewTPE.setDengjishijian(dengjishijian);//登记时间
                aNewTPE.setDengjiren(txtdata.get(ii).get(32));//登记人
                aNewTPE.setDengjidanwei(txtdata.get(ii).get(33));//登记单位
                aNewTPE.setRomepinxieTongming(txtdata.get(ii).get(34));//通用罗马字母拼写
                aNewTPE.setShelinianfen(Integer.parseInt(txtdata.get(ii).get(35)));//设立年份
                aNewTPE.setFeizhinianfen(Integer.parseInt(txtdata.get(ii).get(36)));//废止年份
                aNewTPE.setAddress(txtdata.get(ii).get(37));//地址
                aNewTPE.setOther(txtdata.get(ii).get(43));//其他信息
                aNewTPE.setPlacecode(topclaId);//地名编码
                aNewTPE.setTumingtuhao(txtdata.get(ii).get(18));//图号年版
                aNewTPE.setCengyongming(txtdata.get(ii).get(4));//曾用名
                aNewTPE.setHanzishuxie(txtdata.get(ii).get(5));//汉字书写
                aNewTPE.setShaoshumingzushuxie(txtdata.get(ii).get(6));//少数民族书写
                aNewTPE.setHanyuputonghuaduyin(txtdata.get(ii).get(8));//汉语普通话读音
                aNewTPE.setDimingpuchazhuangtai(txtdata.get(ii).get(16));//地名普查状态
                aNewTPE.setYuantumingcheng(txtdata.get(ii).get(17));//原图名称
                aNewTPE.setDiminglaili(txtdata.get(ii).get(21));//地名来历
                tPlacecommonService.saveTPlacecommonEntity(aNewTPE);
            }catch (Exception e){
                String a="\"";
                String insertsentence;
                insertsentence="INSERT INTO t_placecommon (PLACECOMMON_ID,BIAOZHUNMINGCHENG,BIEMING,JIANCHENG,DIMINGDUYIN," +
                        "ROMEPINXIE,YUZHONG,PLACETYPE,DONGJING,ZHIDONGJING,BEIWEI,ZHIBEIWEI,BILICHI,SHIYONGSHIJIAN," +
                        "HANYI,LISHIYANGE,MIJI,ZUOBIAOXI,CELIANGFANGFA,DILISHITIMIAOSHU,DUOMEITI,ZILIAOLAIYUAN,BEIZHU," +
                        "DENGJISHIJIAN,DENGJIREN,DENGJIDANWEI,ROMEPINXIE_TONGMING,SHELINIANFEN,FEIZHINIANFEN,ADDRESS,OTHER," +
                        "TUMINGTUHAO,CENGYONGMING,HANZISHUXIE,SHAOSHUMINGZUSHUXIE,HANYUPUTONGHUADUYIN,DIMINGPUCHAZHUANGTAI," +
                        "YUANTUMINGCHENG,DIMINGLAILI,PLACECODE) VALUES ("+a+txtdata.get(ii).get(0)+a+","+a+txtdata.get(ii).get(1)+a+","+a+txtdata.get(ii).get(2)+a+","+a+txtdata.get(ii).get(3)+a+","+a+txtdata.get(ii).get(7)+a+","+a+txtdata.get(ii).get(9)+a+","+a+txtdata.get(ii).get(10)+a+","+a+txtdata.get(ii).get(11)+a+","
                        +a+txtdata.get(ii).get(12)+a+","+a+txtdata.get(ii).get(13)+a+","+a+txtdata.get(ii).get(14)+a+","+a+txtdata.get(ii).get(15)+a+","+a+txtdata.get(ii).get(19)+a+","
                        +a+txtdata.get(ii).get(20)+a+","+a+txtdata.get(ii).get(22)+a+","+a+txtdata.get(ii).get(23)+a+","+a+txtdata.get(ii).get(24)+a+","
                        +a+txtdata.get(ii).get(25)+a+","+a+txtdata.get(ii).get(26)+a+","+a+txtdata.get(ii).get(27)+a+","+a+txtdata.get(ii).get(28)+a+","
                        +a+txtdata.get(ii).get(29)+a+","+a+txtdata.get(ii).get(30)+a+","+a+txtdata.get(ii).get(31)+".0"+a+","+a+txtdata.get(ii).get(32)+a+","
                        +a+txtdata.get(ii).get(33)+a+","+a+txtdata.get(ii).get(34)+a+","+a+txtdata.get(ii).get(35)+a+","+a+txtdata.get(ii).get(36)+a+","
                        +a+txtdata.get(ii).get(37)+a+","+a+txtdata.get(ii).get(43)+a+","+a+txtdata.get(ii).get(18)+a+","+a+txtdata.get(ii).get(4)+a+","+a+txtdata.get(ii).get(5)+a+","+
                        a+txtdata.get(ii).get(6)+a+","+a+txtdata.get(ii).get(8)+a+","+a+txtdata.get(ii).get(16)+a+","+a+txtdata.get(ii).get(17)+a+","+
                        a+txtdata.get(ii).get(21)+a+","+a+topclaId+a+");"+"\r\n";
                ps.append(txtdata.get(ii).get(0)+","+e.getMessage()+";"+"\r\n");
                ps.append(insertsentence+"\r\n"+"\r\n");
            }
        }
        ps.close();
        getSession().setAttribute("txtdata", txtdata);
        getSession().setAttribute("ChineseName", Identifiers);
        getSession().setAttribute("uploadfilename",filename);
        return "selectAct";
    }
}
