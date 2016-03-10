<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
  <base href="<%=basePath%>">

  <title>界桩登记</title>

  <meta http-equiv="pragma" content="no-cache">
  <meta http-equiv="cache-control" content="no-cache">
  <meta http-equiv="expires" content="0">
  <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
  <meta http-equiv="description" content="This is my page">
  <!--
  <link rel="stylesheet" type="text/css" href="styles.css">
   -->
  <link rel="stylesheet" href="/css/bootstrap/bootstrap.min.css">
    <link rel="stylesheet" href="/css/boundary/mystyle.css">
    <script type="text/javascript" src="/js/jquery/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="/js/bootstrap/bootstrap.min.js"></script>

</head>

<body>
界桩信息<br>
<div align="right"><input type="button" class="btn btn-info btn-sm" value="地图定位">
  <input type="button" value="附件浏览">
  <input type="button" value="界桩登记"></div>
<table>
  <tr><td>界桩编号：</td><td><input type="text" name="界桩编号" style="width: 250px"/></td><td>
    界桩名称：</td><td><input type="text" name="界桩名称" style="width: 250px"/></td><td>
    界桩位置：</td><td><input type="text" name="界桩位置" style="width: 250px"/></td></tr>
  <tr><td>界线编号：</td><td><select name="界线编号" style="width: 250px; ">
    <option value="1" selected>1</option>
    <option value="2">2</option>
  </select></td><td>
    界桩类型：</td><td><input type="text" name="界桩类型" style="width: 250px"/></td><td>
    界桩材质：</td><td><input type="text" name="界桩材质" style="width: 250px"/></td></tr>
  <tr><td>高程：</td><td><input type="text" name="高程" style="width: 250px"/></td><td>
    经度：</td><td><input type="text" name="经度" style="width: 250px"/></td><td>
    纬度：</td><td><input type="text" name="纬度" style="width: 250px"/></td></tr>
  <tr><td>横坐标：</td><td><input type="text" name="横坐标" style="width: 250px"/></td><td>
    纵坐标：</td><td><input type="text" name="纵坐标" style="width: 250px"/></td><td>
    登记时间：</td><td><input type="text" name="登记时间" style="width: 250px"value=<%    
java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy年MM月dd日");    
java.util.Date currentTime_1 = new java.util.Date();    
out.print(formatter.format(currentTime_1));    
%>></td></tr>
  <tr><td>所在地1：</td><td><input type="text" name="所在地1" style="width: 250px"/></td><td>
    所在地2：</td><td><input type="text" name="所在地2" style="width: 250px"/></td><td>
    所在地3：</td><td><input type="text" name="所在地3" style="width: 250px"/></td></tr>
  <tr><td>A方技术人员：</td><td><input type="text" name="A方技术人员" style="width: 250px"/></td><td>
    A方勘界班人员：</td><td><input type="text" name="A方勘界班人员" style="width: 250px"/></td><td>
    A方签字时间：</td><td><input type="text" name="A方签字时间" style="width: 250px"/></td></tr>
  <tr><td>B方技术人员：</td><td><input type="text" name="B方技术人员" style="width: 250px"/></td><td>
    B方勘界班人员：</td><td><input type="text" name="B方勘界班人员" style="width: 250px"/></td><td>
    B方签字时间：</td><td><input type="text" name="B方签字时间" style="width: 250px"/></td></tr>
  <tr><td>C方技术人员：</td><td><input type="text" name="C方技术人员" style="width: 250px"/></td><td>
    Ｃ方勘界班人员：</td><td><input type="text" name="Ｃ方勘界班人员" style="width: 250px"/></td><td>
    Ｃ方签字时间：</td><td><input type="text" name="Ｃ方签字时间" style="width: 250px"/></td></tr>
  <tr><td>１号方位物名称：</td><td><input type="text" name="１号方位物名称" style="width: 250px"/></td><td>
    １号方位物磁方位角：</td><td><input type="text" name="１号方位物磁方位角" style="width: 250px"/></td><td>
    １号方位物距离：</td><td><input type="text" name="１号方位物距离" style="width: 250px"/></td></tr>
  <tr><td>２号方位物名称：</td><td><input type="text" name="２号方位物名称" style="width: 250px"/></td><td>
    ２号方位物磁方位角：</td><td><input type="text" name="２号方位物磁方位角" style="width: 250px"/></td><td>
    ２号方位物距离：</td><td><input type="text" name="２号方位物距离" style="width: 250px"/></td></tr>
  <tr><td>３号方位物名称：</td><td><input type="text" name="３号方位物名称" style="width: 250px"/></td><td>
    ３号方位物磁方位角：</td><td><input type="text" name="３号方位物磁方位角" style="width: 250px"/></td><td>
    ３号方位物距离：</td><td><input type="text" name="３号方位物距离" style="width: 250px"/></td></tr>
  <tr><td>其他信息Ａ：</td><td><textarea name="其他信息Ａ" rows="2" style="width: 250px; height: 50px"/></textarea></td><td>
    其他信息Ｂ：</td><td><textarea name="其他信息B" rows="2" style="width: 250px; height: 50px"/></textarea></td><td>
    其他信息Ｃ：</td><td><textarea name="其他信息C" rows="2" style="width: 250px; height: 50px"/></textarea></td></tr>
  <tr><td>其他信息Ｄ：</td><td><textarea name="其他信息D" rows="2" style="width: 250px; height: 50px"/></textarea></td><td>
    其他信息Ｅ：</td><td><textarea name="其他信息E" rows="2" style="width: 250px; height: 50px"/></textarea></td><td>
    其他信息Ｆ：</td><td><textarea name="其他信息F" rows="2" style="width: 250px; height: 50px"/></textarea></td></tr>
</table>
变更历史记录：<textarea name="变更历史记录" rows="4" style="width: 500px; height: 75px"/></textarea>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 备注：<textarea name="备注" rows="4" style="width: 500px; height: 75px"/></textarea>
</body>
</html>