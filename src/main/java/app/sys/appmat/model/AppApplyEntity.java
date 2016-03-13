package app.sys.appmat.model;

import javax.persistence.*;

/**
 * Created by Skaudrey on 2016/3/12.
 */
@Entity
@javax.persistence.Table(name = "app_apply", schema = "", catalog = "toponymy")
public class AppApplyEntity {
    private int appId;

    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    @javax.persistence.Column(name = "app_ID", nullable = false, insertable = true, updatable = true)
    public int getAppId() {
        return appId;
    }

    public void setAppId(int appId) {
        this.appId = appId;
    }

    private String aplSerialno;

    @Basic
    @javax.persistence.Column(name = "apl_serialno", nullable = false, insertable = true, updatable = true, length = 20)
    public String getAplSerialno() {
        return aplSerialno;
    }

    public void setAplSerialno(String aplSerialno) {
        this.aplSerialno = aplSerialno;
    }

    private String aplAcceptuser;

    @Basic
    @javax.persistence.Column(name = "apl_acceptuser", nullable = false, insertable = true, updatable = true, length = 20)
    public String getAplAcceptuser() {
        return aplAcceptuser;
    }

    public void setAplAcceptuser(String aplAcceptuser) {
        this.aplAcceptuser = aplAcceptuser;
    }

    private String aplAcceptbusi;

    @Basic
    @javax.persistence.Column(name = "apl_acceptbusi", nullable = false, insertable = true, updatable = true, length = 20)
    public String getAplAcceptbusi() {
        return aplAcceptbusi;
    }

    public void setAplAcceptbusi(String aplAcceptbusi) {
        this.aplAcceptbusi = aplAcceptbusi;
    }

    private String aplAcceptdate;

    @Basic
    @javax.persistence.Column(name = "apl_acceptdate", nullable = false, insertable = true, updatable = true, length = 20)
    public String getAplAcceptdate() {
        return aplAcceptdate;
    }

    public void setAplAcceptdate(String aplAcceptdate) {
        this.aplAcceptdate = aplAcceptdate;
    }

    private String aplComplflag;

    @Basic
    @javax.persistence.Column(name = "apl_complflag", nullable = false, insertable = true, updatable = true, length = 20)
    public String getAplComplflag() {
        return aplComplflag;
    }

    public void setAplComplflag(String aplComplflag) {
        this.aplComplflag = aplComplflag;
    }

    private String aplStateid;

    @Basic
    @javax.persistence.Column(name = "apl_stateid", nullable = false, insertable = true, updatable = true, length = 20)
    public String getAplStateid() {
        return aplStateid;
    }

    public void setAplStateid(String aplStateid) {
        this.aplStateid = aplStateid;
    }

    private String aplFinishdate;

    @Basic
    @javax.persistence.Column(name = "apl_finishdate", nullable = false, insertable = true, updatable = true, length = 20)
    public String getAplFinishdate() {
        return aplFinishdate;
    }

    public void setAplFinishdate(String aplFinishdate) {
        this.aplFinishdate = aplFinishdate;
    }

    private String aplFlowlogid;

    @Basic
    @javax.persistence.Column(name = "apl_flowlogid", nullable = false, insertable = true, updatable = true, length = 20)
    public String getAplFlowlogid() {
        return aplFlowlogid;
    }

    public void setAplFlowlogid(String aplFlowlogid) {
        this.aplFlowlogid = aplFlowlogid;
    }

    private String aplRmk;

    @Basic
    @javax.persistence.Column(name = "apl_rmk", nullable = false, insertable = true, updatable = true, length = 20)
    public String getAplRmk() {
        return aplRmk;
    }

    public void setAplRmk(String aplRmk) {
        this.aplRmk = aplRmk;
    }

    private String aplSender;

    @Basic
    @javax.persistence.Column(name = "apl_sender", nullable = false, insertable = true, updatable = true, length = 20)
    public String getAplSender() {
        return aplSender;
    }

    public void setAplSender(String aplSender) {
        this.aplSender = aplSender;
    }

    private String aplSenderidnum;

    @Basic
    @javax.persistence.Column(name = "apl_senderidnum", nullable = false, insertable = true, updatable = true, length = 20)
    public String getAplSenderidnum() {
        return aplSenderidnum;
    }

    public void setAplSenderidnum(String aplSenderidnum) {
        this.aplSenderidnum = aplSenderidnum;
    }

    private String aplSenderphone;

    @Basic
    @javax.persistence.Column(name = "apl_senderphone", nullable = false, insertable = true, updatable = true, length = 20)
    public String getAplSenderphone() {
        return aplSenderphone;
    }

    public void setAplSenderphone(String aplSenderphone) {
        this.aplSenderphone = aplSenderphone;
    }

    private String aplResttime;

    @Basic
    @javax.persistence.Column(name = "apl_resttime", nullable = false, insertable = true, updatable = true, length = 20)
    public String getAplResttime() {
        return aplResttime;
    }

    public void setAplResttime(String aplResttime) {
        this.aplResttime = aplResttime;
    }

    private String aplFlowid;

    @Basic
    @javax.persistence.Column(name = "apl_flowid", nullable = false, insertable = true, updatable = true, length = 20)
    public String getAplFlowid() {
        return aplFlowid;
    }

    public void setAplFlowid(String aplFlowid) {
        this.aplFlowid = aplFlowid;
    }

    private String aplRealtyid1;

    @Basic
    @javax.persistence.Column(name = "apl_realtyid1", nullable = false, insertable = true, updatable = true, length = 20)
    public String getAplRealtyid1() {
        return aplRealtyid1;
    }

    public void setAplRealtyid1(String aplRealtyid1) {
        this.aplRealtyid1 = aplRealtyid1;
    }

    private String aplRealtyid2;

    @Basic
    @javax.persistence.Column(name = "apl_realtyid2", nullable = false, insertable = true, updatable = true, length = 20)
    public String getAplRealtyid2() {
        return aplRealtyid2;
    }

    public void setAplRealtyid2(String aplRealtyid2) {
        this.aplRealtyid2 = aplRealtyid2;
    }

    private String aplRealtyloc;

    @Basic
    @javax.persistence.Column(name = "apl_realtyloc", nullable = false, insertable = true, updatable = true, length = 20)
    public String getAplRealtyloc() {
        return aplRealtyloc;
    }

    public void setAplRealtyloc(String aplRealtyloc) {
        this.aplRealtyloc = aplRealtyloc;
    }

    private String aplIscharge;

    @Basic
    @javax.persistence.Column(name = "apl_ischarge", nullable = false, insertable = true, updatable = true, length = 20)
    public String getAplIscharge() {
        return aplIscharge;
    }

    public void setAplIscharge(String aplIscharge) {
        this.aplIscharge = aplIscharge;
    }

    private String aplEnddate;

    @Basic
    @javax.persistence.Column(name = "apl_enddate", nullable = false, insertable = true, updatable = true, length = 20)
    public String getAplEnddate() {
        return aplEnddate;
    }

    public void setAplEnddate(String aplEnddate) {
        this.aplEnddate = aplEnddate;
    }

    private String aplEndcheck;

    @Basic
    @javax.persistence.Column(name = "apl_endcheck", nullable = false, insertable = true, updatable = true, length = 20)
    public String getAplEndcheck() {
        return aplEndcheck;
    }

    public void setAplEndcheck(String aplEndcheck) {
        this.aplEndcheck = aplEndcheck;
    }

    private String aplDistrictCode;

    @Basic
    @javax.persistence.Column(name = "apl_districtCode", nullable = false, insertable = true, updatable = true, length = 20)
    public String getAplDistrictCode() {
        return aplDistrictCode;
    }

    public void setAplDistrictCode(String aplDistrictCode) {
        this.aplDistrictCode = aplDistrictCode;
    }

    private String aplDisid;

    @Basic
    @javax.persistence.Column(name = "apl_disid", nullable = false, insertable = true, updatable = true, length = 20)
    public String getAplDisid() {
        return aplDisid;
    }

    public void setAplDisid(String aplDisid) {
        this.aplDisid = aplDisid;
    }

    private String aplStartdate;

    @Basic
    @javax.persistence.Column(name = "apl_startdate", nullable = false, insertable = true, updatable = true, length = 20)
    public String getAplStartdate() {
        return aplStartdate;
    }

    public void setAplStartdate(String aplStartdate) {
        this.aplStartdate = aplStartdate;
    }

    private String aplOldflag;

    @Basic
    @javax.persistence.Column(name = "apl_oldflag", nullable = false, insertable = true, updatable = true, length = 20)
    public String getAplOldflag() {
        return aplOldflag;
    }

    public void setAplOldflag(String aplOldflag) {
        this.aplOldflag = aplOldflag;
    }

    private String procInstId;

    @Basic
    @javax.persistence.Column(name = "PROC_INST_ID_", nullable = false, insertable = true, updatable = true, length = 20)
    public String getProcInstId() {
        return procInstId;
    }

    public void setProcInstId(String procInstId) {
        this.procInstId = procInstId;
    }

    private Integer btId;

    @Basic
    @javax.persistence.Column(name = "btID", nullable = true, insertable = true, updatable = true)
    public Integer getBtId() {
        return btId;
    }

    public void setBtId(Integer btId) {
        this.btId = btId;
    }

    private String fileId;

    @Basic
    @javax.persistence.Column(name = "fileID", nullable = true, insertable = true, updatable = true, length = 20)
    public String getFileId() {
        return fileId;
    }

    public void setFileId(String fileId) {
        this.fileId = fileId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        AppApplyEntity that = (AppApplyEntity) o;

        if (appId != that.appId) return false;
        if (aplSerialno != null ? !aplSerialno.equals(that.aplSerialno) : that.aplSerialno != null) return false;
        if (aplAcceptuser != null ? !aplAcceptuser.equals(that.aplAcceptuser) : that.aplAcceptuser != null)
            return false;
        if (aplAcceptbusi != null ? !aplAcceptbusi.equals(that.aplAcceptbusi) : that.aplAcceptbusi != null)
            return false;
        if (aplAcceptdate != null ? !aplAcceptdate.equals(that.aplAcceptdate) : that.aplAcceptdate != null)
            return false;
        if (aplComplflag != null ? !aplComplflag.equals(that.aplComplflag) : that.aplComplflag != null) return false;
        if (aplStateid != null ? !aplStateid.equals(that.aplStateid) : that.aplStateid != null) return false;
        if (aplFinishdate != null ? !aplFinishdate.equals(that.aplFinishdate) : that.aplFinishdate != null)
            return false;
        if (aplFlowlogid != null ? !aplFlowlogid.equals(that.aplFlowlogid) : that.aplFlowlogid != null) return false;
        if (aplRmk != null ? !aplRmk.equals(that.aplRmk) : that.aplRmk != null) return false;
        if (aplSender != null ? !aplSender.equals(that.aplSender) : that.aplSender != null) return false;
        if (aplSenderidnum != null ? !aplSenderidnum.equals(that.aplSenderidnum) : that.aplSenderidnum != null)
            return false;
        if (aplSenderphone != null ? !aplSenderphone.equals(that.aplSenderphone) : that.aplSenderphone != null)
            return false;
        if (aplResttime != null ? !aplResttime.equals(that.aplResttime) : that.aplResttime != null) return false;
        if (aplFlowid != null ? !aplFlowid.equals(that.aplFlowid) : that.aplFlowid != null) return false;
        if (aplRealtyid1 != null ? !aplRealtyid1.equals(that.aplRealtyid1) : that.aplRealtyid1 != null) return false;
        if (aplRealtyid2 != null ? !aplRealtyid2.equals(that.aplRealtyid2) : that.aplRealtyid2 != null) return false;
        if (aplRealtyloc != null ? !aplRealtyloc.equals(that.aplRealtyloc) : that.aplRealtyloc != null) return false;
        if (aplIscharge != null ? !aplIscharge.equals(that.aplIscharge) : that.aplIscharge != null) return false;
        if (aplEnddate != null ? !aplEnddate.equals(that.aplEnddate) : that.aplEnddate != null) return false;
        if (aplEndcheck != null ? !aplEndcheck.equals(that.aplEndcheck) : that.aplEndcheck != null) return false;
        if (aplDistrictCode != null ? !aplDistrictCode.equals(that.aplDistrictCode) : that.aplDistrictCode != null)
            return false;
        if (aplDisid != null ? !aplDisid.equals(that.aplDisid) : that.aplDisid != null) return false;
        if (aplStartdate != null ? !aplStartdate.equals(that.aplStartdate) : that.aplStartdate != null) return false;
        if (aplOldflag != null ? !aplOldflag.equals(that.aplOldflag) : that.aplOldflag != null) return false;
        if (procInstId != null ? !procInstId.equals(that.procInstId) : that.procInstId != null) return false;
        if (btId != null ? !btId.equals(that.btId) : that.btId != null) return false;
        if (fileId != null ? !fileId.equals(that.fileId) : that.fileId != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = appId;
        result = 31 * result + (aplSerialno != null ? aplSerialno.hashCode() : 0);
        result = 31 * result + (aplAcceptuser != null ? aplAcceptuser.hashCode() : 0);
        result = 31 * result + (aplAcceptbusi != null ? aplAcceptbusi.hashCode() : 0);
        result = 31 * result + (aplAcceptdate != null ? aplAcceptdate.hashCode() : 0);
        result = 31 * result + (aplComplflag != null ? aplComplflag.hashCode() : 0);
        result = 31 * result + (aplStateid != null ? aplStateid.hashCode() : 0);
        result = 31 * result + (aplFinishdate != null ? aplFinishdate.hashCode() : 0);
        result = 31 * result + (aplFlowlogid != null ? aplFlowlogid.hashCode() : 0);
        result = 31 * result + (aplRmk != null ? aplRmk.hashCode() : 0);
        result = 31 * result + (aplSender != null ? aplSender.hashCode() : 0);
        result = 31 * result + (aplSenderidnum != null ? aplSenderidnum.hashCode() : 0);
        result = 31 * result + (aplSenderphone != null ? aplSenderphone.hashCode() : 0);
        result = 31 * result + (aplResttime != null ? aplResttime.hashCode() : 0);
        result = 31 * result + (aplFlowid != null ? aplFlowid.hashCode() : 0);
        result = 31 * result + (aplRealtyid1 != null ? aplRealtyid1.hashCode() : 0);
        result = 31 * result + (aplRealtyid2 != null ? aplRealtyid2.hashCode() : 0);
        result = 31 * result + (aplRealtyloc != null ? aplRealtyloc.hashCode() : 0);
        result = 31 * result + (aplIscharge != null ? aplIscharge.hashCode() : 0);
        result = 31 * result + (aplEnddate != null ? aplEnddate.hashCode() : 0);
        result = 31 * result + (aplEndcheck != null ? aplEndcheck.hashCode() : 0);
        result = 31 * result + (aplDistrictCode != null ? aplDistrictCode.hashCode() : 0);
        result = 31 * result + (aplDisid != null ? aplDisid.hashCode() : 0);
        result = 31 * result + (aplStartdate != null ? aplStartdate.hashCode() : 0);
        result = 31 * result + (aplOldflag != null ? aplOldflag.hashCode() : 0);
        result = 31 * result + (procInstId != null ? procInstId.hashCode() : 0);
        result = 31 * result + (btId != null ? btId.hashCode() : 0);
        result = 31 * result + (fileId != null ? fileId.hashCode() : 0);
        return result;
    }
}
