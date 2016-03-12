<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
	String path = request.getContextPath();
	String basepath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8" />
	<link rel="stylesheet" href="<%=basepath%>css/tianditu/ol.css" type="text/css">

	<script src="<%=basepath%>js/jquery/jquery-1.10.2.min.js"></script>
	<script src="<%=basepath%>js/bootstrap.min.js"></script>
	<link href="<%=basepath%>css/bootstrap.min.css" rel="stylesheet" />
	<script src="<%=basepath%>js/tianditu/ol.js"></script>
	<script src="<%=basepath%>js/tianditu/init.js"></script>
	<script src="<%=basepath%>js/tianditu/loadLayer.js"></script>
	<script src="<%=basepath%>js/tianditu/measure.js"></script>
	<script src="<%=basepath%>js/tianditu/common.js"></script>
	<link rel="stylesheet" href="<%=basepath%>css/tianditu/common.css" type="text/css">

	<title></title>

</head>
<body>
<div class="leftMenu text-center">
	<div class="row" >
		<div class="col-sm-4"><img class="layerIcon" src="img/layerIcon/park.png"/>公园</div>
		<div class="col-sm-4"><img class="layerIcon" src="img/layerIcon/company.png"/>单位</div>
		<div class="col-sm-4"><img class="layerIcon" src="img/layerIcon/house.png"/>房屋</div>
	</div>
	<div class="row">
		<div class="col-sm-4"><img class="layerIcon" src="img/layerIcon/jiezhuang.png"/>界桩</div>
		<div class="col-sm-4"><img class="layerIcon" src="img/layerIcon/jiexian.png"/>界线</div>
		<div class="col-sm-4"><img class="layerIcon" src="img/layerIcon/nature.png"/>自然景区</div>
	</div>
</div>
<div class="rightContent">
	<nav class="navbar navbar-default" role="navigation">
		<!--向左对齐-->
		<ul class="nav navbar-nav navbar-left">
			<li style="padding-top: 5px;"><a href="#" class="leftBtn" onclick="showLayers(1)">专题栏<<</a></li>
			<li class="dropdown">
				<a href="#" class="dropdown-toggle" id="spatialSearch-showbtn" data-toggle="dropdown">
					空间查询
					<b class="caret"></b>
				</a>
				<ul class="dropdownList" id="spatialSearch-list">
					<div class="container">
						<label for="findFeature" class="col-sm-5 noPadding">查找要素&nbsp;</label>
						<select class="col-sm-7 noPaddings" id="findFeature">
							<option value="0">点</option>
							<option value="1">线</option>
							<option value="2">面</option>
						</select>
					</div>
					<div class="container">
						<label for="findFeature-keyword" class="col-sm-5 noPadding">关键字&nbsp;</label>
						<input type="text" class="col-sm-7 noPadding" id="findFeature-keyword" />
						<button type="button" class="btn  btn-primary pull-right" id="findFeature-confirm">确定</button>
					</div>
				</ul>
			</li>
			<li class="dropdown">
				<a href="#" class="dropdown-toggle" id="CivilianIns-showbtn" data-toggle="dropdown">图层管理<b class="caret"></b></a>
				<ul class="dropdownList" id="CivilianIns-list">
					<label>空间图层</label>
					<div class="checkbox">
						<label><input type="checkbox" autocomplete="off" id='baseLayer' value="" checked="checked">天地图矢量图层</label>
					</div>
					<div class="checkbox">
						<label><input type="checkbox" autocomplete="off" id='terrianLayer' value="">天地图地形图层</label>
					</div>
					<div class="checkbox">
						<label><input type="checkbox" autocomplete="off" id='baseMarkLayer' value="" checked="checked">天地图注记图层</label>
					</div>
					<div class="checkbox">
						<label><input type="checkbox" autocomplete="off" id='vectorLayer' value="" checked="checked">要素图层</label>
					</div>
					<div class="checkbox">
						<label><input type="checkbox" autocomplete="off" id='measureLayer' value="" checked="checked">测距图层</label>
					</div>
					<label>专题图层</label>
					<div class="checkbox">
						<label>
							<input type="checkbox" autocomplete="off" id='houseLayer' checked="checked" value="">房屋</label>
					</div>
					<div class="checkbox">
						<label>
							<input type="checkbox" autocomplete="off" id='signLayer' checked="checked" value="">标牌</label>
					</div>
				</ul>
			</li>
			<li class="dropdown">
				<a href="#" class="dropdown-toggle" id="dataEdit-showbtn" data-toggle="dropdown">数据编辑<b class="caret"></b></a>
				<ul class="dropdownList" id="dataEdit-list">
					<div class="container">
						<label for="dataEdit-layer" class="col-sm-5 noPadding">编辑图层&nbsp;</label>
						<select class="col-sm-7 noPaddings" id="dataEdit-layer">
							<option value="0">天地图</option>
							<option value="1">地名</option>
							<option value="2">界桩</option>
						</select>
					</div>
					<div class="container">
						<label for="dataEdit-layer" class="col-sm-5 noPadding">要素编号&nbsp;</label>
						<input type="text" class="col-sm-7 noPadding" id="dataEdit-featureIndex" />
					</div>
					<div class="container">
						<label for="dataEdit-standard" class="col-sm-5 noPadding">标准名称&nbsp;</label>
						<input type="text" class="col-sm-7 noPadding" id="dataEdit-standard" />
					</div>
					<div class="container">
						<label for="dataEdit-picName" class="col-sm-5 noPadding">图上名称&nbsp;</label>
						<input type="text" class="col-sm-7 noPadding" id="dataEdit-picName" />
					</div>
					<div class="container">
						<label for="dataEdit-placeEncode" class="col-sm-5 noPadding">地名编码&nbsp;</label>
						<input type="text" class="col-sm-7 noPadding" id="dataEdit-placeEncode" />
						<div class="checkbox">
							<label>
								<input type="checkbox" value="">关联属性录入</label>
						</div>
						<button type="button" class="btn  btn-primary pull-right" id="dataEdit-confirm">确定</button>
					</div>

				</ul>
			</li>
		</ul>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="#" class="rightBtn" onclick="setStatus(8)"><img src="img/measurePolygon.png"></a></li>
			<li><a href="#" class="rightBtn" onclick="setStatus(7)"><img src="img/measureLine.png"></a></li>
			<li><a href="#"  class="rightBtn" onclick="setStatus(1)"><img src="img/point.png"></a></li>
			<li><a href="#" class="rightBtn" onclick="setStatus(2)"><img src="img/line.png"></a></li>
			<li> <a href="#" class="rightBtn" onclick="setStatus(3)"><img src="img/polygon.png"></a></li>
			<li><a href="#" class="rightBtn" onclick="setStatus(0)"><img src="img/mousemove.png"></a></a></li>
			<li><a href="#" class="rightBtn" onclick="setStatus(6)"><img src="img/modify.png"></a></a></li>
			<li><a href="#" class="rightBtn" onclick="exportImg()"><img src="img/export.png"></a></li>
		</ul>
	</nav>
	<div id='map'></div>
	<div class="bottomMenu">
		<table class="table table-bordered text-center" id="spatialSearch-result">
			<caption>
				<button class="btn" id="spatialSearch-resultDisplay">查询结果<b class="caret"></b></button>
			</caption>
			<thead>
			<tr class="success">
				<th>序号</th>
				<th>经度</th>
				<th>纬度</th>
				<th>标准名称</th>
				<th>图上名称</th>
				<th>地名类型</th>
				<th>地名等级</th>
			</tr>
			</thead>
			<tbody>
			<tr>
				<td>1</td>
				<td>121.234123123456</td>
				<td>40.12343536</td>
				<td>XX医院</td>
				<td>XX医院</td>
				<td>医院</td>
				<td>二级</td>
			</tr>
			<tr>
				<td>2</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>3</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>4</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>5</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			</tbody>
		</table>
	</div>
</div>

<!-- 模态框（Modal） -->
<div class="modal fade" id="houseModal" style="z-index: 1500" tabindex="-1" role="dialog" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close"
						data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title" id="myModalLabel">
					房屋图示
				</h4>
			</div>
			<div class="modal-body">
				<iframe onload="setSvgWidth()"  id="srcIframe" src="../svg.html" style="width:100%;height: 70%"></iframe>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default"
						data-dismiss="modal">关闭
				</button>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
</div>
<div id="popup"></div>
</body>
</html>