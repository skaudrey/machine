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
	<title>民政地理空间信息服务平台-业务办理</title>
	<!-- Bootstrap -->
	<link href="../css/bootstrap/bootstrap.css" rel="stylesheet">
	<link href="../css/bootstrap/bootstrap.min.css" rel="stylesheet">
	<script src="../js/jquery/jquery-1.10.2.min.js"></script>
	<script src="../js/bootstrap/bootstrap.min.js"></script>
	<link href="../css/mystyle.css" rel="stylesheet">
</head>

<body>

<ul id="businessTab" class="nav nav-tabs nav-top">
	<li class="active">
		<a href="#unfinishedList" data-toggle="tab">在办业务列表</a>
	</li>
	<li>
		<a href="#finishedList" data-toggle="tab">完结业务列表</a>
	</li>
</ul>

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
						<label for="projectName" class="col-xs-4 control-label">项目名称</label>
						<input class="col-xs-8 form-control" id="projectName" />
					</li>
					<li class="row">
						<label for="officeholder" class="col-xs-4 control-label">受理人员</label>
						<input class="col-xs-8 form-control" id="officeholder" />
					</li>
					<li class="row">
						<label for="administrativeDivision" class="col-xs-4 control-label">行政区划</label>
						<select class="col-xs-8 form-control" id="administrativeDivision"></select>
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

<div id="businessTabContent" class="tab-content">
	<a class="btn btn-primary" href="/toponymy/toponymyMgrAction!initUserData">初始化用户数据</a>
	<!--在办业务列表-->
	<div class="tab-pane fade in active" id="unfinishedList">
		<br />
		<div class="margin-general">
			<table class="table table-striped table-hover table-bordered table-condensed">
				<thead>
				<tr>
					<th>项目编号</th>
					<th>项目名称</th>
					<th>申请人</th>
					<th>申请时间</th>
					<th>申请地名</th>
					<th>操作</th>
				</tr>
				</thead>
				<tbody>
				<s:iterator value="results" id="obj">
					<s:url var="claimUrl" action="toponymyMgrAction!claimTask" namespace="/toponymy">
						<s:param name="taskId" value="#obj.taskId"/>
					</s:url>
					<s:url var="getTaskViewUrl" action="toponymyMgrAction!showTaskView" namespace="/toponymy">
						<s:param name="taskId" value="#obj.taskId"/>
					</s:url>
					<tr>
						<td><s:property value="#obj.piid"/></td>
						<td><s:property value="#obj.flowName"/></td>
						<td><s:property value="#obj.userName"/></td>
						<td><s:date name="#obj.applyTime" format="yyyy-MM-dd HH:mm"/></td>
						<td><s:property value="#obj.placeName"/></td>
						<td>
							<%--<a href="#" data-toggle="modal">附件</a> |
							<a href="/_business/businessAccepted.jsp" >受理</a> |
							<a href="#" data-toggle="modal">更名</a> |
							<a href="#" data-toggle="modal">删除</a>--%>
							<s:if test="#obj.assignee==#session.userID"> <%--如果任务的owner 等于 登录的用户的Id，说明用户已经签收了这个任务，显示办理按钮--%>
								<s:a href="%{getTaskViewUrl}" cssClass="btn btn-primary">办理</s:a>
							</s:if>
							<s:else>
								<s:a href="%{claimUrl}" cssClass="btn btn-primary">签收</s:a>
							</s:else>
						</td>
					</tr>
				</s:iterator>
				</tbody>
			</table>
		</div>
	</div>
	<!--完结业务列表-->
	<div class="tab-pane fade" id="finishedList">
		<br />
		<div class="margin-general">
			<table class="table table-striped table-hover table-bordered table-condensed">
				<thead>
				<tr>
					<th>项目编号</th>
					<th>项目名称</th>
					<th>项目状态</th>
					<th>受理人员</th>
					<th>受理时间</th>
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
						<a href="#" data-toggle="modal">上报</a> |
						<a href="#" data-toggle="modal">删除</a>
					</td>
				</tr>
				</tbody>
			</table>
		</div>
	</div>
</div>
</body>

</html>