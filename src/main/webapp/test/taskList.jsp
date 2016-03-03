<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/2/27 0027
  Time: 下午 10:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
  String path = request.getContextPath();
  String basepath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
  <title>待办任务</title>
  <link href="<%=basepath%>css/bootstrap.css" rel="stylesheet" />
  <link href="<%=basepath%>css/bootstrap-datetimepicker.min.css" rel="stylesheet">
  <script src="<%=basepath%>js/jquery.min.js"></script>
  <script src="<%=basepath%>js/bootstrap-datetimepicker.min.js"></script>
  <script src="<%=basepath%>js/bootstrap.min.js"></script>
</head>
<body>
<div class="table-area">
  <table class="table table-bordered table-hover">
    <thead>
      <tr>
        <th>申请人</th>
        <th>类型</th>
        <th>请假时间</th>
        <th>请假原因</th>
        <th>任务ID</th>
        <th>任务名称</th>
        <th>流程实例ID</th>
        <th>流程定义ID</th>
        <th>任务创建时间</th>
        <th>操作</th>
      </tr>
    </thead>
    <tbody>
    <s:iterator value="results" id="obj">
      <s:url var="claimUrl" action="leaveMgrAction!claimTask" namespace="/test">
        <s:param name="taskId" value="#obj.taskId"/>
      </s:url>
      <s:url var="getTaskViewUrl" action="leaveMgrAction!showTaskView" namespace="/test">
        <s:param name="taskId" value="#obj.taskId"/>
      </s:url>
      <tr>
        <td><s:property value="#obj.applyName"/></td>
        <td><s:property value="#obj.leaveType"/></td>
        <td><s:property value="#obj.startTime"/>至<s:property value="#obj.endTime"/></td>
        <td><s:property value="#obj.leaveReason"/></td>
        <td><s:property value="#obj.taskId"/></td>
        <td><s:property value="#obj.taskName"/></td>
        <td><s:property value="#obj.piid"/></td>
        <td><s:property value="#obj.pdid"/></td>
        <td><s:date name="#obj.taskCreateTime" format="yyyy-MM-dd HH:mm"/></td>
        <td>
          <s:if test="#obj.assignee==#session.userID"> <%--如果任务的owner 等于 登录的用户的Id，说明用户已经签收了这个任务，显示办理按钮--%>
            <s:a href="%{getTaskViewUrl}" cssClass="btn btn-primary">办理</s:a>
          </s:if>
          <s:else>
            <s:a href="%{claimUrl}" cssClass="btn btn-primary">签收</s:a>
          </s:else>
        </td>
      </tr>
    </s:iterator>
    </tbody>
  </table>
</div>
</body>
</html>
