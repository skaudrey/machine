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
	<title>民政地理空间信息服务平台-受理页面</title>
	<!-- Bootstrap -->
	<link href="../css/bootstrap/bootstrap.css" rel="stylesheet">
	<link href="../css/bootstrap/bootstrap.min.css" rel="stylesheet">
	<script src="../js/jquery/jquery-1.10.2.min.js"></script>
	<script src="../js/bootstrap/bootstrap.min.js"></script>
	<link href="../css/mystyle.css" rel="stylesheet">
	<style type="text/css">
		.col-md-6 {
			padding-right: 0px;
		}

		.col-sm-9 {
			padding-left: 0px;
		}
	</style>
</head>

<body>

<ul id="stepTab" class="nav nav-tabs nav-top">
	<li class="active">
		<a href="#acceptanceStep" data-toggle="tab">受理环节</a>
	</li>
	<li>
		<a href="#certificationStep" data-toggle="tab">发证环节</a>
	</li>
</ul>

<div id="stepTabContent" class="tab-content">
	<!--受理环节-->
	<div class="tab-pane fade in active" id="acceptanceStep">
		<div class="btn-group position-fixed">
			<button type="button" class="btn btn-default btn-sm">查看附件</button>
			<button type="button" class="btn btn-default btn-sm">地图定位<span class="glyphicon glyphicon-triangle-right" style="color:#dddddd;"></span></button>
			<button type="button" class="btn btn-info btn-sm">保存</button>
			<button type="button" class="btn btn-default btn-sm">取消</button>
		</div>
		<br />
		<div class="panel-group margin-general" id="accordion">
			<div class="panel panel-info">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion" href="#dataSummary">数据概要</a>
					</h4>
				</div>
				<div id="dataSummary" class="panel-collapse collapse in">
					<div class="panel-body">
						<div class="row">
							<div class="col-sm-4">
								<label for="type" class="col-sm-3 control-label">类型</label>
								<select id="type" class="col-sm-9 form-control"></select>
							</div>
							<div class="col-sm-4">
								<label for="postCode" class="col-sm-3 control-label">邮政编码</label>
								<input type="number" class="col-sm-9 form-control" id="postCode" />
							</div>
							<div class="col-sm-4">
								<label for="postRegion" class="col-sm-3 control-label">所在政区</label>
								<select id="postRegion" class="col-sm-9 form-control"></select>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-4">
								<label for="landArea" class="col-sm-3 control-label">占地面积</label>
								<input type="text" class="col-sm-9 form-control" id="landArea" />
							</div>
							<div class="col-sm-4">
								<label for="areaCode" class="col-sm-3 control-label">电话区号</label>
								<input type="number" class="col-sm-9 form-control" id="areaCode" />
							</div>
							<div class="col-sm-4">
								<label for="approvalFrom" class="col-sm-3 control-label">业务批准</label>
								<form id="approvalFrom" class="col-sm-9 form-inline" role="form">
									第
									<input type="number" class="form-control" style="width: 50px!important;" id="approvalWord" /> 字 第
									<input type="number" class="form-control" style="width: 50px!important;" id="approvalNumber" /> 号
								</form>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-4">
								<label for="buildingArea" class="col-sm-3 control-label">建筑面积</label>
								<input type="text" class="col-sm-9 form-control" id="buildingArea" />
							</div>
							<div class="col-sm-4">
								<label for="telNumber" class="col-sm-3 control-label">联系电话</label>
								<input type="tel" class="col-sm-9 form-control" id="telNumber" />
							</div>
							<div class="col-sm-4">
								<label for="businessState" class="col-sm-3 control-label">业务状态</label>
								<input type="text" class="col-sm-9 form-control" id="businessState" />
							</div>
						</div>
						<div class="row">
							<div class="col-sm-4">
								<label for="population" class="col-sm-3 control-label">人口</label>
								<input type="text" class="col-sm-9 form-control" id="population" />
							</div>
							<div class="col-sm-4">
								<label for="size" class="col-sm-3 control-label">规模</label>
								<input type="text" class="col-sm-9 form-control" id="size" />
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="panel panel-info">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion" href="#detailData">详细数据</a>
					</h4>
				</div>
				<div id="detailData" class="panel-collapse collapse">
					<div class="panel-body">
						<div class="row">
							<div class="col-md-4">
								<label for="administrativeDivision" class="col-sm-3 control-label">行政区划</label>
								<select class="col-sm-9 form-control" id="administrativeDivision"></select>
							</div>
							<div class="col-md-4">
								<label for="languages" class="col-sm-3 control-label">语种</label>
								<select class="col-sm-9 form-control" id="languages"></select>
							</div>
							<div class="col-md-4">
								<label for="coordinates" class="col-sm-3 control-label">坐标系</label>
								<select class="col-sm-9 form-control" id="coordinates"></select>
							</div>
						</div>
						<div class="row">
							<div class="col-md-4">
								<label for="placesnameCode" class="col-sm-3 control-label">地名代码</label>
								<input type="text" class="col-sm-9 form-control" id="placesnameCode" />
							</div>
							<div class="col-md-4">
								<label for="scale" class="col-sm-3 control-label">比例尺</label>
								<select class="col-sm-9 form-control" id="scale"></select>
							</div>
							<div class="col-md-4">
								<label for="longitudeFrom" class="col-sm-3 control-label">经度</label>
								<form id="longitudeFrom" class="col-sm-9 form-inline" role="form">
									<input type="text" class="form-control form" id="longitudeMin" /> -
									<input type="text" class="form-control" id="longitudeMax" />
								</form>
							</div>
						</div>
						<div class="row">
							<div class="col-md-4">
								<label for="standardName" class="col-sm-3 control-label">标准名称</label>
								<input type="text" class="col-sm-9 form-control" id="standardName" />
							</div>
							<div class="col-md-4">
								<label for="namingTime" class="col-sm-3 control-label">命名时间</label>
								<select class="col-sm-9 form-control" id="namingTime"></select>
							</div>
							<div class="col-md-4">
								<label for="latitudeForm" class="col-sm-3 control-label">纬度</label>
								<form id="latitudeForm" class="col-sm-9 form-inline" role="form">
									<input type="text" class="form-control" id="latitudeMin" /> -
									<input type="text" class="form-control" id="latitudeMax" />
								</form>
							</div>
						</div>
						<div class="row">
							<div class="col-md-4">
								<label for="spelling" class="col-sm-3 control-label">罗马拼写</label>
								<input type="text" class="col-sm-9 form-control" id="spelling" />
							</div>
							<div class="col-md-4">
								<label for="usingTime" class="col-sm-3 control-label">使用时间</label>
								<select class="col-sm-9 form-control" id="usingTime"></select>
							</div>
							<div class="col-md-4">
								<label for="standardJudge" class="col-sm-3 control-label">是否规范</label>
								<select class="col-sm-9 form-control" id="standardJudge"></select>
							</div>
						</div>
						<div class="row">
							<div class="col-md-4">
								<label for="generalName" class="col-sm-3 control-label">标准名称通名</label>
								<input type="text" class="col-sm-9 form-control" id="generalName" />
							</div>
							<div class="col-md-4">
								<label for="dense" class="col-sm-3 control-label">密级</label>
								<select class="col-sm-9 form-control" id="dense"></select>
							</div>
							<div class="col-md-4">
								<label for="planningTime" class="col-sm-3 control-label">规划时间</label>
								<select class="col-sm-9 form-control" id="planningTime"></select>
							</div>
						</div>
						<div class="row">
							<div class="col-md-4">
								<label for="generalnameSpelling" class="col-sm-3 control-label">通名罗马拼写</label>
								<input type="text" class="col-sm-9 form-control" id="generalnameSpelling" />
							</div>
							<div class="col-md-4">
								<label for="establishedYear" class="col-sm-3 control-label">设立年份</label>
								<input type="text" class="col-sm-9 form-control" id="establishedYear" />
							</div>
							<div class="col-md-4">
								<label for="pictureCode" class="col-sm-3 control-label">图片代码</label>
								<input type="text" class="col-sm-9 form-control" id="pictureCode" />
							</div>
						</div>
						<div class="row">
							<div class="col-md-4">
								<label for="properName" class="col-sm-3 control-label">标准名称专名</label>
								<input type="text" class="col-sm-9 form-control" id="properName" />
							</div>
							<div class="col-md-4">
								<label for="abolishedYear" class="col-sm-3 control-label">废止年份</label>
								<select class="col-sm-9 form-control" id="abolishedYear"></select>
							</div>
							<div class="col-md-4">
								<label for="pictureNumber" class="col-sm-3 control-label">图名图号</label>
								<input type="text" class="col-sm-9 form-control" id="pictureNumber" />
							</div>
						</div>
						<div class="row">
							<div class="col-md-4">
								<label for="propernameSpelling" class="col-sm-3 control-label">专名罗马拼写</label>
								<input type="text" class="col-sm-9 form-control" id="propernameSpelling" />
							</div>
							<div class="col-md-4">
								<label for="pictureName" class="col-sm-3 control-label">图上名称</label>
								<input type="text" class="col-sm-9 form-control" id="pictureName" />
							</div>
							<div class="col-md-4">
								<label for="recordDate" class="col-sm-3 control-label">登记日期</label>
								<select class="col-sm-9 form-control" id="recordDate"></select>
							</div>
						</div>
						<div class="row">
							<div class="col-md-4">
								<label for="abbreviation" class="col-sm-3 control-label">简称</label>
								<input type="text" class="col-sm-9 form-control" id="abbreviation" />
							</div>
							<div class="col-md-4">
								<label for="altitude" class="col-sm-3 control-label">高程(米)</label>
								<input type="number" class="col-sm-9 form-control" id="altitude" />
							</div>
							<div class="col-md-4">
								<label for="registrantName" class="col-sm-3 control-label">登记人姓名</label>
								<input type="text" class="col-sm-9 form-control" id="registrantName" />
							</div>
						</div>
						<div class="row">
							<div class="col-md-4">
								<label for="alias" class="col-sm-3 control-label">别名</label>
								<input type="text" class="col-sm-9 form-control" id="alias" />
							</div>
							<div class="col-md-4">
								<label for="measuringMethod" class="col-sm-3 control-label">测量方法</label>
								<input type="text" class="col-sm-9 form-control" id="measuringMethod" />
							</div>
							<div class="col-md-4">
								<label for="unitName" class="col-sm-3 control-label">登记单位名称</label>
								<input type="text" class="col-sm-9 form-control" id="unitName" />
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--发证环节-->
	<div class="tab-pane fade" id="certificationStep">
		<div class="btn-group position-fixed">
			<button type="button" class="btn btn-default btn-sm">预览<span class="glyphicon glyphicon-triangle-right" style="color:#dddddd;"></span></button>
			<button type="button" class="btn btn-info btn-sm">发送</button>
			<button type="button" class="btn btn-default btn-sm">取消</button>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-sm-6">证1</div>
				<div class="col-sm-6">证2</div>
			</div>
		</div>
	</div>
</div>
</body>

</html>