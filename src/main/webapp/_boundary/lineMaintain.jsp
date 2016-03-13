<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
  String path = request.getContextPath();
  String basepath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
  <base href="<%=basepath%>">

  <title>界线维护</title>
  <meta http-equiv="pragma" content="no-cache">
  <meta http-equiv="cache-control" content="no-cache">
  <meta http-equiv="expires" content="0">
  <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
  <meta http-equiv="description" content="This is my page">
  <!--
  <link rel="stylesheet" type="text/css" href="styles.css">
  -->
  <link rel="stylesheet" href="<%=basepath%>/css/bootstrap/bootstrap.min.css">
  <script src="<%=basepath%>/js/jquery/jquery-1.10.2.min.js"></script>
  <script src="<%=basepath%>/js/bootstrap/bootstrap.min.js"></script>
</head>

<body>
<table>
  <tr><td>界线查询</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 界线信息</td><td></td><td></td></tr>
  <tr><td>行政区划：<select name="行政区划" style="width: 200px; ">
    <option value="1" selected>1</option>
    <option value="2">2</option>
  </select></td><td>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 界线名称</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 界线编号</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 界线等级</td></tr>
  <tr><td>界线编号：<input type="text" name="界线编号" style="width: 200px"/></td></tr>
  <tr><td>界线名称：<input type="text" name="界线名称" style="width: 200px"/></td></tr>
  <tr><td>界线等级：<select name="界线等级" style="width: 200px; ">
    <option value="1" selected>1</option>
    <option value="2">2</option>
  </select></td></tr>
  <tr><td>界线长度：<input type="text" name="界线长度" style="width: 200px"/></td></tr></table>
<input type="button" value="查询" style="width: 110px; ">
<input type="button" value="导出Excel" style="width: 110px; ">
</body>
</html>
