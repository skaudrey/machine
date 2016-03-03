<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/2/25 0025
  Time: 下午 5:49
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
  <title>首页</title>
  <link href="<%=basepath%>css/bootstrap.css" rel="stylesheet" />
  <link href="<%=basepath%>css/bootstrap-datetimepicker.min.css" rel="stylesheet">
  <script src="<%=basepath%>js/jquery.min.js"></script>
  <script src="<%=basepath%>js/bootstrap-datetimepicker.min.js"></script>
  <script src="<%=basepath%>js/bootstrap.min.js"></script>
</head>
<body>
<a href="/test/leaveMgrAction!initUserData" class="btn btn-primary" >初始化用户数据</a>
<button class="btn btn-primary" data-toggle="modal" data-target="#myModal">请假（普通表单）</button>
<a href="/test/leaveMgrAction!getTaskList" class="btn btn-primary" >我的待办任务</a>
<div class="modal fade" id="myModal">
  <form action="/test/leaveMgrAction!startLeaveProcess" method="post">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          <h4 class="modal-title">请假申请</h4>
        </div>
        <div class="modal-body">
          <table class="table table-hover table-bordered">
            <tr>
              <td>请假类型：</td>
              <td>
                <select class="form-control" id="leaveType" name="leaveType">
                  <option value="公休">公休</option>
                  <option value="病假">病假</option>
                  <option value="调休">调休</option>
                  <option value="事假">事假</option>
                  <option value="婚假">婚假</option>
                </select>
              </td>
            </tr>
            <tr>
              <td>开始时间：</td>
              <td><input type="text" class="form-control" id="startTime" name="startTime" /></td>
            </tr>
            <tr>
              <td>结束时间：</td>
              <td><input type="text" class="form-control" id="endTime" name="endTime" /></td>
            </tr>
            <tr>
              <td>请假原因：</td>
              <td>
                <textarea class="form-control" name="leaveReason"></textarea>
              </td>
            </tr>
          </table>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
          <button type="submit" class="btn btn-primary">提交申请</button>
        </div>
      </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
  </form>
</div>
</body>
<script type="text/javascript">
  $('#startTime,#endTime').datetimepicker({
    format:'yyyy-mm-dd hh:ii',
    weekStart: 1,
    todayBtn:  1,
    autoclose: 1,
    todayHighlight: 1,
    startView: 2,
    forceParse: 0,
    showMeridian: 1
  });
</script>
</html>
