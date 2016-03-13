<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Skaudrey
  Date: 2016/3/8
  Time: 10:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String path = request.getContextPath();
  String basepath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
  <link rel="stylesheet" href="<%=basepath%>css/bootstrap/bootstrap.css">
  <script src="<%=basepath%>js/bootstrap/bootstrap.min.js"></script>
  <script type="text/javascript" src="<%=basepath%>js/jquery.min.js"></script>
  <script src="<%=basepath%>js/jquery/jquery-1.10.2.min.js"></script>
</head>
<body>
<div class="container">
<div class="panel">
  <div class="panel-body">
    <div class="panel-group">
      <table class="table">
        <caption><h4>材料信息</h4></caption>
        <thead>
        <tr>
          <th>
            <button type="button" class="btn btn-primary btn-sm" data-toggle="modal"
                    data-target="#addMaterialModal">
              <span class="glyphicon glyphicon-plus-sign"></span>添加材料
            </button>
            <%--<a class='button button-primary' data-toggle="modal"  href='#' data-target="#addMaterialModal">
              <span class="glyphicon glyphicon-plus-sign"></span>
            </a>--%>
          </th>
          <th>材料名</th>
          <th>可交复印件</th>
          <th>份数</th>
        </tr>
        </thead>
        <tbody id="materialList"></tbody>
      </table>
    </div>
    <div class="panel-group">
      <button type="button" class="btn btn-primary" name="deleteMat" id="deleteMat">删除</button>
      <button type="button" class="btn btn-primary" name="deleteMat" id="submitEditMat">提交修改</button>
    </div>
    </div>
  </div>
  <div class="modal" id="addMaterialModal" role="dialog" ><%--Warning!!!modal必须放在container里面，不然不会弹出--%>
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
          <h4 class="modal-title"></h4>
        </div>
        <div class="modal-body">
          <div class="form-group">
            <label for="mat_typeId">材料类型</label>
            <select id="mat_typeId">
              <option value="1">身份证</option>
              <option value="2">房产证</option>
              <option value="-1">新增</option>
            </select>
          </div>
          <div class="form-group" id="newMatTypeDiv" style="display: none">
            <label for="newMatType">材料类型</label>
            <input type="text" class="form-control" id="newMatType" >
            <button class="button btn btn-primary" onclick="addNewType('newMatType','mat_typeId')">确定</button>
          </div>
          <div class="form-group">
            <label for="mat_isCopy">是否交原件</label>
            <select id="mat_isCopy">
              <option value="1">是</option>
              <option value="0">否</option>
            </select>
          </div>
          <div class="form-group">
            <label for="mat_amount">份数</label>
            <input type="text" id="mat_amount" class="form-control" value="1"/>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default"
                  data-dismiss="modal">返回
          </button>
          <button type="button" class="btn btn-primary"  data-dismiss="modal" onclick="saveMats()">
            确定
          </button>
        </div>
      </div><!-- /.modal-content -->
    </div><!-- /.modal -->
  </div>
</div>


</body>
</html>
