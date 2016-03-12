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
	<title>民政地理空间信息服务平台-地名维护</title>
	<!-- Bootstrap -->
	<link href="<%=basepath%>/css/bootstrap/bootstrap.css" rel="stylesheet">
	<link href="<%=basepath%>/css/bootstrap/bootstrap.min.css" rel="stylesheet">
	<script src="<%=basepath%>/js/jquery/jquery-1.10.2.min.js"></script>
	<script src="<%=basepath%>/js/bootstrap/bootstrap.min.js"></script>
	<link href="<%=basepath%>/css/mystyle.css" rel="stylesheet">
</head>

<body>
<!--右上角“在此输入搜索关键字”-->
<form class="form-inline position-fixed" role="search">
	<div class="input-group">
		<div class="input-group-btn">
			<a class="dropdown-toggle" data-toggle="dropdown">
				<span class="caret caret-search"></span>
			</a>
			<ul class="dropdown-menu dropdown-menu-search">
				<div class="container dropdown-menu-container">
					<li class="row">
						<label for="standardName" class="col-xs-4 control-label">标准名称</label>
						<input class="col-xs-8 form-control" id="standardName" />
					</li>
					<li class="row">
						<label for="pinyin" class="col-xs-4 control-label">汉语拼音</label>
						<input class="col-xs-8 form-control" id="pinyin" />
					</li>
					<li class="row">
						<label for="vague" class="col-xs-8 col-xs-offset-4 control-label" style="padding: 0px;">
							<input type="checkbox" id="vague" style="height: 10px!important;width: 10px!important;" /> 模糊音
						</label>
					</li>
					<li class="row">
						<label for="administrativeDivision" class="col-xs-4 control-label">行政区划</label>
						<select class="col-xs-8 form-control" id="administrativeDivision"></select>
					</li>
					<li class="row">
						<label for="placesnameType" class="col-xs-4 control-label">地名类型</label>
						<select class="col-xs-8 form-control" id="placesnameType"></select>
					</li>
					<li class="row">
						<label for="timeCode" class="col-xs-4 control-label">时间代码</label>
						<select class="col-xs-8 form-control" id="timeCode"></select>
					</li>
					<li class="divider divider-search"></li>
					<li class="row">
						<label class="col-xs-4 control-label">登记时间</label>
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
						<button type="button" class="btn btn-info btn-sm pull-right">确定</button>
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
<!--左上角button-->
<button type="button" class="btn btn-default btn-sm pull-left btn-pull-left1">导出Excel</button>
<br />
<br />
<div class="margin-general">
	<table class="table table-striped table-hover table-bordered table-condensed">
		<thead>
		<tr>
			<th>行政区划</th>
			<th>标准名称</th>
			<th>罗马拼写</th>
			<th>地名类型</th>
			<th>登记时间</th>
			<th>操作</th>
		</tr>
		</thead>
		<tbody>
		<tr>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td>
				<a href="#" data-toggle="modal">附件</a> |
				<a href="#" data-toggle="modal">地图</a> |
				<a href="#" data-toggle="modal">查看</a> |
				<a href="#" data-toggle="modal">修改</a>
			</td>
		</tr>
		</tbody>
	</table>
</div>
</body>

</html>