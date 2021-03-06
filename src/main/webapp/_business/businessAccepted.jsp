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
	<link href="<%=basepath%>/css/bootstrap/bootstrap.css" rel="stylesheet">
	<link href="<%=basepath%>/css/bootstrap/bootstrap.min.css" rel="stylesheet">
    <link href="<%=basepath%>/css/bootstrap/bootstrap-multiselect.css" rel="stylesheet"/>
	<script src="<%=basepath%>/js/jquery/jquery-1.10.2.min.js"></script>
	<script src="<%=basepath%>/js/bootstrap/bootstrap.min.js"></script>
    <script type="text/javascript" src="<%=basepath%>/js/bootstrap/bootstrap-multiselect.js"></script>
	<link href="<%=basepath%>/css/mystyle.css" rel="stylesheet">
	<style type="text/css">
		.col-md-6 {
			padding-right: 0px;
		}
        .divid-40{
            height: 40px;
            width: 100%;
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
			<a href="/_tianditu/tianditu.html" class="btn btn-default btn-sm">地图定位<span class="glyphicon glyphicon-triangle-right" style="color:#dddddd;"></span></a>
			<button type="button" class="btn btn-info btn-sm">保存</button>
			<a href="businessProcess.html" class="btn btn-default btn-sm">取消</a>
		</div>
		<br />
        <div class="row">
            <div  class="col-sm-10">
                <div class="panel-group" id="accordion" style="margin-top: 5px;margin-left: 15px;margin-right: 15px;">
                    <div class="panel panel-info ">
                        <div class="panel-heading ">
                            <h4 class="panel-title ">
                                <a data-toggle="collapse" data-parent="#accordion" href="#information">基本信息</a>
                            </h4>
                        </div>
                        <div id="information" class="panel-collapse collapse in">
                            <div class="panel-body ">
                                <div class="row">
                                    <div class="col-md-4">
                                        <label for="administrativeDivision" class="col-md-4 control-label">行政区划</label>
                                        <select class="col-md-8 form-control "  disabled="disabled" id="administrativeDivision"></select>

                                    </div>
                                    <div class="col-md-4">
                                        <label for="placesnameCode" class="col-sm-4 control-label">地名代码</label>
                                        <input type="text" class="col-sm-8 form-control "  disabled="disabled" id="placesnameCode" />
                                    </div>
                                    <div class="col-md-4">
                                        <label for="standardName" class="col-sm-4 control-label">标准名称</label>
                                        <input type="text" class="col-sm-8 form-control disabled"  disabled="disabled" id="standardName" />
                                    </div>
                                    <div class="col-md-4">
                                        <label for="spelling" class="col-sm-4 control-label">罗马拼写</label>
                                        <input type="text" class="col-sm-8 form-control disabled"   disabled="disabled" id="spelling" />
                                    </div>
                                    <div class="col-md-4">
                                        <label for="languages" class="col-sm-4 control-label">语种</label>
                                        <select class="col-sm-8 form-control disabled"  disabled="disabled"  id="languages"></select>
                                    </div>
                                    <div class="col-md-4">
                                        <label for="coordinates" class="col-sm-4 control-label">坐标系</label>
                                        <select class="col-sm-8 form-control disabled"  disabled="disabled"  id="coordinates"></select>
                                    </div>
                                    <div class="col-md-4">
                                        <label for="scale" class="col-sm-4 control-label">比例尺</label>
                                        <select class="col-sm-8 form-control disabled"  disabled="disabled"  id="scale"></select>
                                    </div>
                                    <div class="col-md-4">
                                        <label for="longitudeFrom" class="col-sm-4 control-label">经度</label>
                                        <form id="longitudeFrom" class="col-sm-8 form-inline disabled" role="form">
                                            <input type="text" class="form-control form"   disabled="disabled"  id="longitudeMin" /> -
                                            <input type="text" class="form-control"    disabled="disabled" id="longitudeMax" />
                                        </form>
                                    </div>

                                    <div class="col-md-4">
                                        <label for="namingTime" class="col-sm-4 control-label">命名时间</label>
                                        <select class="col-sm-8 form-control disabled"  disabled="disabled"  id="namingTime"></select>
                                    </div>
                                    <div class="col-md-4">
                                        <label for="latitudeForm" class="col-sm-4 control-label">纬度</label>
                                        <form id="latitudeForm" class="col-sm-8 form-inline disabled" role="form">
                                            <input type="text" class="form-control"  disabled="disabled"  id="latitudeMin" /> -
                                            <input type="text" class="form-control"   disabled="disabled" id="latitudeMax" />
                                        </form>
                                    </div>

                                    <div class="col-md-4">
                                        <label for="usingTime" class="col-sm-4 control-label">使用时间</label>
                                        <select class="col-sm-8 form-control disabled"  disabled="disabled"  id="usingTime"></select>
                                    </div>
                                    <div class="col-md-4">
                                        <label for="standardJudge" class="col-sm-4 control-label">是否规范</label>
                                        <select class="col-sm-8 form-control disabled"   disabled="disabled" id="standardJudge"></select>
                                    </div>
                                    <div class="col-md-4">
                                        <label for="generalName" class="col-sm-4 control-label">标准名称通名</label>
                                        <input type="text" class="col-sm-8 form-control disabled"   disabled="disabled" id="generalName" />
                                    </div>
                                    <div class="col-md-4">
                                        <label for="dense" class="col-sm-4 control-label">密级</label>
                                        <select class="col-sm-8 form-control disabled"   disabled="disabled" id="dense"></select>
                                    </div>
                                    <div class="col-md-4">
                                        <label for="planningTime" class="col-sm-4 control-label">规划时间</label>
                                        <select class="col-sm-8 form-control disabled"   disabled="disabled" id="planningTime"></select>
                                    </div>
                                    <div class="col-md-4">
                                        <label for="generalnameSpelling" class="col-sm-4 control-label">通名罗马拼写</label>
                                        <input type="text" class="col-sm-8 form-control disabled"   disabled="disabled" id="generalnameSpelling" />
                                    </div>
                                    <div class="col-md-4">
                                        <label for="establishedYear" class="col-sm-4 control-label">设立年份</label>
                                        <input type="text" class="col-sm-8 form-control disabled"  disabled="disabled"  id="establishedYear" />
                                    </div>
                                    <div class="col-md-4">
                                        <label for="pictureCode" class="col-sm-4 control-label">图片代码</label>
                                        <input type="text" class="col-sm-8 form-control disabled"  disabled="disabled"  id="pictureCode" />
                                    </div>
                                    <div class="col-md-4">
                                        <label for="properName" class="col-sm-4 control-label">标准名称专名</label>
                                        <input type="text" class="col-sm-8 form-control disabled"  disabled="disabled"  id="properName" />
                                    </div>
                                    <div class="col-md-4">
                                        <label for="abolishedYear" class="col-sm-4 control-label">废止年份</label>
                                        <select class="col-sm-8 form-control disabled"  disabled="disabled"  id="abolishedYear"></select>
                                    </div>
                                    <div class="col-md-4">
                                        <label for="pictureNumber" class="col-sm-4 control-label">图名图号</label>
                                        <input type="text" class="col-sm-8 form-control disabled"  disabled="disabled"  id="pictureNumber" />
                                    </div>
                                    <div class="col-md-4">
                                        <label for="propernameSpelling" class="col-sm-4 control-label">专名罗马拼写</label>
                                        <input type="text" class="col-sm-8 form-control disabled"  disabled="disabled"  id="propernameSpelling" />
                                    </div>
                                    <div class="col-md-4">
                                        <label for="pictureName" class="col-sm-4 control-label">图上名称</label>
                                        <input type="text" class="col-sm-8 form-control disabled"   disabled="disabled" id="pictureName" />
                                    </div>
                                    <div class="col-md-4">
                                        <label for="recordDate" class="col-sm-4 control-label">登记日期</label>
                                        <select class="col-sm-8 form-control disabled"   disabled="disabled" id="recordDate"></select>
                                    </div>
                                    <div class="col-md-4">
                                        <%--<label for="abbreviation" class="col-sm-4 control-label">简称</label>
                                        <input type="text" class="col-sm-8 form-control" id="abbreviation" />--%>
                                        <label for="placeName" class="col-sm-4 control-label">名称</label>
                                        <input type="text" class="col-sm-8 form-control disabled"   disabled="disabled" id="placeName" name="placeName" />
                                    </div>
                                    <div class="col-md-4">
                                        <label for="altitude" class="col-sm-4 control-label">高程(米)</label>
                                        <input type="number" class="col-sm-8 form-control disabled"  disabled="disabled"  id="altitude" />
                                    </div>
                                    <div class="col-md-4">
                                        <label for="registrantName" class="col-sm-4 control-label">登记人姓名</label>
                                        <input type="text" class="col-sm-8 form-control disabled"   disabled="disabled" id="registrantName" />
                                    </div>
                                    <div class="col-md-4">
                                        <%--<label for="alias" class="col-sm-4 control-label">别名</label>
                                        <input type="text" class="col-sm-8 form-control disabled"   disabled="disabled" id="alias" />--%>
                                            <label for="alias" class="col-sm-4 control-label">名称</label>
                                            <input type="text" class="col-sm-8 form-control disabled"   disabled="disabled" id="alias" value="<s:property value='testPlaceNameApplyEntity.placeName'/>"/>
                                    </div>
                                    <div class="col-md-4">
                                        <label for="measuringMethod" class="col-sm-4 control-label">测量方法</label>
                                        <input type="text" class="col-sm-8 form-control disabled"   disabled="disabled" id="measuringMethod" />
                                    </div>
                                    <div class="col-md-4">
                                        <label for="unitName" class="col-sm-4 control-label">登记单位名称</label>
                                        <input type="text" class="col-sm-8 form-control disabled"   disabled="disabled" id="unitName" />
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
                                            <textarea class="form-control disabled" id="placesnameDescription"  disabled="disabled"  name="description"><s:property value="testPlaceNameApplyEntity.description" /></textarea>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <label for="historyDescription" class="col-sm-4 control-label" style="padding-left:15px;width: 21%;">历史沿革描述</label>
                                        <div class="col-sm-8" style="width: 79%;padding-right: 5px;">
                                            <textarea class="form-control  disabled"  disabled="disabled"  id="historyDescription"></textarea>
                                        </div>
                                    </div>
                                </div>
                                <div class="row ">
                                    <div class="col-md-6 ">
                                        <label for="geographicDescription" class="col-sm-4 control-label " style="padding-left:15px;width: 21%;margin-top: 10px; ">地理实体描述</label>
                                        <div class="col-sm-8 " style="width: 79%;padding-right: 5px; ">
                                            <textarea class="form-control disabled" id="geographicDescription"  disabled="disabled"  style="margin-top: 10px;"></textarea>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <label for="otherDescription" class="col-sm-4 control-label" style="padding-left:15px;width: 21%;margin-top: 10px;">其他信息描述</label>
                                        <div class="col-sm-8" style="width: 79%;padding-right: 5px;">
                                            <textarea class="form-control  disabled" id="otherDescription"  disabled="disabled"  style="margin-top: 10px; "></textarea>
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
                                <div >
                                    这里是其他信息
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-2">
                <form action="/toponymy/toponymyMgrAction!finishTask" method="post">
                    <input type="hidden" name="taskId" value="<s:property value='testPlaceNameApplyEntity.taskId'/>"/>
                    <div class="divid-40"></div>
                    <h4>审批意见</h4>
                    <div>
                        <select  name="p_b_countyLeaderApproved" class="multiselect position-fixed">
                            <option  value="1">通过</option>
                            <option  value="0">拒绝</option>
                        </select>
                    </div>
                    <br>
                    <br>
                    <div>
                        <button class="btn btn-info" type="submit">确定</button>
                    </div>
                </form>

            </div>
        </div>

	</div>
	<!--发证环节-->
	<div class="tab-pane fade" id="certificationStep">
		<div class="btn-group position-fixed">
			<button type="button" class="btn btn-default btn-sm">预览<span class="glyphicon glyphicon-triangle-right" style="color:#dddddd;"></span></button>
			<button type="button" class="btn btn-info btn-sm">发送</button>
			<a href="businessProcess.jsp" class="btn btn-default btn-sm">取消</a>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-sm-6">证1</div>
				<div class="col-sm-6">证2</div>
			</div>
		</div>
	</div>
</div>
<script>
    $(document).ready(function() {
            $('.multiselect').multiselect();
    });

</script>
</body>

</html>