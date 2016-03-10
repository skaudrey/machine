<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
  <base href="<%=basePath%>">

  <title>界线登记</title>
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
界线信息<br>
<div align="right"><input type="button" value="地图定位">
  <input type="button" value="附件浏览">
  <input type="button" value="界线登记"></div>
<table>
  <tr><td>界线编号：</td><td><input type="text" name="界线编号" style="width: 400px"/></td><td>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 界线起点：</td><td><input type="text" name="界线起点" style="width: 400px"/></td></tr>
  <tr><td>界线名称：</td><td><input type="text" name="界线名称" style="width: 400px"/></td><td>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 界线止点：</td><td><input type="text" name="界线止点" style="width: 400px"/></td></tr>
  <tr><td>界线多媒体：</td><td><input type="text" name="界线多媒体" style="width: 400px"/></td><td>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 界线变更历史记录：</td><td><input type="text" name="界线变更历史记录" style="width: 400px"/></td></tr>
  <tr><td>界桩颗数：</td><td><input type="text" name="界桩颗数" style="width: 400px"/></td><td>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 单立桩颗数：</td><td><input type="text" name="单立桩颗数" style="width: 400px"/></td></tr>
  <tr><td>双立桩颗数：</td><td><input type="text" name="双立桩颗数" style="width: 400px"/></td><td>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 三立桩颗数：</td><td><input type="text" name="三立桩颗数" style="width: 400px"/></td></tr>
  <tr><td>界线等级：</td><td><input type="text" name="界线等级" style="width: 400px"/></td><td>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 是否争议：</td><td><select name="是否争议" style="width: 400px; ">
    <option value="是" selected>是</option>
    <option value="否">否</option>
  </select></td></tr>
  <tr><td>界线长度（公里）：</td><td><input type="text" name="界线长度" style="width: 400px"/></td><td>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 登记时间：</td><td><input type="text" name="登记时间" style="width: 400px"value=<%
java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy年MM月dd日");    
java.util.Date currentTime_1 = new java.util.Date();    
out.print(formatter.format(currentTime_1));    
%>></td></tr>
  <tr><td>其他信息A：</td><td><textarea name="其他信息Ａ" rows="4" style="width: 400px; height: 75px"/></textarea></td><td>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 其他信息B：</td><td><textarea name="其他信息B" rows="4" style="width: 400px; height: 75px"/></textarea></td></tr>
  <tr><td>其他信息C：</td><td><textarea name="其他信息C" rows="4" style="width: 400px; height: 75px"/></textarea></td><td>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 其他信息D：</td><td><textarea name="其他信息D" rows="4" style="width: 400px; height: 75px"/></textarea></td></tr>
  <tr><td>其他信息E：</td><td><textarea name="其他信息E" rows="4" style="width: 400px; height: 75px"/></textarea></td><td>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 其他信息F：</td><td><textarea name="其他信息F" rows="4" style="width: 400px; height: 75px"/></textarea></td></tr>
</table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 备注：<textarea name="备注" rows="4" style="width:1000px;height:75px"/></textarea>
</body>
</html>
