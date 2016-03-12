package app.sys.toponymyMgr.model;

import javax.persistence.*;
import java.sql.Timestamp;

/**
 * Created by Administrator on 2016/3/12 0012.
 */
@Entity
@Table(name = "test_place_name_apply", schema = "", catalog = "toponymy")
public class TestPlaceNameApplyEntity {
    private int id;
    private String placeName;
    private String description;
    private String piid;
    private Timestamp applyTime;
    private String uid;
    private String userName;

    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    @Column(name = "id", nullable = false, insertable = true, updatable = true)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "place_name", nullable = false, insertable = true, updatable = true, length = 30)
    public String getPlaceName() {
        return placeName;
    }

    public void setPlaceName(String placeName) {
        this.placeName = placeName;
    }

    @Basic
    @Column(name = "description", nullable = false, insertable = true, updatable = true, length = 16777215)
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
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
    @Column(name = "apply_time", nullable = false, insertable = true, updatable = true)
    public Timestamp getApplyTime() {
        return applyTime;
    }

    public void setApplyTime(Timestamp applyTime) {
        this.applyTime = applyTime;
    }

    @Basic
    @Column(name = "uid", nullable = false, insertable = true, updatable = true, length = 20)
    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    @Basic
    @Column(name = "user_name", nullable = false, insertable = true, updatable = true, length = 20)
    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        TestPlaceNameApplyEntity that = (TestPlaceNameApplyEntity) o;

        if (id != that.id) return false;
        if (placeName != null ? !placeName.equals(that.placeName) : that.placeName != null) return false;
        if (description != null ? !description.equals(that.description) : that.description != null) return false;
        if (piid != null ? !piid.equals(that.piid) : that.piid != null) return false;
        if (applyTime != null ? !applyTime.equals(that.applyTime) : that.applyTime != null) return false;
        if (uid != null ? !uid.equals(that.uid) : that.uid != null) return false;
        if (userName != null ? !userName.equals(that.userName) : that.userName != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (placeName != null ? placeName.hashCode() : 0);
        result = 31 * result + (description != null ? description.hashCode() : 0);
        result = 31 * result + (piid != null ? piid.hashCode() : 0);
        result = 31 * result + (applyTime != null ? applyTime.hashCode() : 0);
        result = 31 * result + (uid != null ? uid.hashCode() : 0);
        result = 31 * result + (userName != null ? userName.hashCode() : 0);
        return result;
    }

    private String flowName; //流程名称
    private String currentNode;//当前节点
    private String taskName;//任务名称
    private String assignee;//任务所属人
    private String taskId;//任务Id

    @Transient
    public String getFlowName() {
        return flowName;
    }

    public void setFlowName(String flowName) {
        this.flowName = flowName;
    }

    @Transient
    public String getCurrentNode() {
        return currentNode;
    }

    public void setCurrentNode(String currentNode) {
        this.currentNode = currentNode;
    }

    @Transient
    public String getTaskName() {
        return taskName;
    }

    public void setTaskName(String taskName) {
        this.taskName = taskName;
    }

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
}
