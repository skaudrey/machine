package app.sys.test.model;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.Date;

/**
 * Created by Administrator on 2016/2/28 0028.
 */
@Entity
@Table(name = "test_leave", schema = "", catalog = "activiti_test")
public class TestLeaveEntity {
    private int lid;
    private String leaveType;
    private String startTime;
    private String endTime;
    private String leaveReason;
    private String piid;
    private int uid;
    private Timestamp applyTime;
    private Timestamp realityStartTime;
    private Timestamp realityEndTime;
    private String applyName;

    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    @Column(name = "lid", nullable = false, insertable = true, updatable = true)
    public int getLid() {
        return lid;
    }

    public void setLid(int lid) {
        this.lid = lid;
    }

    @Basic
    @Column(name = "leave_type", nullable = false, insertable = true, updatable = true, length = 10)
    public String getLeaveType() {
        return leaveType;
    }

    public void setLeaveType(String leaveType) {
        this.leaveType = leaveType;
    }

    @Basic
    @Column(name = "start_time", nullable = false, insertable = true, updatable = true, length = 40)
    public String getStartTime() {
        return startTime;
    }

    public void setStartTime(String startTime) {
        this.startTime = startTime;
    }

    @Basic
    @Column(name = "end_time", nullable = false, insertable = true, updatable = true, length = 40)
    public String getEndTime() {
        return endTime;
    }

    public void setEndTime(String endTime) {
        this.endTime = endTime;
    }

    @Basic
    @Column(name = "leave_reason", nullable = false, insertable = true, updatable = true, length = 16777215)
    public String getLeaveReason() {
        return leaveReason;
    }

    public void setLeaveReason(String leaveReason) {
        this.leaveReason = leaveReason;
    }

    @Basic
    @Column(name = "piid", nullable = true, insertable = true, updatable = true, length = 64)
    public String getPiid() {
        return piid;
    }

    public void setPiid(String piid) {
        this.piid = piid;
    }

    @Basic
    @Column(name = "uid", nullable = false, insertable = true, updatable = true)
    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    @Basic
    @Column(name = "apply_time", nullable = false, insertable = true, updatable = true)
    public Timestamp getApplyTime() {
        return applyTime;
    }

    public void setApplyTime(Timestamp applyTime) {
        this.applyTime = applyTime;
    }

    @Basic
    @Column(name = "reality_start_time", nullable = true, insertable = true, updatable = true)
    public Timestamp getRealityStartTime() {
        return realityStartTime;
    }

    public void setRealityStartTime(Timestamp realityStartTime) {
        this.realityStartTime = realityStartTime;
    }

    @Basic
    @Column(name = "reality_end_time", nullable = true, insertable = true, updatable = true)
    public Timestamp getRealityEndTime() {
        return realityEndTime;
    }

    public void setRealityEndTime(Timestamp realityEndTime) {
        this.realityEndTime = realityEndTime;
    }

    @Basic
    @Column(name = "apply_name", nullable = false, insertable = true, updatable = true, length = 15)
    public String getApplyName() {
        return applyName;
    }

    public void setApplyName(String applyName) {
        this.applyName = applyName;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        TestLeaveEntity that = (TestLeaveEntity) o;

        if (lid != that.lid) return false;
        if (uid != that.uid) return false;
        if (leaveType != null ? !leaveType.equals(that.leaveType) : that.leaveType != null) return false;
        if (startTime != null ? !startTime.equals(that.startTime) : that.startTime != null) return false;
        if (endTime != null ? !endTime.equals(that.endTime) : that.endTime != null) return false;
        if (leaveReason != null ? !leaveReason.equals(that.leaveReason) : that.leaveReason != null) return false;
        if (piid != null ? !piid.equals(that.piid) : that.piid != null) return false;
        if (applyTime != null ? !applyTime.equals(that.applyTime) : that.applyTime != null) return false;
        if (realityStartTime != null ? !realityStartTime.equals(that.realityStartTime) : that.realityStartTime != null)
            return false;
        if (realityEndTime != null ? !realityEndTime.equals(that.realityEndTime) : that.realityEndTime != null)
            return false;
        if (applyName != null ? !applyName.equals(that.applyName) : that.applyName != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = lid;
        result = 31 * result + (leaveType != null ? leaveType.hashCode() : 0);
        result = 31 * result + (startTime != null ? startTime.hashCode() : 0);
        result = 31 * result + (endTime != null ? endTime.hashCode() : 0);
        result = 31 * result + (leaveReason != null ? leaveReason.hashCode() : 0);
        result = 31 * result + (piid != null ? piid.hashCode() : 0);
        result = 31 * result + uid;
        result = 31 * result + (applyTime != null ? applyTime.hashCode() : 0);
        result = 31 * result + (realityStartTime != null ? realityStartTime.hashCode() : 0);
        result = 31 * result + (realityEndTime != null ? realityEndTime.hashCode() : 0);
        result = 31 * result + (applyName != null ? applyName.hashCode() : 0);
        return result;
    }

    //下面是临时属性，用于在前台展示的，是从Activiti系统变量 Task 里面拿出来的
    //@Transient表示该属性并非一个到数据库表的字段的映射,ORM框架将忽略该属性,如果一个属性并非数据库表的字段映射,
    //就务必将其标示为@Transient,否则,ORM框架默认其注解为@Basic,用Dao保存的时候就会爆炸。

    private String taskId;
    private String pdid;
    private String taskName;
    private Date taskCreateTime;
    private String assignee;

    @Transient
    public String getAssignee() {
        return assignee;
    }

    public void setAssignee(String assignee) {
        this.assignee = assignee;
    }

    @Transient
    public String getTaskId() {
        return taskId;
    }

    public void setTaskId(String taskId) {
        this.taskId = taskId;
    }

    @Transient
    public String getPdid() {
        return pdid;
    }

    public void setPdid(String pdid) {
        this.pdid = pdid;
    }

    @Transient
    public String getTaskName() {
        return taskName;
    }

    public void setTaskName(String taskName) {
        this.taskName = taskName;
    }

    @Transient
    public Date getTaskCreateTime() {
        return taskCreateTime;
    }

    public void setTaskCreateTime(Date taskCreateTime) {
        this.taskCreateTime = taskCreateTime;
    }
}
