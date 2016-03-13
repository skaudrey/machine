<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
  String path = request.getContextPath();
  String basepath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <title>单位信息填写</title>
  <link href="<%=basepath%>/css/bootstrap/bootstrap.min.css" rel="stylesheet">
  <script src="<%=basepath%>/js/jquery/jquery-1.10.2.min.js"></script>
  <script src="<%=basepath%>/js/bootstrap/bootstrap.min.js"></script>
  <link href="<%=basepath%>/css/mystyle.css" rel="stylesheet">
    <style>
        .divide-20{
            height: 20px;
            width: 100%;
        }
    </style>
</head>
<body>
  <div class="container-fluid">
      <div class="row">
          <div class="col-md-4">
              <input type="text" class="form-control" placeholder="地名代码">
          </div>
          <div class="col-md-4">
              <input type="text" class="form-control" placeholder="单位组织机构代码">
          </div>
          <div class="col-md-4">
              <input type="text" class="form-control" placeholder="单位代码">
          </div>
      </div>
      <div class="divide-20"></div>
      <div class="row">
          <div class="col-md-4">
              <input type="text" class="form-control" placeholder="单位名称">
          </div>
          <div class="col-md-4">
              <input type="text" class="form-control" placeholder="单位性质代码">
          </div>
          <div class="col-md-4">
              <input type="text" class="form-control" placeholder="单位主管部门名称">
          </div>
      </div>
      <div class="divide-20"></div>
      <div class="row">
          <div class="col-md-4">
              <input type="text" class="form-control" placeholder="类型">
          </div>
          <div class="col-md-4">
              <input type="text" class="form-control" placeholder="所属行业">
          </div>
          <div class="col-md-4">
              <input type="text" class="form-control" placeholder="单位通信地址描述">
          </div>
      </div>
      <div class="divide-20"></div>
      <div class="row">
          <div class="col-md-4">
              <input type="text" class="form-control" placeholder="法人代表">
          </div>
          <div class="col-md-4">
              <input type="text" class="form-control" placeholder="电话区号">
          </div>
          <div class="col-md-4">
              <input type="text" class="form-control" placeholder="单位联系电话号码">
          </div>
      </div>
      <div class="divide-20"></div>
      <div class="row">
          <div class="col-md-4">
              <input type="text" class="form-control" placeholder="单位邮政编码">
          </div>
          <div class="col-md-4">
              <input type="text" class="form-control" placeholder="业务范围">
          </div>
          <div class="col-md-4">
              <input type="text" class="form-control" placeholder="单位编制人数">
          </div>
      </div>
      <div class="divide-20"></div>
      <div class="row">
          <div class="col-md-4">
              <input type="text" class="form-control" placeholder="单位现有人数">
          </div>
          <div class="col-md-4">
              <input type="text" class="form-control" placeholder="单位网址">
          </div>
          <div class="col-md-4">
              <input type="text" class="form-control" placeholder="网络门牌">
          </div>
      </div>
      <div class="divide-20"></div>
      <div class="row">
          <div class="col-md-4">
              <input type="text" class="form-control" placeholder="单位建立日期">
          </div>
          <div class="col-md-4">
              <input type="text" class="form-control" placeholder="单位负责人公民身份号码">
          </div>
          <div class="col-md-4">
              <input type="text" class="form-control" placeholder="单位所属业">
          </div>
      </div>
      <div class="divide-20"></div>
      <div class="row">
          <div class="col-md-4">
              <input type="text" class="form-control" placeholder="单位所属业务类别代码">
          </div>

      </div>
      <div class="divide-20"></div>
      <div class="row">
          <div class="col-sm-6">
              <button type="button" class="btn btn-info btn-block" data-toggle="modal" data-target="#myModal">确定</button>
          </div>
         <div class="col-sm-6">
             <button type="button" class="btn btn-default btn-block" onclick="window.location.href='placesnameEntering.jsp'">返回</button>
         </div>

      </div>
  </div>
  <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
      <div class="modal-dialog" role="document">
          <div class="modal-content">
              <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                  <h4 class="modal-title" id="myModalLabel">导入结果</h4>
              </div>
              <div class="modal-body">
                  导入成功！
              </div>
              <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
              </div>
          </div>
      </div>
  </div>
</body>
</html>
