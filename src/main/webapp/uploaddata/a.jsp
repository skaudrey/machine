<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2016/2/26
  Time: 17:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String path = request.getContextPath();
  String basepath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link href="<%=basepath%>/css/bootstrap/bootstrap.css" rel="stylesheet"/>
  <script src="<%=basepath%>/js/jquery/jquery-1.10.2.min.js"></script>
  <script src="<%=basepath%>/js/bootstrap/bootstrap.min.js"></script>
  <title>上传</title>
  <style>
    .divide-30{
      height: 30px;
      width: 100%;
    }
  </style>
</head>
<body>
  <div class="divide-30"></div>
<!-- enctype 属性只为 multipart/form-data-->
<s:form width="100%" action="/txtfileupload" method="post" enctype="multipart/form-data">

  <div class="form-group container">
    <label class="col-md-3 control-label" for="doc">选择上传文件</label>
    <div class="col-md-3"><input type="file" name="doc" id="doc" label="选择上传文件（*.txt）"/></div>
    <div style="clear: both"></div>
      <div class="divide-30"></div>
    <div class="col-md-3 col-md-offset-1">
      <button class="btn btn-default" type="submit">&nbsp;上传&nbsp;</button>
    </div>
  </div>
</s:form>
</body>
</html>
