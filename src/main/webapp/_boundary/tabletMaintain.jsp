<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
  <base href="<%=basePath%>">

  <title>界桩维护</title>
  <meta http-equiv="pragma" content="no-cache">
  <meta http-equiv="cache-control" content="no-cache">
  <meta http-equiv="expires" content="0">
  <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
  <meta http-equiv="description" content="This is my page">
  <!--
  <link rel="stylesheet" type="text/css" href="styles.css">
  -->
  <link rel="stylesheet" href="/css/bootstrap/bootstrap.min.css">
  <script src="/js/jquery/jquery-1.10.2.min.js"></script>
  <script src="/js/bootstrap/bootstrap.min.js"></script>

</head>

<body>
<table class="table table-bordered table-hover">
  <tr>
    <th>界桩查询</th>
    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 界桩信息</td><td></td><td></td></tr>
  <tr><td>行政区划：<select name="行政区划" style="width: 200px; ">
    <option value="1" selected>1</option>
    <option value="2">2</option>
  </select></td><td>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 界桩名称</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 界桩编号</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 界线编号</td></tr>
  <tr><td>界桩编号：<input type="text" name="界桩编号" style="width: 200px"/></td></tr>
  <tr><td>界线编号：<input type="text" name="界线编号" style="width: 200px"/></td></tr>
  <tr><td>界线名称：<input type="text" name="界线名称" style="width: 200px"/></td></tr>
  <tr><td>界线位置：<input type="text" name="界线位置" style="width: 200px"/></td></tr></table>
<input type="button" value="查询" style="width: 110px; ">
<input type="button" value="导出Excel" style="width: 110px; ">
</body>
</html>
