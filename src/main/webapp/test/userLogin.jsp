<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/2/25 0025
  Time: 下午 5:48
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
    <title>用户登录</title>
  <!--jquery+bootstrap框架引用-->
  <link href="<%=basepath%>css/bootstrap.css" rel="stylesheet" />
  <script src="<%=basepath%>js/jquery.min.js"></script>
  <script src="<%=basepath%>js/bootstrap.min.js"></script>
</head>
<body>
  <form action="/test/userMgrAction!UserLogin" method="post">
    <div class="form-group">
      <label for="username">用户名</label>
      <input type="text" class="form-control" id="username" name="username" placeholder="用户名">
    </div>
    <div class="form-group">
      <label for="password">密码</label>
      <input type="password" class="form-control" id="password" name="password" placeholder="Password">
    </div>
    <button type="submit" class="btn btn-default">提交</button>
  </form>
</body>
</html>
