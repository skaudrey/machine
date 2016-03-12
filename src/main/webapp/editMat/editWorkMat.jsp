<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Skaudrey
  Date: 2016/3/7
  Time: 16:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String path = request.getContextPath();
  String basepath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<html>
<head>
    <title>修改业务所需收件</title>
  <link rel="stylesheet" href="<%=basepath%>css/bootstrap/bootstrap.css">
  <script src="<%=basepath%>js/bootstrap/bootstrap.min.js"></script>
  <script src="<%=basepath%>js/jquery.min.js"></script>
  <script src="<%=basepath%>js/appMat/appMat.js"></script>
  <script src="<%=basepath%>js/jquery/jquery-1.10.2.min.js"></script>
</head>
<body>
<div class="container">
  <div class="panel">
    <div class="panel-heading">
      <h3 class="text-center">部门业务管理</h3>
    </div>
    <div class="panel-body">
      <div class="col-xg-3">
        <ul class="list-inline">
          <li>
            <div class="form-group">
              <label for="depart">部门</label>

              <select id="depart">
                <%--<option value="0">民政局</option>
                <option value="1">房管局</option>--%>
                  <option value="-1">--请选择--</option>
                  <s:iterator value="#request.userDept"  id="obj">
                    <option value ="<s:property value='#obj[0]'/>" ><s:property value="#obj[1]"/></option>
                  </s:iterator>
              </select>
            </div>
          </li>
          <li>
            <div class="form-group">
              <label for="work">业务</label>
              <select id="work"></select>
            </div>
          </li>
          <li>
            <button type="button" class="btn btn-info btn-lg" data-toggle="modal"
                    data-target="#addWorkModal">
              <span class="glyphicon glyphicon-plus-sign"></span> 新建业务
            </button>
          </li>
        </ul>
      </div>
      <div class="col-xs-7">
        <%--具体业务对应的材料--%>
        <jsp:include page="/editMat/material.jsp"></jsp:include>
      </div>
    </div>
  </div>

  <div class="modal" id="addWorkModal" role="dialog" ><%--Warning!!!modal必须放在container里面，不然不会弹出--%>
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
          <h4 class="modal-title"></h4>
        </div>
        <div class="modal-body">
          <div class="form-group" id="newWorkTypeDiv" >
            <label for="newWorkType">业务类型</label>
            <input type="text" class="form-control" id="newWorkType" >
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default"
                  data-dismiss="modal">返回
          </button>
          <button type="button" class="btn btn-primary"  data-dismiss="modal" onclick="refreshMatTable('newWorkType','app_type','depart')">
            确定
          </button>
        </div>
      </div><!-- /.modal-content -->
    </div><!-- /.modal -->
  </div>

</div><%--END container--%>
</body>
</html>
