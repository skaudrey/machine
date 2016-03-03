<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/2/28 0028
  Time: 下午 5:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
  String path = request.getContextPath();
  String basepath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
  <title>人事审批</title>
  <link href="<%=basepath%>css/bootstrap.css" rel="stylesheet" />
  <link href="<%=basepath%>css/bootstrap-datetimepicker.min.css" rel="stylesheet">
  <script src="<%=basepath%>js/jquery.min.js"></script>
  <script src="<%=basepath%>js/bootstrap.min.js"></script>
</head>
<body>
<div class="row">
  <div class="col-md-6 col-md-offset-3">
    <form action="/test/leaveMgrAction!finishTask" method="post">
      <input type="hidden" name="taskId" value="<s:property value='testLeaveEntity.taskId'/>"/>
      <div class="form-group">
        <label>申请人:<s:property value="testLeaveEntity.applyName"/></label>
      </div>
      <div class="form-group">
        <label>申请时间:<s:date name="testLeaveEntity.applyTime" format="yyyy-MM-dd HH:mm"/></label>
      </div>
      <div class="form-group">
        <label>请假类型:<s:property value="testLeaveEntity.leaveType"/></label>
      </div>
      <div class="form-group">
        <label>开始时间:<s:property value="testLeaveEntity.startTime"/></label>
      </div>
      <div class="form-group">
        <label>结束时间:<s:property value="testLeaveEntity.endTime"/></label>
      </div>
      <div class="form-group">
        <label>请假原因:<s:property value="testLeaveEntity.leaveReason"/></label>
      </div>
      <div class="form-group">
        <label for="p_b_deptLeaderApproved">审批意见:</label>
        <select name="p_b_deptLeaderApproved" class="form-control" id="p_b_deptLeaderApproved">
          <option value="1">同意</option>
          <option value="0">拒绝</option>
        </select>
      </div>
      <button class="btn btn-primary" type="submit">完成审批</button>
    </form>
  </div>
</body>
</html>
