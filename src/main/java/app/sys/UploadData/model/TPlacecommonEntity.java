package app.sys.UploadData.model;

import javax.persistence.*;
import java.sql.Date;
import java.sql.Timestamp;

/**
 * Created by lenovo on 2016/3/10.
 */
@Entity
@javax.persistence.Table(name = "t_placecommon", schema = "", catalog = "toponymy")
public class TPlacecommonEntity {
    private String districtId;

    @Basic
    @javax.persistence.Column(name = "DISTRICT_ID")
    public String getDistrictId() {
        return districtId;
    }

    public void setDistrictId(String districtId) {
        this.districtId = districtId;
    }

    private String biaozhunmingcheng;

    @Basic
    @javax.persistence.Column(name = "BIAOZHUNMINGCHENG")
    public String getBiaozhunmingcheng() {
        return biaozhunmingcheng;
    }

    public void setBiaozhunmingcheng(String biaozhunmingcheng) {
        this.biaozhunmingcheng = biaozhunmingcheng;
    }

    private String tushangmingcheng;

    @Basic
    @javax.persistence.Column(name = "TUSHANGMINGCHENG")
    public String getTushangmingcheng() {
        return tushangmingcheng;
    }

    public void setTushangmingcheng(String tushangmingcheng) {
        this.tushangmingcheng = tushangmingcheng;
    }

    private String romepinxie;

    @Basic
    @javax.persistence.Column(name = "ROMEPINXIE")
    public String getRomepinxie() {
        return romepinxie;
    }

    public void setRomepinxie(String romepinxie) {
        this.romepinxie = romepinxie;
    }

    private String minzuyu;

    @Basic
    @javax.persistence.Column(name = "MINZUYU")
    public String getMinzuyu() {
        return minzuyu;
    }

    public void setMinzuyu(String minzuyu) {
        this.minzuyu = minzuyu;
    }

    private String bieming;

    @Basic
    @javax.persistence.Column(name = "BIEMING")
    public String getBieming() {
        return bieming;
    }

    public void setBieming(String bieming) {
        this.bieming = bieming;
    }

    private String jiancheng;

    @Basic
    @javax.persistence.Column(name = "JIANCHENG")
    public String getJiancheng() {
        return jiancheng;
    }

    public void setJiancheng(String jiancheng) {
        this.jiancheng = jiancheng;
    }

    private String shijiandaima;

    @Basic
    @javax.persistence.Column(name = "SHIJIANDAIMA")
    public String getShijiandaima() {
        return shijiandaima;
    }

    public void setShijiandaima(String shijiandaima) {
        this.shijiandaima = shijiandaima;
    }

    private Float gaocheng;

    @Basic
    @javax.persistence.Column(name = "GAOCHENG")
    public Float getGaocheng() {
        return gaocheng;
    }

    public void setGaocheng(Float gaocheng) {
        this.gaocheng = gaocheng;
    }

    private Float dongjing;

    @Basic
    @javax.persistence.Column(name = "DONGJING")
    public Float getDongjing() {
        return dongjing;
    }

    public void setDongjing(Float dongjing) {
        this.dongjing = dongjing;
    }

    private Float zhidongjing;

    @Basic
    @javax.persistence.Column(name = "ZHIDONGJING")
    public Float getZhidongjing() {
        return zhidongjing;
    }

    public void setZhidongjing(Float zhidongjing) {
        this.zhidongjing = zhidongjing;
    }

    private Float beiwei;

    @Basic
    @javax.persistence.Column(name = "BEIWEI")
    public Float getBeiwei() {
        return beiwei;
    }

    public void setBeiwei(Float beiwei) {
        this.beiwei = beiwei;
    }

    private Float zhibeiwei;

    @Basic
    @javax.persistence.Column(name = "ZHIBEIWEI")
    public Float getZhibeiwei() {
        return zhibeiwei;
    }

    public void setZhibeiwei(Float zhibeiwei) {
        this.zhibeiwei = zhibeiwei;
    }

    private String miji;

    @Basic
    @javax.persistence.Column(name = "MIJI")
    public String getMiji() {
        return miji;
    }

    public void setMiji(String miji) {
        this.miji = miji;
    }

    private String hanyi;

    @Basic
    @javax.persistence.Column(name = "HANYI")
    public String getHanyi() {
        return hanyi;
    }

    public void setHanyi(String hanyi) {
        this.hanyi = hanyi;
    }

    private String lishiyange;

    @Basic
    @javax.persistence.Column(name = "LISHIYANGE")
    public String getLishiyange() {
        return lishiyange;
    }

    public void setLishiyange(String lishiyange) {
        this.lishiyange = lishiyange;
    }

    private String other;

    @Basic
    @javax.persistence.Column(name = "OTHER")
    public String getOther() {
        return other;
    }

    public void setOther(String other) {
        this.other = other;
    }

    private String duomeiti;

    @Basic
    @javax.persistence.Column(name = "DUOMEITI")
    public String getDuomeiti() {
        return duomeiti;
    }

    public void setDuomeiti(String duomeiti) {
        this.duomeiti = duomeiti;
    }

    private Integer biaopaigeshu;

    @Basic
    @javax.persistence.Column(name = "BIAOPAIGESHU")
    public Integer getBiaopaigeshu() {
        return biaopaigeshu;
    }

    public void setBiaopaigeshu(Integer biaopaigeshu) {
        this.biaopaigeshu = biaopaigeshu;
    }

    private Integer shelinianfen;

    @Basic
    @javax.persistence.Column(name = "SHELINIANFEN")
    public Integer getShelinianfen() {
        return shelinianfen;
    }

    public void setShelinianfen(Integer shelinianfen) {
        this.shelinianfen = shelinianfen;
    }

    private Integer feizhinianfen;

    @Basic
    @javax.persistence.Column(name = "FEIZHINIANFEN")
    public Integer getFeizhinianfen() {
        return feizhinianfen;
    }

    public void setFeizhinianfen(Integer feizhinianfen) {
        this.feizhinianfen = feizhinianfen;
    }

    private String beizhu;

    @Basic
    @javax.persistence.Column(name = "BEIZHU")
    public String getBeizhu() {
        return beizhu;
    }

    public void setBeizhu(String beizhu) {
        this.beizhu = beizhu;
    }

    private Integer mapid;

    @Basic
    @javax.persistence.Column(name = "MAPID")
    public Integer getMapid() {
        return mapid;
    }

    public void setMapid(Integer mapid) {
        this.mapid = mapid;
    }

    private Date createdate;

    @Basic
    @javax.persistence.Column(name = "CREATEDATE")
    public Date getCreatedate() {
        return createdate;
    }

    public void setCreatedate(Date createdate) {
        this.createdate = createdate;
    }

    private Date modifydate;

    @Basic
    @javax.persistence.Column(name = "MODIFYDATE")
    public Date getModifydate() {
        return modifydate;
    }

    public void setModifydate(Date modifydate) {
        this.modifydate = modifydate;
    }

    private Integer editType;

    @Basic
    @javax.persistence.Column(name = "EDIT_TYPE")
    public Integer getEditType() {
        return editType;
    }

    public void setEditType(Integer editType) {
        this.editType = editType;
    }

    private String placecode;

    @Basic
    @javax.persistence.Column(name = "PLACECODE")
    public String getPlacecode() {
        return placecode;
    }

    public void setPlacecode(String placecode) {
        this.placecode = placecode;
    }

    private String bilichi;

    @Basic
    @javax.persistence.Column(name = "BILICHI")
    public String getBilichi() {
        return bilichi;
    }

    public void setBilichi(String bilichi) {
        this.bilichi = bilichi;
    }

    private String tumingtuhao;

    @Basic
    @javax.persistence.Column(name = "TUMINGTUHAO")
    public String getTumingtuhao() {
        return tumingtuhao;
    }

    public void setTumingtuhao(String tumingtuhao) {
        this.tumingtuhao = tumingtuhao;
    }

    private String dimingduyin;

    @Basic
    @javax.persistence.Column(name = "DIMINGDUYIN")
    public String getDimingduyin() {
        return dimingduyin;
    }

    public void setDimingduyin(String dimingduyin) {
        this.dimingduyin = dimingduyin;
    }

    private String yuzhong;

    @Basic
    @javax.persistence.Column(name = "YUZHONG")
    public String getYuzhong() {
        return yuzhong;
    }

    public void setYuzhong(String yuzhong) {
        this.yuzhong = yuzhong;
    }

    private String shifouguihua;

    @Basic
    @javax.persistence.Column(name = "SHIFOUGUIHUA")
    public String getShifouguihua() {
        return shifouguihua;
    }

    public void setShifouguihua(String shifouguihua) {
        this.shifouguihua = shifouguihua;
    }

    private Date guihuashijian;

    @Basic
    @javax.persistence.Column(name = "GUIHUASHIJIAN")
    public Date getGuihuashijian() {
        return guihuashijian;
    }

    public void setGuihuashijian(Date guihuashijian) {
        this.guihuashijian = guihuashijian;
    }

    private String leibiemingcheng;

    @Basic
    @javax.persistence.Column(name = "LEIBIEMINGCHENG")
    public String getLeibiemingcheng() {
        return leibiemingcheng;
    }

    public void setLeibiemingcheng(String leibiemingcheng) {
        this.leibiemingcheng = leibiemingcheng;
    }

    private String mingmingshijian;

    @Basic
    @javax.persistence.Column(name = "MINGMINGSHIJIAN")
    public String getMingmingshijian() {
        return mingmingshijian;
    }

    public void setMingmingshijian(String mingmingshijian) {
        this.mingmingshijian = mingmingshijian;
    }

    private String shiyongshijian;

    @Basic
    @javax.persistence.Column(name = "SHIYONGSHIJIAN")
    public String getShiyongshijian() {
        return shiyongshijian;
    }

    public void setShiyongshijian(String shiyongshijian) {
        this.shiyongshijian = shiyongshijian;
    }

    private String zuobiaoxi;

    @Basic
    @javax.persistence.Column(name = "ZUOBIAOXI")
    public String getZuobiaoxi() {
        return zuobiaoxi;
    }

    public void setZuobiaoxi(String zuobiaoxi) {
        this.zuobiaoxi = zuobiaoxi;
    }

    private String celiangfangfa;

    @Basic
    @javax.persistence.Column(name = "CELIANGFANGFA")
    public String getCeliangfangfa() {
        return celiangfangfa;
    }

    public void setCeliangfangfa(String celiangfangfa) {
        this.celiangfangfa = celiangfangfa;
    }

    private String ziliaolaiyuan;

    @Basic
    @javax.persistence.Column(name = "ZILIAOLAIYUAN")
    public String getZiliaolaiyuan() {
        return ziliaolaiyuan;
    }

    public void setZiliaolaiyuan(String ziliaolaiyuan) {
        this.ziliaolaiyuan = ziliaolaiyuan;
    }

    private String placecommonId;

    @Basic
    @javax.persistence.Column(name = "PLACECOMMON_ID")
    public String getPlacecommonId() {
        return placecommonId;
    }

    public void setPlacecommonId(String placecommonId) {
        this.placecommonId = placecommonId;
    }

    private Integer datastate;

    @Basic
    @javax.persistence.Column(name = "DATASTATE")
    public Integer getDatastate() {
        return datastate;
    }

    public void setDatastate(Integer datastate) {
        this.datastate = datastate;
    }

    private Integer businessstate;

    @Basic
    @javax.persistence.Column(name = "BUSINESSSTATE")
    public Integer getBusinessstate() {
        return businessstate;
    }

    public void setBusinessstate(Integer businessstate) {
        this.businessstate = businessstate;
    }

    private String quanzonghao;

    @Basic
    @javax.persistence.Column(name = "QUANZONGHAO")
    public String getQuanzonghao() {
        return quanzonghao;
    }

    public void setQuanzonghao(String quanzonghao) {
        this.quanzonghao = quanzonghao;
    }

    private String muluhao;

    @Basic
    @javax.persistence.Column(name = "MULUHAO")
    public String getMuluhao() {
        return muluhao;
    }

    public void setMuluhao(String muluhao) {
        this.muluhao = muluhao;
    }

    private String fenleihao;

    @Basic
    @javax.persistence.Column(name = "FENLEIHAO")
    public String getFenleihao() {
        return fenleihao;
    }

    public void setFenleihao(String fenleihao) {
        this.fenleihao = fenleihao;
    }

    private String leimudaima;

    @Basic
    @javax.persistence.Column(name = "LEIMUDAIMA")
    public String getLeimudaima() {
        return leimudaima;
    }

    public void setLeimudaima(String leimudaima) {
        this.leimudaima = leimudaima;
    }

    private Timestamp dengjishijian;

    @Basic
    @javax.persistence.Column(name = "DENGJISHIJIAN")
    public Timestamp getDengjishijian() {
        return dengjishijian;
    }

    public void setDengjishijian(Timestamp dengjishijian) {
        this.dengjishijian = dengjishijian;
    }

    private String dengjiren;

    @Basic
    @javax.persistence.Column(name = "DENGJIREN")
    public String getDengjiren() {
        return dengjiren;
    }

    public void setDengjiren(String dengjiren) {
        this.dengjiren = dengjiren;
    }

    private String dengjidanwei;

    @Basic
    @javax.persistence.Column(name = "DENGJIDANWEI")
    public String getDengjidanwei() {
        return dengjidanwei;
    }

    public void setDengjidanwei(String dengjidanwei) {
        this.dengjidanwei = dengjidanwei;
    }

    private String romepinxieTongming;

    @Basic
    @javax.persistence.Column(name = "ROMEPINXIE_TONGMING")
    public String getRomepinxieTongming() {
        return romepinxieTongming;
    }

    public void setRomepinxieTongming(String romepinxieTongming) {
        this.romepinxieTongming = romepinxieTongming;
    }

    private String flag;

    @Basic
    @javax.persistence.Column(name = "FLAG")
    public String getFlag() {
        return flag;
    }

    public void setFlag(String flag) {
        this.flag = flag;
    }

    private String dilishitimiaoshu;

    @Basic
    @javax.persistence.Column(name = "DILISHITIMIAOSHU")
    public String getDilishitimiaoshu() {
        return dilishitimiaoshu;
    }

    public void setDilishitimiaoshu(String dilishitimiaoshu) {
        this.dilishitimiaoshu = dilishitimiaoshu;
    }

    private String anjuanhao;

    @Basic
    @javax.persistence.Column(name = "ANJUANHAO")
    public String getAnjuanhao() {
        return anjuanhao;
    }

    public void setAnjuanhao(String anjuanhao) {
        this.anjuanhao = anjuanhao;
    }

    private String leimumingcheng;

    @Basic
    @javax.persistence.Column(name = "LEIMUMINGCHENG")
    public String getLeimumingcheng() {
        return leimumingcheng;
    }

    public void setLeimumingcheng(String leimumingcheng) {
        this.leimumingcheng = leimumingcheng;
    }

    private String placetype;

    @Basic
    @javax.persistence.Column(name = "PLACETYPE")
    public String getPlacetype() {
        return placetype;
    }

    public void setPlacetype(String placetype) {
        this.placetype = placetype;
    }

    private String approveNum;

    @Basic
    @javax.persistence.Column(name = "APPROVE_NUM")
    public String getApproveNum() {
        return approveNum;
    }

    public void setApproveNum(String approveNum) {
        this.approveNum = approveNum;
    }

    private Integer isexclusive;

    @Basic
    @javax.persistence.Column(name = "ISEXCLUSIVE")
    public Integer getIsexclusive() {
        return isexclusive;
    }

    public void setIsexclusive(Integer isexclusive) {
        this.isexclusive = isexclusive;
    }

    private String hid;

    @Basic
    @javax.persistence.Column(name = "HID")
    public String getHid() {
        return hid;
    }

    public void setHid(String hid) {
        this.hid = hid;
    }

    private String fromPoint;

    @Basic
    @javax.persistence.Column(name = "FROM_POINT")
    public String getFromPoint() {
        return fromPoint;
    }

    public void setFromPoint(String fromPoint) {
        this.fromPoint = fromPoint;
    }

    private String address;

    @Basic
    @javax.persistence.Column(name = "ADDRESS")
    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    private String mapguid;

    @Basic
    @javax.persistence.Column(name = "MAPGUID")
    public String getMapguid() {
        return mapguid;
    }

    public void setMapguid(String mapguid) {
        this.mapguid = mapguid;
    }

    private String pingyin;

    @Basic
    @javax.persistence.Column(name = "PINGYIN")
    public String getPingyin() {
        return pingyin;
    }

    public void setPingyin(String pingyin) {
        this.pingyin = pingyin;
    }

    private String amjx0001;

    @Basic
    @javax.persistence.Column(name = "AMJX0001")
    public String getAmjx0001() {
        return amjx0001;
    }

    public void setAmjx0001(String amjx0001) {
        this.amjx0001 = amjx0001;
    }

    private Date amjx0002;

    @Basic
    @javax.persistence.Column(name = "AMJX0002")
    public Date getAmjx0002() {
        return amjx0002;
    }

    public void setAmjx0002(Date amjx0002) {
        this.amjx0002 = amjx0002;
    }

    private String amje0003;

    @Basic
    @javax.persistence.Column(name = "AMJE0003")
    public String getAmje0003() {
        return amje0003;
    }

    public void setAmje0003(String amje0003) {
        this.amje0003 = amje0003;
    }

    private String amje0004;

    @Basic
    @javax.persistence.Column(name = "AMJE0004")
    public String getAmje0004() {
        return amje0004;
    }

    public void setAmje0004(String amje0004) {
        this.amje0004 = amje0004;
    }

    private String amje0005;

    @Basic
    @javax.persistence.Column(name = "AMJE0005")
    public String getAmje0005() {
        return amje0005;
    }

    public void setAmje0005(String amje0005) {
        this.amje0005 = amje0005;
    }

    private String amjx0006;

    @Basic
    @javax.persistence.Column(name = "AMJX0006")
    public String getAmjx0006() {
        return amjx0006;
    }

    public void setAmjx0006(String amjx0006) {
        this.amjx0006 = amjx0006;
    }

    private String amjx0007;

    @Basic
    @javax.persistence.Column(name = "AMJX0007")
    public String getAmjx0007() {
        return amjx0007;
    }

    public void setAmjx0007(String amjx0007) {
        this.amjx0007 = amjx0007;
    }

    private String amjx0008;

    @Basic
    @javax.persistence.Column(name = "AMJX0008")
    public String getAmjx0008() {
        return amjx0008;
    }

    public void setAmjx0008(String amjx0008) {
        this.amjx0008 = amjx0008;
    }

    private String amjx0009;

    @Basic
    @javax.persistence.Column(name = "AMJX0009")
    public String getAmjx0009() {
        return amjx0009;
    }

    public void setAmjx0009(String amjx0009) {
        this.amjx0009 = amjx0009;
    }

    private String amjxooi0;

    @Basic
    @javax.persistence.Column(name = "AMJXOOI0")
    public String getAmjxooi0() {
        return amjxooi0;
    }

    public void setAmjxooi0(String amjxooi0) {
        this.amjxooi0 = amjxooi0;
    }

    private String amjxoOll;

    @Basic
    @javax.persistence.Column(name = "AMJXOOll")
    public String getAmjxoOll() {
        return amjxoOll;
    }

    public void setAmjxoOll(String amjxoOll) {
        this.amjxoOll = amjxoOll;
    }

    private String amjxooi2;

    @Basic
    @javax.persistence.Column(name = "AMJXOOI2")
    public String getAmjxooi2() {
        return amjxooi2;
    }

    public void setAmjxooi2(String amjxooi2) {
        this.amjxooi2 = amjxooi2;
    }

    private String amjxooi3;

    @Basic
    @javax.persistence.Column(name = "AMJXOOI3")
    public String getAmjxooi3() {
        return amjxooi3;
    }

    public void setAmjxooi3(String amjxooi3) {
        this.amjxooi3 = amjxooi3;
    }

    private String amjxooi4;

    @Basic
    @javax.persistence.Column(name = "AMJXOOI4")
    public String getAmjxooi4() {
        return amjxooi4;
    }

    public void setAmjxooi4(String amjxooi4) {
        this.amjxooi4 = amjxooi4;
    }

    private String amjxooi5;

    @Basic
    @javax.persistence.Column(name = "AMJXOOI5")
    public String getAmjxooi5() {
        return amjxooi5;
    }

    public void setAmjxooi5(String amjxooi5) {
        this.amjxooi5 = amjxooi5;
    }

    private String amjxooi6;

    @Basic
    @javax.persistence.Column(name = "AMJXOOI6")
    public String getAmjxooi6() {
        return amjxooi6;
    }

    public void setAmjxooi6(String amjxooi6) {
        this.amjxooi6 = amjxooi6;
    }

    private String amjxooi7;

    @Basic
    @javax.persistence.Column(name = "AMJXOOI7")
    public String getAmjxooi7() {
        return amjxooi7;
    }

    public void setAmjxooi7(String amjxooi7) {
        this.amjxooi7 = amjxooi7;
    }

    private String amjxooi8;

    @Basic
    @javax.persistence.Column(name = "AMJXOOI8")
    public String getAmjxooi8() {
        return amjxooi8;
    }

    public void setAmjxooi8(String amjxooi8) {
        this.amjxooi8 = amjxooi8;
    }

    private String amjxooi9;

    @Basic
    @javax.persistence.Column(name = "AMJXOOI9")
    public String getAmjxooi9() {
        return amjxooi9;
    }

    public void setAmjxooi9(String amjxooi9) {
        this.amjxooi9 = amjxooi9;
    }

    private String amjx0020;

    @Basic
    @javax.persistence.Column(name = "AMJX0020")
    public String getAmjx0020() {
        return amjx0020;
    }

    public void setAmjx0020(String amjx0020) {
        this.amjx0020 = amjx0020;
    }

    private String amjx0021;

    @Basic
    @javax.persistence.Column(name = "AMJX0021")
    public String getAmjx0021() {
        return amjx0021;
    }

    public void setAmjx0021(String amjx0021) {
        this.amjx0021 = amjx0021;
    }

    private String amjx0022;

    @Basic
    @javax.persistence.Column(name = "AMJX0022")
    public String getAmjx0022() {
        return amjx0022;
    }

    public void setAmjx0022(String amjx0022) {
        this.amjx0022 = amjx0022;
    }

    private String amjx0023;

    @Basic
    @javax.persistence.Column(name = "AMJX0023")
    public String getAmjx0023() {
        return amjx0023;
    }

    public void setAmjx0023(String amjx0023) {
        this.amjx0023 = amjx0023;
    }

    private String amjx0024;

    @Basic
    @javax.persistence.Column(name = "AMJX0024")
    public String getAmjx0024() {
        return amjx0024;
    }

    public void setAmjx0024(String amjx0024) {
        this.amjx0024 = amjx0024;
    }

    private String amkx0001;

    @Basic
    @javax.persistence.Column(name = "AMKX0001")
    public String getAmkx0001() {
        return amkx0001;
    }

    public void setAmkx0001(String amkx0001) {
        this.amkx0001 = amkx0001;
    }

    private int id;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @javax.persistence.Column(name = "ID")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    private String amlx0001;

    @Basic
    @javax.persistence.Column(name = "AMLX0001")
    public String getAmlx0001() {
        return amlx0001;
    }

    public void setAmlx0001(String amlx0001) {
        this.amlx0001 = amlx0001;
    }

    private String amlx0002;

    @Basic
    @javax.persistence.Column(name = "AMLX0002")
    public String getAmlx0002() {
        return amlx0002;
    }

    public void setAmlx0002(String amlx0002) {
        this.amlx0002 = amlx0002;
    }

    private String amlx0003;

    @Basic
    @javax.persistence.Column(name = "AMLX0003")
    public String getAmlx0003() {
        return amlx0003;
    }

    public void setAmlx0003(String amlx0003) {
        this.amlx0003 = amlx0003;
    }

    private String amlx0004;

    @Basic
    @javax.persistence.Column(name = "AMLX0004")
    public String getAmlx0004() {
        return amlx0004;
    }

    public void setAmlx0004(String amlx0004) {
        this.amlx0004 = amlx0004;
    }

    private String amlx0005;

    @Basic
    @javax.persistence.Column(name = "AMLX0005")
    public String getAmlx0005() {
        return amlx0005;
    }

    public void setAmlx0005(String amlx0005) {
        this.amlx0005 = amlx0005;
    }

    private String amlx0006;

    @Basic
    @javax.persistence.Column(name = "AMLX0006")
    public String getAmlx0006() {
        return amlx0006;
    }

    public void setAmlx0006(String amlx0006) {
        this.amlx0006 = amlx0006;
    }

    private String amlx0007;

    @Basic
    @javax.persistence.Column(name = "AMLX0007")
    public String getAmlx0007() {
        return amlx0007;
    }

    public void setAmlx0007(String amlx0007) {
        this.amlx0007 = amlx0007;
    }

    private String amlx0008;

    @Basic
    @javax.persistence.Column(name = "AMLX0008")
    public String getAmlx0008() {
        return amlx0008;
    }

    public void setAmlx0008(String amlx0008) {
        this.amlx0008 = amlx0008;
    }

    private String amlx0009;

    @Basic
    @javax.persistence.Column(name = "AMLX0009")
    public String getAmlx0009() {
        return amlx0009;
    }

    public void setAmlx0009(String amlx0009) {
        this.amlx0009 = amlx0009;
    }

    private String amlx0010;

    @Basic
    @javax.persistence.Column(name = "AMLX0010")
    public String getAmlx0010() {
        return amlx0010;
    }

    public void setAmlx0010(String amlx0010) {
        this.amlx0010 = amlx0010;
    }

    private String cengyongming;

    @Basic
    @javax.persistence.Column(name = "CENGYONGMING")
    public String getCengyongming() {
        return cengyongming;
    }

    public void setCengyongming(String cengyongming) {
        this.cengyongming = cengyongming;
    }

    private String hanzishuxie;

    @Basic
    @javax.persistence.Column(name = "HANZISHUXIE")
    public String getHanzishuxie() {
        return hanzishuxie;
    }

    public void setHanzishuxie(String hanzishuxie) {
        this.hanzishuxie = hanzishuxie;
    }

    private String shaoshumingzushuxie;

    @Basic
    @javax.persistence.Column(name = "SHAOSHUMINGZUSHUXIE")
    public String getShaoshumingzushuxie() {
        return shaoshumingzushuxie;
    }

    public void setShaoshumingzushuxie(String shaoshumingzushuxie) {
        this.shaoshumingzushuxie = shaoshumingzushuxie;
    }

    private String hanyuputonghuaduyin;

    @Basic
    @javax.persistence.Column(name = "HANYUPUTONGHUADUYIN")
    public String getHanyuputonghuaduyin() {
        return hanyuputonghuaduyin;
    }

    public void setHanyuputonghuaduyin(String hanyuputonghuaduyin) {
        this.hanyuputonghuaduyin = hanyuputonghuaduyin;
    }

    private String dimingpuchazhuangtai;

    @Basic
    @javax.persistence.Column(name = "DIMINGPUCHAZHUANGTAI")
    public String getDimingpuchazhuangtai() {
        return dimingpuchazhuangtai;
    }

    public void setDimingpuchazhuangtai(String dimingpuchazhuangtai) {
        this.dimingpuchazhuangtai = dimingpuchazhuangtai;
    }

    private String yuantumingcheng;

    @Basic
    @javax.persistence.Column(name = "YUANTUMINGCHENG")
    public String getYuantumingcheng() {
        return yuantumingcheng;
    }

    public void setYuantumingcheng(String yuantumingcheng) {
        this.yuantumingcheng = yuantumingcheng;
    }

    private String diminglaili;

    @Basic
    @javax.persistence.Column(name = "DIMINGLAILI")
    public String getDiminglaili() {
        return diminglaili;
    }

    public void setDiminglaili(String diminglaili) {
        this.diminglaili = diminglaili;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        TPlacecommonEntity that = (TPlacecommonEntity) o;

        if (id != that.id) return false;
        if (districtId != null ? !districtId.equals(that.districtId) : that.districtId != null) return false;
        if (biaozhunmingcheng != null ? !biaozhunmingcheng.equals(that.biaozhunmingcheng) : that.biaozhunmingcheng != null)
            return false;
        if (tushangmingcheng != null ? !tushangmingcheng.equals(that.tushangmingcheng) : that.tushangmingcheng != null)
            return false;
        if (romepinxie != null ? !romepinxie.equals(that.romepinxie) : that.romepinxie != null) return false;
        if (minzuyu != null ? !minzuyu.equals(that.minzuyu) : that.minzuyu != null) return false;
        if (bieming != null ? !bieming.equals(that.bieming) : that.bieming != null) return false;
        if (jiancheng != null ? !jiancheng.equals(that.jiancheng) : that.jiancheng != null) return false;
        if (shijiandaima != null ? !shijiandaima.equals(that.shijiandaima) : that.shijiandaima != null) return false;
        if (gaocheng != null ? !gaocheng.equals(that.gaocheng) : that.gaocheng != null) return false;
        if (dongjing != null ? !dongjing.equals(that.dongjing) : that.dongjing != null) return false;
        if (zhidongjing != null ? !zhidongjing.equals(that.zhidongjing) : that.zhidongjing != null) return false;
        if (beiwei != null ? !beiwei.equals(that.beiwei) : that.beiwei != null) return false;
        if (zhibeiwei != null ? !zhibeiwei.equals(that.zhibeiwei) : that.zhibeiwei != null) return false;
        if (miji != null ? !miji.equals(that.miji) : that.miji != null) return false;
        if (hanyi != null ? !hanyi.equals(that.hanyi) : that.hanyi != null) return false;
        if (lishiyange != null ? !lishiyange.equals(that.lishiyange) : that.lishiyange != null) return false;
        if (other != null ? !other.equals(that.other) : that.other != null) return false;
        if (duomeiti != null ? !duomeiti.equals(that.duomeiti) : that.duomeiti != null) return false;
        if (biaopaigeshu != null ? !biaopaigeshu.equals(that.biaopaigeshu) : that.biaopaigeshu != null) return false;
        if (shelinianfen != null ? !shelinianfen.equals(that.shelinianfen) : that.shelinianfen != null) return false;
        if (feizhinianfen != null ? !feizhinianfen.equals(that.feizhinianfen) : that.feizhinianfen != null)
            return false;
        if (beizhu != null ? !beizhu.equals(that.beizhu) : that.beizhu != null) return false;
        if (mapid != null ? !mapid.equals(that.mapid) : that.mapid != null) return false;
        if (createdate != null ? !createdate.equals(that.createdate) : that.createdate != null) return false;
        if (modifydate != null ? !modifydate.equals(that.modifydate) : that.modifydate != null) return false;
        if (editType != null ? !editType.equals(that.editType) : that.editType != null) return false;
        if (placecode != null ? !placecode.equals(that.placecode) : that.placecode != null) return false;
        if (bilichi != null ? !bilichi.equals(that.bilichi) : that.bilichi != null) return false;
        if (tumingtuhao != null ? !tumingtuhao.equals(that.tumingtuhao) : that.tumingtuhao != null) return false;
        if (dimingduyin != null ? !dimingduyin.equals(that.dimingduyin) : that.dimingduyin != null) return false;
        if (yuzhong != null ? !yuzhong.equals(that.yuzhong) : that.yuzhong != null) return false;
        if (shifouguihua != null ? !shifouguihua.equals(that.shifouguihua) : that.shifouguihua != null) return false;
        if (guihuashijian != null ? !guihuashijian.equals(that.guihuashijian) : that.guihuashijian != null)
            return false;
        if (leibiemingcheng != null ? !leibiemingcheng.equals(that.leibiemingcheng) : that.leibiemingcheng != null)
            return false;
        if (mingmingshijian != null ? !mingmingshijian.equals(that.mingmingshijian) : that.mingmingshijian != null)
            return false;
        if (shiyongshijian != null ? !shiyongshijian.equals(that.shiyongshijian) : that.shiyongshijian != null)
            return false;
        if (zuobiaoxi != null ? !zuobiaoxi.equals(that.zuobiaoxi) : that.zuobiaoxi != null) return false;
        if (celiangfangfa != null ? !celiangfangfa.equals(that.celiangfangfa) : that.celiangfangfa != null)
            return false;
        if (ziliaolaiyuan != null ? !ziliaolaiyuan.equals(that.ziliaolaiyuan) : that.ziliaolaiyuan != null)
            return false;
        if (placecommonId != null ? !placecommonId.equals(that.placecommonId) : that.placecommonId != null)
            return false;
        if (datastate != null ? !datastate.equals(that.datastate) : that.datastate != null) return false;
        if (businessstate != null ? !businessstate.equals(that.businessstate) : that.businessstate != null)
            return false;
        if (quanzonghao != null ? !quanzonghao.equals(that.quanzonghao) : that.quanzonghao != null) return false;
        if (muluhao != null ? !muluhao.equals(that.muluhao) : that.muluhao != null) return false;
        if (fenleihao != null ? !fenleihao.equals(that.fenleihao) : that.fenleihao != null) return false;
        if (leimudaima != null ? !leimudaima.equals(that.leimudaima) : that.leimudaima != null) return false;
        if (dengjishijian != null ? !dengjishijian.equals(that.dengjishijian) : that.dengjishijian != null)
            return false;
        if (dengjiren != null ? !dengjiren.equals(that.dengjiren) : that.dengjiren != null) return false;
        if (dengjidanwei != null ? !dengjidanwei.equals(that.dengjidanwei) : that.dengjidanwei != null) return false;
        if (romepinxieTongming != null ? !romepinxieTongming.equals(that.romepinxieTongming) : that.romepinxieTongming != null)
            return false;
        if (flag != null ? !flag.equals(that.flag) : that.flag != null) return false;
        if (dilishitimiaoshu != null ? !dilishitimiaoshu.equals(that.dilishitimiaoshu) : that.dilishitimiaoshu != null)
            return false;
        if (anjuanhao != null ? !anjuanhao.equals(that.anjuanhao) : that.anjuanhao != null) return false;
        if (leimumingcheng != null ? !leimumingcheng.equals(that.leimumingcheng) : that.leimumingcheng != null)
            return false;
        if (placetype != null ? !placetype.equals(that.placetype) : that.placetype != null) return false;
        if (approveNum != null ? !approveNum.equals(that.approveNum) : that.approveNum != null) return false;
        if (isexclusive != null ? !isexclusive.equals(that.isexclusive) : that.isexclusive != null) return false;
        if (hid != null ? !hid.equals(that.hid) : that.hid != null) return false;
        if (fromPoint != null ? !fromPoint.equals(that.fromPoint) : that.fromPoint != null) return false;
        if (address != null ? !address.equals(that.address) : that.address != null) return false;
        if (mapguid != null ? !mapguid.equals(that.mapguid) : that.mapguid != null) return false;
        if (pingyin != null ? !pingyin.equals(that.pingyin) : that.pingyin != null) return false;
        if (amjx0001 != null ? !amjx0001.equals(that.amjx0001) : that.amjx0001 != null) return false;
        if (amjx0002 != null ? !amjx0002.equals(that.amjx0002) : that.amjx0002 != null) return false;
        if (amje0003 != null ? !amje0003.equals(that.amje0003) : that.amje0003 != null) return false;
        if (amje0004 != null ? !amje0004.equals(that.amje0004) : that.amje0004 != null) return false;
        if (amje0005 != null ? !amje0005.equals(that.amje0005) : that.amje0005 != null) return false;
        if (amjx0006 != null ? !amjx0006.equals(that.amjx0006) : that.amjx0006 != null) return false;
        if (amjx0007 != null ? !amjx0007.equals(that.amjx0007) : that.amjx0007 != null) return false;
        if (amjx0008 != null ? !amjx0008.equals(that.amjx0008) : that.amjx0008 != null) return false;
        if (amjx0009 != null ? !amjx0009.equals(that.amjx0009) : that.amjx0009 != null) return false;
        if (amjxooi0 != null ? !amjxooi0.equals(that.amjxooi0) : that.amjxooi0 != null) return false;
        if (amjxoOll != null ? !amjxoOll.equals(that.amjxoOll) : that.amjxoOll != null) return false;
        if (amjxooi2 != null ? !amjxooi2.equals(that.amjxooi2) : that.amjxooi2 != null) return false;
        if (amjxooi3 != null ? !amjxooi3.equals(that.amjxooi3) : that.amjxooi3 != null) return false;
        if (amjxooi4 != null ? !amjxooi4.equals(that.amjxooi4) : that.amjxooi4 != null) return false;
        if (amjxooi5 != null ? !amjxooi5.equals(that.amjxooi5) : that.amjxooi5 != null) return false;
        if (amjxooi6 != null ? !amjxooi6.equals(that.amjxooi6) : that.amjxooi6 != null) return false;
        if (amjxooi7 != null ? !amjxooi7.equals(that.amjxooi7) : that.amjxooi7 != null) return false;
        if (amjxooi8 != null ? !amjxooi8.equals(that.amjxooi8) : that.amjxooi8 != null) return false;
        if (amjxooi9 != null ? !amjxooi9.equals(that.amjxooi9) : that.amjxooi9 != null) return false;
        if (amjx0020 != null ? !amjx0020.equals(that.amjx0020) : that.amjx0020 != null) return false;
        if (amjx0021 != null ? !amjx0021.equals(that.amjx0021) : that.amjx0021 != null) return false;
        if (amjx0022 != null ? !amjx0022.equals(that.amjx0022) : that.amjx0022 != null) return false;
        if (amjx0023 != null ? !amjx0023.equals(that.amjx0023) : that.amjx0023 != null) return false;
        if (amjx0024 != null ? !amjx0024.equals(that.amjx0024) : that.amjx0024 != null) return false;
        if (amkx0001 != null ? !amkx0001.equals(that.amkx0001) : that.amkx0001 != null) return false;
        if (amlx0001 != null ? !amlx0001.equals(that.amlx0001) : that.amlx0001 != null) return false;
        if (amlx0002 != null ? !amlx0002.equals(that.amlx0002) : that.amlx0002 != null) return false;
        if (amlx0003 != null ? !amlx0003.equals(that.amlx0003) : that.amlx0003 != null) return false;
        if (amlx0004 != null ? !amlx0004.equals(that.amlx0004) : that.amlx0004 != null) return false;
        if (amlx0005 != null ? !amlx0005.equals(that.amlx0005) : that.amlx0005 != null) return false;
        if (amlx0006 != null ? !amlx0006.equals(that.amlx0006) : that.amlx0006 != null) return false;
        if (amlx0007 != null ? !amlx0007.equals(that.amlx0007) : that.amlx0007 != null) return false;
        if (amlx0008 != null ? !amlx0008.equals(that.amlx0008) : that.amlx0008 != null) return false;
        if (amlx0009 != null ? !amlx0009.equals(that.amlx0009) : that.amlx0009 != null) return false;
        if (amlx0010 != null ? !amlx0010.equals(that.amlx0010) : that.amlx0010 != null) return false;
        if (cengyongming != null ? !cengyongming.equals(that.cengyongming) : that.cengyongming != null) return false;
        if (hanzishuxie != null ? !hanzishuxie.equals(that.hanzishuxie) : that.hanzishuxie != null) return false;
        if (shaoshumingzushuxie != null ? !shaoshumingzushuxie.equals(that.shaoshumingzushuxie) : that.shaoshumingzushuxie != null)
            return false;
        if (hanyuputonghuaduyin != null ? !hanyuputonghuaduyin.equals(that.hanyuputonghuaduyin) : that.hanyuputonghuaduyin != null)
            return false;
        if (dimingpuchazhuangtai != null ? !dimingpuchazhuangtai.equals(that.dimingpuchazhuangtai) : that.dimingpuchazhuangtai != null)
            return false;
        if (yuantumingcheng != null ? !yuantumingcheng.equals(that.yuantumingcheng) : that.yuantumingcheng != null)
            return false;
        if (diminglaili != null ? !diminglaili.equals(that.diminglaili) : that.diminglaili != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = districtId != null ? districtId.hashCode() : 0;
        result = 31 * result + (biaozhunmingcheng != null ? biaozhunmingcheng.hashCode() : 0);
        result = 31 * result + (tushangmingcheng != null ? tushangmingcheng.hashCode() : 0);
        result = 31 * result + (romepinxie != null ? romepinxie.hashCode() : 0);
        result = 31 * result + (minzuyu != null ? minzuyu.hashCode() : 0);
        result = 31 * result + (bieming != null ? bieming.hashCode() : 0);
        result = 31 * result + (jiancheng != null ? jiancheng.hashCode() : 0);
        result = 31 * result + (shijiandaima != null ? shijiandaima.hashCode() : 0);
        result = 31 * result + (gaocheng != null ? gaocheng.hashCode() : 0);
        result = 31 * result + (dongjing != null ? dongjing.hashCode() : 0);
        result = 31 * result + (zhidongjing != null ? zhidongjing.hashCode() : 0);
        result = 31 * result + (beiwei != null ? beiwei.hashCode() : 0);
        result = 31 * result + (zhibeiwei != null ? zhibeiwei.hashCode() : 0);
        result = 31 * result + (miji != null ? miji.hashCode() : 0);
        result = 31 * result + (hanyi != null ? hanyi.hashCode() : 0);
        result = 31 * result + (lishiyange != null ? lishiyange.hashCode() : 0);
        result = 31 * result + (other != null ? other.hashCode() : 0);
        result = 31 * result + (duomeiti != null ? duomeiti.hashCode() : 0);
        result = 31 * result + (biaopaigeshu != null ? biaopaigeshu.hashCode() : 0);
        result = 31 * result + (shelinianfen != null ? shelinianfen.hashCode() : 0);
        result = 31 * result + (feizhinianfen != null ? feizhinianfen.hashCode() : 0);
        result = 31 * result + (beizhu != null ? beizhu.hashCode() : 0);
        result = 31 * result + (mapid != null ? mapid.hashCode() : 0);
        result = 31 * result + (createdate != null ? createdate.hashCode() : 0);
        result = 31 * result + (modifydate != null ? modifydate.hashCode() : 0);
        result = 31 * result + (editType != null ? editType.hashCode() : 0);
        result = 31 * result + (placecode != null ? placecode.hashCode() : 0);
        result = 31 * result + (bilichi != null ? bilichi.hashCode() : 0);
        result = 31 * result + (tumingtuhao != null ? tumingtuhao.hashCode() : 0);
        result = 31 * result + (dimingduyin != null ? dimingduyin.hashCode() : 0);
        result = 31 * result + (yuzhong != null ? yuzhong.hashCode() : 0);
        result = 31 * result + (shifouguihua != null ? shifouguihua.hashCode() : 0);
        result = 31 * result + (guihuashijian != null ? guihuashijian.hashCode() : 0);
        result = 31 * result + (leibiemingcheng != null ? leibiemingcheng.hashCode() : 0);
        result = 31 * result + (mingmingshijian != null ? mingmingshijian.hashCode() : 0);
        result = 31 * result + (shiyongshijian != null ? shiyongshijian.hashCode() : 0);
        result = 31 * result + (zuobiaoxi != null ? zuobiaoxi.hashCode() : 0);
        result = 31 * result + (celiangfangfa != null ? celiangfangfa.hashCode() : 0);
        result = 31 * result + (ziliaolaiyuan != null ? ziliaolaiyuan.hashCode() : 0);
        result = 31 * result + (placecommonId != null ? placecommonId.hashCode() : 0);
        result = 31 * result + (datastate != null ? datastate.hashCode() : 0);
        result = 31 * result + (businessstate != null ? businessstate.hashCode() : 0);
        result = 31 * result + (quanzonghao != null ? quanzonghao.hashCode() : 0);
        result = 31 * result + (muluhao != null ? muluhao.hashCode() : 0);
        result = 31 * result + (fenleihao != null ? fenleihao.hashCode() : 0);
        result = 31 * result + (leimudaima != null ? leimudaima.hashCode() : 0);
        result = 31 * result + (dengjishijian != null ? dengjishijian.hashCode() : 0);
        result = 31 * result + (dengjiren != null ? dengjiren.hashCode() : 0);
        result = 31 * result + (dengjidanwei != null ? dengjidanwei.hashCode() : 0);
        result = 31 * result + (romepinxieTongming != null ? romepinxieTongming.hashCode() : 0);
        result = 31 * result + (flag != null ? flag.hashCode() : 0);
        result = 31 * result + (dilishitimiaoshu != null ? dilishitimiaoshu.hashCode() : 0);
        result = 31 * result + (anjuanhao != null ? anjuanhao.hashCode() : 0);
        result = 31 * result + (leimumingcheng != null ? leimumingcheng.hashCode() : 0);
        result = 31 * result + (placetype != null ? placetype.hashCode() : 0);
        result = 31 * result + (approveNum != null ? approveNum.hashCode() : 0);
        result = 31 * result + (isexclusive != null ? isexclusive.hashCode() : 0);
        result = 31 * result + (hid != null ? hid.hashCode() : 0);
        result = 31 * result + (fromPoint != null ? fromPoint.hashCode() : 0);
        result = 31 * result + (address != null ? address.hashCode() : 0);
        result = 31 * result + (mapguid != null ? mapguid.hashCode() : 0);
        result = 31 * result + (pingyin != null ? pingyin.hashCode() : 0);
        result = 31 * result + (amjx0001 != null ? amjx0001.hashCode() : 0);
        result = 31 * result + (amjx0002 != null ? amjx0002.hashCode() : 0);
        result = 31 * result + (amje0003 != null ? amje0003.hashCode() : 0);
        result = 31 * result + (amje0004 != null ? amje0004.hashCode() : 0);
        result = 31 * result + (amje0005 != null ? amje0005.hashCode() : 0);
        result = 31 * result + (amjx0006 != null ? amjx0006.hashCode() : 0);
        result = 31 * result + (amjx0007 != null ? amjx0007.hashCode() : 0);
        result = 31 * result + (amjx0008 != null ? amjx0008.hashCode() : 0);
        result = 31 * result + (amjx0009 != null ? amjx0009.hashCode() : 0);
        result = 31 * result + (amjxooi0 != null ? amjxooi0.hashCode() : 0);
        result = 31 * result + (amjxoOll != null ? amjxoOll.hashCode() : 0);
        result = 31 * result + (amjxooi2 != null ? amjxooi2.hashCode() : 0);
        result = 31 * result + (amjxooi3 != null ? amjxooi3.hashCode() : 0);
        result = 31 * result + (amjxooi4 != null ? amjxooi4.hashCode() : 0);
        result = 31 * result + (amjxooi5 != null ? amjxooi5.hashCode() : 0);
        result = 31 * result + (amjxooi6 != null ? amjxooi6.hashCode() : 0);
        result = 31 * result + (amjxooi7 != null ? amjxooi7.hashCode() : 0);
        result = 31 * result + (amjxooi8 != null ? amjxooi8.hashCode() : 0);
        result = 31 * result + (amjxooi9 != null ? amjxooi9.hashCode() : 0);
        result = 31 * result + (amjx0020 != null ? amjx0020.hashCode() : 0);
        result = 31 * result + (amjx0021 != null ? amjx0021.hashCode() : 0);
        result = 31 * result + (amjx0022 != null ? amjx0022.hashCode() : 0);
        result = 31 * result + (amjx0023 != null ? amjx0023.hashCode() : 0);
        result = 31 * result + (amjx0024 != null ? amjx0024.hashCode() : 0);
        result = 31 * result + (amkx0001 != null ? amkx0001.hashCode() : 0);
        result = 31 * result + id;
        result = 31 * result + (amlx0001 != null ? amlx0001.hashCode() : 0);
        result = 31 * result + (amlx0002 != null ? amlx0002.hashCode() : 0);
        result = 31 * result + (amlx0003 != null ? amlx0003.hashCode() : 0);
        result = 31 * result + (amlx0004 != null ? amlx0004.hashCode() : 0);
        result = 31 * result + (amlx0005 != null ? amlx0005.hashCode() : 0);
        result = 31 * result + (amlx0006 != null ? amlx0006.hashCode() : 0);
        result = 31 * result + (amlx0007 != null ? amlx0007.hashCode() : 0);
        result = 31 * result + (amlx0008 != null ? amlx0008.hashCode() : 0);
        result = 31 * result + (amlx0009 != null ? amlx0009.hashCode() : 0);
        result = 31 * result + (amlx0010 != null ? amlx0010.hashCode() : 0);
        result = 31 * result + (cengyongming != null ? cengyongming.hashCode() : 0);
        result = 31 * result + (hanzishuxie != null ? hanzishuxie.hashCode() : 0);
        result = 31 * result + (shaoshumingzushuxie != null ? shaoshumingzushuxie.hashCode() : 0);
        result = 31 * result + (hanyuputonghuaduyin != null ? hanyuputonghuaduyin.hashCode() : 0);
        result = 31 * result + (dimingpuchazhuangtai != null ? dimingpuchazhuangtai.hashCode() : 0);
        result = 31 * result + (yuantumingcheng != null ? yuantumingcheng.hashCode() : 0);
        result = 31 * result + (diminglaili != null ? diminglaili.hashCode() : 0);
        return result;
    }
}
