<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
  String path = request.getContextPath();
  String basepath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8">
  <title>民政地理空间信息服务平台-地名初审</title>
  <!-- Bootstrap -->
  <!--<link href="../css/bootstrap.css" rel="stylesheet">-->
  <link href="../css/bootstrap/bootstrap.min.css" rel="stylesheet">
  <script src="../js/jquery/jquery-1.10.2.min.js"></script>
  <script src="../js/bootstrap/bootstrap.min.js"></script>
  <link href="../css/mystyle.css" rel="stylesheet">

  <script>
    $(document).ready(function() {
      /*点击拟命名button*/
      $("#planName").click(function() {
        $("#right").animate({
          left: "400px"
        }, "slow");
        $("#left").animate({
          left: "0px"
        }, "slow");
        $("#switchBtn").show();
      });
      $("#switchBtn").click(function() {
        if ($("#left").css('left') == '0px') {
          $("#right").animate({
            left: "0px"
          }, "slow");
          $("#left").animate({
            left: "-400px"
          }, "slow");
        } else {
          $("#right").animate({
            left: "400px"
          }, "slow");
          $("#left").animate({
            left: "0px"
          }, "slow");
        }
      });
    });
  </script>

</head>

<body>
<div id="left" style="position: relative;left: -400px;width:400px;float:left;">
  <h4 class="pull-left title-pull-left">拟命名</h4>
  <br />
  <br />
  <div class="myDiv">
    <div class="row">
      <label for="administrativeDivision" class="col-sm-4 control-label">行政区划</label>
      <select class="col-sm-8 form-control" id="administrativeDivision"></select>
    </div>
    <div class="row">
      <label for="placesnameType" class="col-sm-4 control-label">地名类型</label>
      <select class="col-sm-8 form-control" id="placesnameType"></select>
    </div>
    <div class="row">
      <label for="placesnameCode" class="col-sm-4 control-label">地名代码</label>
      <form class="col-sm-8 form-inline" id="placesnameCode" style="padding: 0px;">
        <input type="text" class="col-sm-4 form-control" id="placesnameCode1" style="width: 70px!important;margin-right: 5px!important;" />
        <input type="text" class="col-sm-4 form-control" id="placesnameCode2" style="width: 70px!important;margin-right: 5px!important;" />
        <input type="text" class="col-sm-4 form-control" id="placesnameCode3" style="width: 70px!important;" />
      </form>
    </div>
    <div class="row">
      <label for="standardName" class="col-sm-4 control-label">标准名称</label>
      <input type="text" class="col-sm-8 form-control" id="standardName" />
    </div>
    <div class="row">
      <label for="spelling" class="col-sm-4 control-label">罗马拼写</label>
      <input type="text" class="col-sm-8 form-control" id="spelling" />
    </div>
    <div class="row">
      <label for="pinyin" class="col-sm-4 control-label">汉语拼音</label>
      <input type="text" class="col-sm-8 form-control" id="pinyin" />
    </div>
    <div class="row">
      <label for="vague" class="col-xs-8 col-xs-offset-4 control-label" style="padding: 0px;">
        <input type="checkbox" id="vague" style="height: 10px!important;width: 10px!important;" /> 模糊音
      </label>
    </div>
    <div class="btn-group col-xs-offset-4">
      <button type="button" class="btn btn-info btn-sm" onclick="window.location.href='placeNames.jsp'">命名</button>
      <button type="button" class="btn btn-default btn-sm">取消</button>
    </div>
    <div class="row">
      <label for="sameName" class="col-xs-8 control-label">
        <input type="checkbox" id="sameName" style="height: 10px!important;width: 10px!important;" /> 显示重名
      </label>
    </div>
    <table class="table table-striped table-hover table-bordered table-condensed">
      <thead>
      <tr>
        <th>标准名称</th>
        <th>罗马拼写</th>
        <th>行政区划</th>
        <th>地名类型</th>
      </tr>
      </thead>
      <tbody>
      <tr>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      </tbody>
    </table>
    <button class="btn btn-switch" id="switchBtn"><span class=" glyphicon glyphicon-menu-hamburger"></span></button>
  </div>
</div>

<div id="right" style="left: 0px;right: 0px;position: absolute;">
  <h4 class="pull-left title-pull-left">已受理地名</h4>
  <br />
  <br />

  <div class="btn-group pull-left btn-pull-left2">
    <button type="button" class="btn btn-default btn-sm" id="planName">拟命名</button>
    <button type="button" class="btn btn-default btn-sm">修改</button>
    <button type="button" class="btn btn-default btn-sm">删除</button>
  </div>

  <!--右上角“在此输入搜索关键字”-->
  <form class="form-inline pull-right" role="search" style="margin-right: 15px;">
    <div class="input-group">
      <div class="input-group-btn">
        <a class="dropdown-toggle" data-toggle="dropdown">
          <span class="caret caret-search"></span>
        </a>
        <ul class="dropdown-menu dropdown-menu-search">
          <div class="container dropdown-menu-container">
            <li class="row">
              <label for="projectName" class="col-xs-4 control-label">项目名称</label>
              <input class="col-xs-8 form-control" id="projectName" />
            </li>
            <li class="row">
              <label for="officeholder" class="col-xs-4 control-label">受理人员</label>
              <input class="col-xs-8 form-control" id="officeholder" />
            </li>
            <li class="row">
              <label for="administrativeDivision1" class="col-xs-4 control-label">行政区划</label>
              <select class="col-xs-8 form-control" id="administrativeDivision1"></select>
            </li>
            <li class="divider divider-search"></li>
            <li class="row">
              <label class="col-xs-4 control-label">受理时间</label>
            </li>
            <li class="row">
              <label for="startTime" class="col-xs-4 control-label">起始时间</label>
              <select class="col-xs-8 form-control" id="startTime"></select>
            </li>
            <li class="row">
              <label for="endTime" class="col-xs-4 control-label">终止时间</label>
              <select class="col-xs-8 form-control" id="endTime"></select>
            </li>
            <li class="divider divider-search"></li>
            <li>
              <div class="btn-group btn-group-search">
                <button type="button" class="btn btn-info btn-sm">确定</button>
                <button type="button" class="btn btn-default btn-sm">清空</button>
              </div>
            </li>
          </div>
        </ul>
      </div>
      <div class="searchContainer">
        <input type="text" class="form-control" placeholder="在此输入搜索关键字" />
        <button type="submit" class="btn btn-default">
          <span class="glyphicon glyphicon-search"></span>
        </button>
      </div>
    </div>
  </form>
  <br />
  <br />

  <div style="margin-left: 15px;margin-right: 15px;">
    <table class="table table-striped table-hover table-bordered table-condensed">
      <thead>
      <tr>
        <th>项目编号</th>
        <th>项目名称</th>
        <th>项目状态</th>
        <th>受理人员</th>
        <th>受理时间</th>
      </tr>
      </thead>
      <tbody>
      <tr>
        <td>表格单元格</td>
        <td>表格单元格</td>
        <td>表格单元格</td>
        <td>表格单元格</td>
        <td>表格单元格</td>
      </tr>
      <tr>
        <td>表格单元格</td>
        <td>表格单元格</td>
        <td>表格单元格</td>
        <td>表格单元格</td>
        <td>表格单元格</td>
      </tr>
      <tr>
        <td>表格单元格</td>
        <td>表格单元格</td>
        <td>表格单元格</td>
        <td>表格单元格</td>
        <td>表格单元格</td>
      </tr>
      <tr>
        <td>表格单元格</td>
        <td>表格单元格</td>
        <td>表格单元格</td>
        <td>表格单元格</td>
        <td>表格单元格</td>
      </tr>
      <tr>
        <td>表格单元格</td>
        <td>表格单元格</td>
        <td>表格单元格</td>
        <td>表格单元格</td>
        <td>表格单元格</td>
      </tr>
      </tbody>
    </table>
  </div>
</div>
</body>

</html>