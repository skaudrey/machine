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
	<title>民政地理空间信息服务平台-地名命名</title>
	<!-- Bootstrap -->
	<!--<link href="../css/bootstrap/bootstrap.css" rel="stylesheet">-->
	<link href="../css/bootstrap/bootstrap.min.css" rel="stylesheet">
	<script src="../js/jquery/jquery-1.10.2.min.js"></script>
	<script src="../js/bootstrap/bootstrap.min.js"></script>
	<link href="../css/mystyle.css" rel="stylesheet">

	<style type="text/css">
		.col-md-6{
			padding-right: 0px;
		}
		.col-sm-8 {
			padding: 0px;
		}
	</style>
</head>
<body>

<h4 class="pull-left title-pull-left">地名命名</h4>
<form action="/toponymy/toponymyMgrAction" method="post">
	<!--右上角button组-->
	<div class="btn-group position-fixed">
		<button type="submit" class="btn btn-info btn-sm">申请</button>
		<button type="button" class="btn btn-default btn-sm" onclick="window.location.href='placefirstCheck.jsp'">取消</button>
	</div>
	<br />
	<br />
	<div class="panel-group" id="accordion" style="margin-top: 5px;margin-left: 15px;margin-right: 15px;">
		<div class="panel panel-info">
			<div class="panel-heading">
				<h4 class="panel-title">
					<a data-toggle="collapse" data-parent="#accordion" href="#basicInformation">基本信息</a>
				</h4>
			</div>
			<div id="basicInformation" class="panel-collapse collapse in">
				<div class="panel-body">
					<div class="row">
						<div class="col-md-4">
							<label for="administrativeDivision" class="col-sm-4 control-label">行政区划</label>
							<select class="col-sm-8 form-control" id="administrativeDivision"></select>
						</div>
						<div class="col-md-4">
							<label for="languages" class="col-sm-4 control-label">语种</label>
							<select class="col-sm-8 form-control" id="languages"></select>
						</div>
						<div class="col-md-4">
							<label for="coordinates" class="col-sm-4 control-label">坐标系</label>
							<select class="col-sm-8 form-control" id="coordinates"></select>
						</div>
					</div>
					<div class="row">
						<div class="col-md-4">
							<label for="placesnameCode" class="col-sm-4 control-label">地名代码</label>
							<input type="text" class="col-sm-8 form-control" id="placesnameCode" />
						</div>
						<div class="col-md-4">
							<label for="scale" class="col-sm-4 control-label">比例尺</label>
							<select class="col-sm-8 form-control" id="scale"></select>
						</div>
						<div class="col-md-4">
							<label for="longitudeFrom" class="col-sm-4 control-label">经度</label>
							<form id="longitudeFrom" class="col-sm-8 form-inline" role="form">
								<input type="text" class="form-control form" id="longitudeMin" /> -
								<input type="text" class="form-control" id="longitudeMax" />
							</form>
						</div>
					</div>
					<div class="row">
						<div class="col-md-4">
							<label for="standardName" class="col-sm-4 control-label">标准名称</label>
							<input type="text" class="col-sm-8 form-control" id="standardName" />
						</div>
						<div class="col-md-4">
							<label for="namingTime" class="col-sm-4 control-label">命名时间</label>
							<select class="col-sm-8 form-control" id="namingTime"></select>
						</div>
						<div class="col-md-4">
							<label for="latitudeForm" class="col-sm-4 control-label">纬度</label>
							<form id="latitudeForm" class="col-sm-8 form-inline" role="form">
								<input type="text" class="form-control" id="latitudeMin" /> -
								<input type="text" class="form-control" id="latitudeMax" />
							</form>
						</div>
					</div>
					<div class="row">
						<div class="col-md-4">
							<label for="spelling" class="col-sm-4 control-label">罗马拼写</label>
							<input type="text" class="col-sm-8 form-control" id="spelling" />
						</div>
						<div class="col-md-4">
							<label for="usingTime" class="col-sm-4 control-label">使用时间</label>
							<select class="col-sm-8 form-control" id="usingTime"></select>
						</div>
						<div class="col-md-4">
							<label for="standardJudge" class="col-sm-4 control-label">是否规范</label>
							<select class="col-sm-8 form-control" id="standardJudge"></select>
						</div>
					</div>
					<div class="row">
						<div class="col-md-4">
							<label for="generalName" class="col-sm-4 control-label">标准名称通名</label>
							<input type="text" class="col-sm-8 form-control" id="generalName" />
						</div>
						<div class="col-md-4">
							<label for="dense" class="col-sm-4 control-label">密级</label>
							<select class="col-sm-8 form-control" id="dense"></select>
						</div>
						<div class="col-md-4">
							<label for="planningTime" class="col-sm-4 control-label">规划时间</label>
							<select class="col-sm-8 form-control" id="planningTime"></select>
						</div>
					</div>
					<div class="row">
						<div class="col-md-4">
							<label for="generalnameSpelling" class="col-sm-4 control-label">通名罗马拼写</label>
							<input type="text" class="col-sm-8 form-control" id="generalnameSpelling" />
						</div>
						<div class="col-md-4">
							<label for="establishedYear" class="col-sm-4 control-label">设立年份</label>
							<input type="text" class="col-sm-8 form-control" id="establishedYear" />
						</div>
						<div class="col-md-4">
							<label for="pictureCode" class="col-sm-4 control-label">图片代码</label>
							<input type="text" class="col-sm-8 form-control" id="pictureCode" />
						</div>
					</div>
					<div class="row">
						<div class="col-md-4">
							<label for="properName" class="col-sm-4 control-label">标准名称专名</label>
							<input type="text" class="col-sm-8 form-control" id="properName" />
						</div>
						<div class="col-md-4">
							<label for="abolishedYear" class="col-sm-4 control-label">废止年份</label>
							<select class="col-sm-8 form-control" id="abolishedYear"></select>
						</div>
						<div class="col-md-4">
							<label for="pictureNumber" class="col-sm-4 control-label">图名图号</label>
							<input type="text" class="col-sm-8 form-control" id="pictureNumber" />
						</div>
					</div>
					<div class="row">
						<div class="col-md-4">
							<label for="propernameSpelling" class="col-sm-4 control-label">专名罗马拼写</label>
							<input type="text" class="col-sm-8 form-control" id="propernameSpelling" />
						</div>
						<div class="col-md-4">
							<label for="pictureName" class="col-sm-4 control-label">图上名称</label>
							<input type="text" class="col-sm-8 form-control" id="pictureName" />
						</div>
						<div class="col-md-4">
							<label for="recordDate" class="col-sm-4 control-label">登记日期</label>
							<select class="col-sm-8 form-control" id="recordDate"></select>
						</div>
					</div>
					<div class="row">
						<div class="col-md-4">
							<%--<label for="abbreviation" class="col-sm-4 control-label">简称</label>
                            <input type="text" class="col-sm-8 form-control" id="abbreviation" />--%>
							<label for="placeName" class="col-sm-4 control-label">名称</label>
							<input type="text" class="col-sm-8 form-control" id="placeName" name="placeName" />
						</div>
						<div class="col-md-4">
							<label for="altitude" class="col-sm-4 control-label">高程(米)</label>
							<input type="number" class="col-sm-8 form-control" id="altitude" />
						</div>
						<div class="col-md-4">
							<label for="registrantName" class="col-sm-4 control-label">登记人姓名</label>
							<input type="text" class="col-sm-8 form-control" id="registrantName" />
						</div>
					</div>
					<div class="row">
						<div class="col-md-4">
							<label for="alias" class="col-sm-4 control-label">别名</label>
							<input type="text" class="col-sm-8 form-control" id="alias" />
						</div>
						<div class="col-md-4">
							<label for="measuringMethod" class="col-sm-4 control-label">测量方法</label>
							<input type="text" class="col-sm-8 form-control" id="measuringMethod" />
						</div>
						<div class="col-md-4">
							<label for="unitName" class="col-sm-4 control-label">登记单位名称</label>
							<input type="text" class="col-sm-8 form-control" id="unitName" />
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<%--<label for="placesnameDescription" class="col-sm-4 control-label" style="padding-left:15px;width: 21%;">地名含义描述</label>
                            <div class="col-sm-8" style="width: 79%;padding-right: 5px;">
                                <textarea class="form-control" id="placesnameDescription"></textarea>
                            </div>--%>
							<label for="placesnameDescription" class="col-sm-4 control-label" style="padding-left:15px;width: 21%;">地名含义描述</label>
							<div class="col-sm-8" style="width: 79%;padding-right: 5px;">
								<textarea class="form-control" id="placesnameDescription" name="description"></textarea>
							</div>
						</div>
						<div class="col-md-6">
							<label for="historyDescription" class="col-sm-4 control-label" style="padding-left:15px;width: 21%;">历史沿革描述</label>
							<div class="col-sm-8" style="width: 79%;padding-right: 5px;">
								<textarea class="form-control " id="historyDescription"></textarea>
							</div>
						</div>
					</div>
					<div class="row ">
						<div class="col-md-6 ">
							<label for="geographicDescription" class="col-sm-4 control-label " style="padding-left:15px;width: 21%;margin-top: 10px; ">地理实体描述</label>
							<div class="col-sm-8 " style="width: 79%;padding-right: 5px; ">
								<textarea class="form-control" id="geographicDescription" style="margin-top: 10px;"></textarea>
							</div>
						</div>
						<div class="col-md-6">
							<label for="otherDescription" class="col-sm-4 control-label" style="padding-left:15px;width: 21%;margin-top: 10px;">其他信息描述</label>
							<div class="col-sm-8" style="width: 79%;padding-right: 5px;">
								<textarea class="form-control " id="otherDescription" style="margin-top: 10px; "></textarea>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="panel panel-info ">
			<div class="panel-heading ">
				<h4 class="panel-title ">
					<a data-toggle="collapse" data-parent="#accordion" href="#otherInformation">其他信息</a>
				</h4>
			</div>
			<div id="otherInformation" class="panel-collapse collapse">
				<div class="panel-body ">
					<!--其他信息为上传各种扫描件-->
					<div class="pull-right">
						<input type="file" id="inputFile">
						<button type="submit " class="btn btn-default btn-sm ">提交</button>
					</div>
				</div>
			</div>
		</div>
	</div>

</form>
</body>

</html>