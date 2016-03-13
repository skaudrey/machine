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
	<title>民政地理空间信息服务平台-批量管理</title>
	<!-- Bootstrap -->
	<link href="<%=basepath%>/css/bootstrap/bootstrap.css" rel="stylesheet">
	<link href="<%=basepath%>/css/bootstrap/bootstrap.min.css" rel="stylesheet">
	<script src="<%=basepath%>/js/jquery/jquery-1.10.2.min.js"></script>
	<script src="<%=basepath%>/js/bootstrap/bootstrap.min.js"></script>
	<link href='<%=basepath%>/css/mystyle.css' rel="stylesheet">
	<script>
		$(document).ready(function() {
			/*点击拟命名button*/
			$("#batchBtn").click(function() {
				$("#firstTh").show();
				$("#firstTd").show();
			});
		});
	</script>
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
						<label for="owner" class="col-xs-4 control-label">产权人</label>
						<input class="col-xs-8 form-control" id="owner" />
					</li>
					<li class="row">
						<label for="currentCard" class="col-xs-4 control-label">当前门牌</label>
						<input class="col-xs-8 form-control" id="currentCard" />
					</li>
					<li class="row">
						<label for="originalCard" class="col-xs-4 control-label">原门牌</label>
						<input class="col-xs-8 form-control" id="originalCard" />
					</li>
					<li class="row">
						<label for="cardNumber" class="col-xs-4 control-label">门牌证号</label>
						<input class="col-xs-8 form-control" id="cardNumber" />
					</li>
					<li class="row">
						<label for="administrativeDivision" class="col-xs-4 control-label">行政区划</label>
						<select class="col-xs-8 form-control" id="administrativeDivision"></select>
					</li>
					<li class="row">
						<label for="cardState" class="col-xs-4 control-label">门牌状态</label>
						<select class="col-xs-8 form-control" id="cardState"></select>
					</li>
					<li class="divider divider-search"></li>
					<li class="row">
						<label class="col-xs-4 control-label">制证日期</label>
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

<div class="btn-group pull-left btn-pull-left1">
	<button type="button" class="btn btn-info btn-sm" id="batchBtn">批量管理</button>
	<button type="button" class="btn btn-info btn-sm">楼幢管理</button>
	<button type="button" class="btn btn-default btn-sm">导入</button>
	<button type="button" class="btn btn-default btn-sm">导出</button>
</div>
<br />
<br />
<div class="margin-general">
	<table class="table table-striped table-hover table-bordered table-condensed">
		<thead>
		<tr>
			<th id="firstTh" style="display: none"></th>
			<th>产权人</th>
			<th>当前门牌</th>
			<th>门牌证号</th>
			<th>行政区划</th>
			<th>登记时间</th>
			<th>操作</th>
		</tr>
		</thead>
		<tbody>
		<tr>
			<td id="firstTd" style="width: 15px;display: none">
				<input type="checkbox" style="height: 10px!important;" />
			</td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td>
				<a href="#" data-toggle="modal">附件</a> |
				<a href="#" data-toggle="modal">地图</a> |
				<a href="#" data-toggle="modal">注销</a> |
				<a href="#" data-toggle="modal">打印</a>
			</td>
		</tr>
		</tbody>
	</table>
</div>
</body>

</html>