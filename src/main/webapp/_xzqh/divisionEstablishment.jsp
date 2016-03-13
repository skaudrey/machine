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
	<title>民政地理空间信息服务平台-设立行政区划</title>
	<!-- Bootstrap -->
	<link href="<%=basepath%>/css/bootstrap/bootstrap.css" rel="stylesheet">
	<link href="<%=basepath%>/css/bootstrap/bootstrap.min.css" rel="stylesheet">
	<script src="<%=basepath%>/js/jquery/jquery-1.10.2.min.js"></script>
	<script src="<%=basepath%>/js/bootstrap/bootstrap.min.js"></script>
	<link href="<%=basepath%>/css/mystyle.css" rel="stylesheet">

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
<h4 class="pull-left title-pull-left">设立行政区划</h4>
<!--右上角button组-->
<div class="btn-group position-fixed">
	<button type="button" class="btn btn-info btn-sm">确定</button>
	<button type="button" class="btn btn-default btn-sm" onclick="window.location.href='divisionAdjustment.jsp'">取消</button>
</div>
<br />
<br />
<div class="panel-group" id="accordion" style="margin-top: 5px;margin-left: 15px;margin-right: 15px;">
	<div class="panel panel-info">
		<div class="panel-heading">
			<h4 class="panel-title">
				<a data-toggle="collapse" data-parent="#accordion" href="#publicInformation">公共信息</a>
			</h4>
		</div>
		<div id="publicInformation" class="panel-collapse collapse in">
			<div class="panel-body">
				<div class="row">
					<div class="col-md-4">
						<label for="administrativeDivision" class="col-sm-3 control-label">行政区划</label>
						<select class="col-sm-9 form-control" id="administrativeDivision"></select>
					</div>
					<div class="col-md-4">
						<label for="typeName" class="col-sm-3 control-label">类别名称</label>
						<select class="col-sm-9 form-control" id="typeName"></select>
					</div>
					<div class="col-md-4">
						<label for="pinyin" class="col-sm-3 control-label">汉语拼音</label>
						<input type="text" class="col-sm-9 form-control" id="pinyin" />
					</div>
				</div>
				<div class="row">
					<div class="col-md-4">
						<label for="registrant" class="col-sm-3 control-label">登记人</label>
						<input type="text" class="col-sm-9 form-control" id="registrant" />
					</div>
					<div class="col-md-4">
						<label for="placesnameNumber" class="col-sm-3 control-label">地名编号</label>
						<input type="text" class="col-sm-9 form-control" id="placesnameNumber" />
					</div>
					<div class="col-md-4">
						<label for="division" class="col-sm-3 control-label">划分单位</label>
						<input type="text" class="col-sm-9 form-control" id="division" />
					</div>
				</div>
				<div class="row">
					<div class="col-md-4">
						<label for="registerUnit" class="col-sm-3 control-label">登记单位</label>
						<input type="text" class="col-sm-9 form-control" id="registerUnit" />
					</div>
					<div class="col-md-4">
						<label for="standardName" class="col-sm-3 control-label">标准名称</label>
						<input type="text" class="col-sm-9 form-control" id="standardName" />
					</div>
					<div class="col-md-4">
						<label for="postCode" class="col-sm-3 control-label">邮政编码</label>
						<input type="text" class="col-sm-9 form-control" id="postCode" />
					</div>
				</div>
				<div class="row">
					<div class="col-md-4">
						<label for="registerTime" class="col-sm-3 control-label">登记时间</label>
						<input type="text" class="col-sm-9 form-control" id="registerTime" />
					</div>
					<div class="col-md-4">
						<label for="spelling" class="col-sm-3 control-label">罗马拼写</label>
						<input type="text" class="col-sm-9 form-control" id="spelling" />
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="panel panel-info ">
		<div class="panel-heading ">
			<h4 class="panel-title ">
				<a data-toggle="collapse" data-parent="#accordion" href="#classifiedInformation">分类信息</a>
			</h4>
		</div>
		<div id="classifiedInformation" class="panel-collapse collapse">
			<div class="panel-body ">
				<ul id="classifiedTab" class="nav nav-tabs nav-top">
					<li class="active">
						<a href="#administrativeArea" data-toggle="tab">行政区域</a>
					</li>
					<li>
						<a href="#administrativeRegionalism" data-toggle="tab">行政区划</a>
					</li>
					<li>
						<a href="#economicIndicator" data-toggle="tab">经济指标</a>
					</li>
				</ul>
				<div id="businessTabContent" class="tab-content">
					<!--行政区域-->
					<div class="tab-pane fade in active" id="administrativeArea">
						<br />
						<div class="row">
							<div class="col-md-4">
								<label for="pictureName" class="col-sm-3 control-label">图上名称</label>
								<input type="text" class="col-sm-9 form-control" id="pictureName" />
							</div>
							<div class="col-md-4">
								<label for="formerName" class="col-sm-3 control-label">曾用名</label>
								<input type="text" class="col-sm-9 form-control" id="formerName" />
							</div>
							<div class="col-md-4">
								<label for="coordinates" class="col-sm-3 control-label">坐标系</label>
								<select class="col-sm-9 form-control" id="coordinates"></select>
							</div>
						</div>
						<div class="row">
							<div class="col-md-4">
								<label for="altitude" class="col-sm-3 control-label">高程</label>
								<input type="number" class="col-sm-9 form-control" id="altitude" />
							</div>
							<div class="col-md-4">
								<label for="usingTime" class="col-sm-3 control-label">使用时间</label>
								<select class="col-sm-9 form-control" id="usingTime"></select>
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
								<label for="scale" class="col-sm-3 control-label">比例尺</label>
								<select class="col-sm-9 form-control" id="scale"></select>
							</div>
							<div class="col-md-4">
								<label for="dense" class="col-sm-3 control-label">密级</label>
								<select class="col-sm-9 form-control" id="dense"></select>
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
								<label for="pictureNumber" class="col-sm-3 control-label">图名图号</label>
								<input type="text" class="col-sm-9 form-control" id="pictureNumber" />
							</div>
							<div class="col-md-4">
								<label for="establishedYear" class="col-sm-3 control-label">设立年份</label>
								<input type="text" class="col-sm-9 form-control" id="establishedYear" />
							</div>
							<div class="col-md-4">
								<label for="measuringMethod" class="col-sm-3 control-label">测量方法</label>
								<input type="text" class="col-sm-9 form-control" id="measuringMethod" />
							</div>
						</div>
						<div class="row">
							<div class="col-md-4">
								<label for="administrativeLevel" class="col-sm-3 control-label">行政级别</label>
								<input type="text" class="col-sm-9 form-control" id="administrativeLevel" />
							</div>
							<div class="col-md-4">
								<label for="abolishedYear" class="col-sm-3 control-label">废止年份</label>
								<select class="col-sm-9 form-control" id="abolishedYear"></select>
							</div>
							<div class="col-md-4">
								<label for="signsNumber" class="col-sm-3 control-label">标牌个数</label>
								<input type="text" class="col-sm-9 form-control" id="signsNumber" />
							</div>
						</div>
						<div class="row">
							<div class="col-md-6">
								<label for="meaningDescription" class="col-sm-3 control-label" style="padding-left:15px;width: 16%;">含义描述</label>
								<div class="col-sm-9" style="width: 84%;padding-right: 5px;">
									<textarea class="form-control" id="meaningDescription"></textarea>
								</div>
							</div>
							<div class="col-md-6">
								<label for="historyDescription" class="col-sm-3 control-label" style="padding-left:15px;width: 16%;">历史沿革描述</label>
								<div class="col-sm-9" style="width: 84%;padding-right: 5px;">
									<textarea class="form-control " id="historyDescription"></textarea>
								</div>
							</div>
						</div>
						<div class="row ">
							<div class="col-md-6 ">
								<label for="entityDescription" class="col-sm-3 control-label " style="padding-left:15px;width: 16%;margin-top: 10px; ">实体描述</label>
								<div class="col-sm-9 " style="width: 84%;padding-right: 5px; ">
								    <textarea class="form-control" id="entityDescription" style="margin-top: 10px;"></textarea>
							    </div>
                            </div>
							<div class="col-md-6">
								<label for="higherState" class="col-sm-3 control-label" style="padding-left:15px;width: 16%;margin-top: 10px;">上级政区</label>
								<div class="col-sm-9" style="width: 84%;padding-right: 5px;">
								    <textarea class="form-control " id="higherState" style="margin-top: 10px; "></textarea>
							    </div>
						    </div>
                        </div>
			        </div>

                    <!--行政区划-->
                    <div class="tab-pane fade" id="administrativeRegionalism">
                        <br />
                        行政区划-没写要求
                    </div>
                    <!--经济指标-->
                    <div class="tab-pane fade" id="economicIndicator">
                        <br />
                        经济指标-没写要求
                    </div>
		        </div>

	</div>
</div>
</div>
</div>
</body>

</html>