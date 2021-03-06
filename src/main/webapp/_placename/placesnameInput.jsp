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
	<title>民政地理空间信息服务平台-导入导出</title>
	<!-- Bootstrap -->
	<link href="<%=basepath%>/css/bootstrap/bootstrap.css" rel="stylesheet">
	<link href="<%=basepath%>/css/bootstrap/bootstrap.min.css" rel="stylesheet">
	<script src="<%=basepath%>/js/jquery/jquery-1.10.2.min.js"></script>
	<script src="<%=basepath%>/js/bootstrap/bootstrap.min.js"></script>
	<link href="<%=basepath%>/css/mystyle.css" rel="stylesheet">
</head>

<body>

<ul id="inputTab" class="nav nav-tabs nav-top">
	<li class="active">
		<a href="#localInput" data-toggle="tab">导入本系统</a>
	</li>
	<li>
		<a href="#baseInput" data-toggle="tab">导入国家库</a>
	</li>
</ul>

<div id="inputTabContent" class="tab-content">
	<!--导入本系统-->
	<div class="tab-pane fade in active" id="localInput">
		<!--右上角button组-->
		<div class="btn-group position-fixed">
			<button type="button" class="btn btn-info btn-sm">导入</button>
			<button type="button" class="btn btn-default btn-sm">导出</button>
		</div>
		<br />
		<div class="margin-general">
			<form class="form-inline" style="margin-left: 15px;">
				<label for="tableName1">表名</label>
				<select id="tableName1" class="form-control" style="margin-left: 5px;"></select>
			</form>
			<br />
			<label style="margin-left: 15px;color: #5bc0de;">导入结果</label>
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
						<a href="/_tianditu/tianditu.jsp" data-toggle="modal">地图</a> |
						<a href="/_placename/placesnameEntering.jsp" data-toggle="modal">查看</a>
					</td>
				</tr>
				</tbody>
			</table>
		</div>
	</div>
	<!--导入国家库-->
	<div class="tab-pane fade" id="baseInput">
		<!--右上角button组-->
		<div class="btn-group position-fixed">
			<button type="button" class="btn btn-info btn-sm">导入</button>
			<button type="button" class="btn btn-default btn-sm">导出</button>
		</div>
		<br />
		<div class="margin-general">
			<form class="form-inline col-sm-4">
				<label for="tableName">表名</label>
				<select id="tableName" class="form-control" style="margin-left: 5px;"></select>
			</form>
			<form class="form-inline col-sm-offset-4">
				<label for="repeatManage">重复处理方式</label>
				<select id="repeatManage" class="form-control" style="margin-left: 5px;"></select>
			</form>
			<br />
			<label style="margin-left: 15px;color: #5bc0de;">导入结果</label>
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
						<a href="/_tianditu/tianditu.jsp" data-toggle="modal">地图</a> |
						<a href="/_placename/placesnameEntering.jsp" data-toggle="modal">查看</a>
					</td>
				</tr>
				</tbody>
			</table>
		</div>
	</div>
</div>
</body>

</html>