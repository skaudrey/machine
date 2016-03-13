var status = 'None';
var draw;
$(document).ready(function() {
	init();
	addInteraction();
});

function init() {
	$("#map").css("height", document.documentElement.clientHeight - 65);
	initLayer();



	//地图设置
	select = new ol.interaction.Select({
		style: styleFunction
	});
	modify = new ol.interaction.Modify({
		features: select.getFeatures(),
		style: styleFunction
	});
	map = new ol.Map({
		layers: [
			terrianLayer,baseLayer,baseMarkLayer,houseLayer,signLayer,vectorLayer,measureLayer
		],
		target: 'map',
		controls: ol.control.defaults().extend([
			new ol.control.FullScreen(), //全屏
			new ol.control.Zoom({
				zoomInTipLabel: "放大",
				zoomOutTipLabel: "缩小"
			}), //放大缩小
			new ol.control.ScaleLine(), //比例尺
			new ol.control.OverviewMap(), //鹰眼
			new ol.control.ZoomSlider()
		]),
		interactions: ol.interaction.defaults().extend([
			new ol.interaction.DragRotateAndZoom()
		]),
		view: view
	});
	map.on('click', function(evt) {
		if (status != "None") {
			return;
		}
		var feature = map.forEachFeatureAtPixel(evt.pixel,
			function(feature, layer) {
				return feature;
			});
		var layer = map.forEachFeatureAtPixel(evt.pixel,
			function(feature, layer) {
				return layer;
			});
		if (feature && "Point" == feature.get('geometry').getType()) {
			var element = popup.getElement();
			var coordinate = evt.coordinate;
			var hdms = ol.coordinate.toStringHDMS(ol.proj.transform(
				coordinate, 'EPSG:4326', 'EPSG:900913'));
			var newc = ol.proj.transform(coordinate, 'EPSG:900913', 'EPSG:4326');
			$(element).popover('destroy');
			popup.setPosition(coordinate);
			var popupContent="";
			if(layer.get("name")=="vectorLayer")
			{
			popupContent="<div style='width:200px;height:200px'><div class='popupTop'>属性信息<a href='#' class='pull-right' onclick='closePopup()'>X</a></div><div style='clear:both'><div>经度:" + newc[0] + "</div><div>纬度:" + newc[1] + "</div>" +
				"<div>标准名称:文辉街道敬老院</div><div>地名代码:</div><div>地名类型:</div><div>地名等级:</div>" +
				"<button class='btn btn-primary popupBtn'>复制坐标</button></div>";
			}
			else if(layer.get("name")=="signLayer")
			{
				popupContent="<div style='width:200px;height:200px'><div class='popupTop'>标牌信息<a href='#' class='pull-right' onclick='closePopup()'>X</a></div><img src='img/sign.jpg' style='width: 100%'/></div>";
			}
			else if(layer.get("name")=="houseLayer")
			{
				popupContent="<div style='width:200px;height:100px'><div class='popupTop'>房屋信息<a href='#' class='pull-right' onclick='closePopup()'>X</a></div><div>房屋编号：001</div><div>房屋名称:珞珈创意城</div><div>房屋地址:湖北省武汉市武汉大学</div><div><a data-toggle='modal'data-target='#houseModal' onclick='showModal()'>查看>></a></div></div>";
			}
			// the keys are quoted to prevent renaming in ADVANCED mode.
			$(element).popover({
				'placement': 'top',
				'animation': false,
				'html': true,
				'content': popupContent
			});
			$(element).popover('show');
		}
	});
	//鼠标右键单击事件
	$('#map').mousedown(function(e) {
		if (e.which == 3) // 1 = 鼠标左键 left; 2 = 鼠标中键; 3 = 鼠标右s键
		{
			setStatus(0);
		}
		//return false; //阻止链接跳转
	})
	popup = new ol.Overlay({
		element: document.getElementById('popup')
	});
	map.addOverlay(popup);
}
//添加点、线、多边形、圆形、矩形
function addInteraction() {
	var value = status;
	if(value=='Modify')
	{
		map.addInteraction(select);
		map.addInteraction(modify);
		return;
	}
	else if(value=='Measure')
	{
		addMeasureInteraction();
		return;
	}
	if (value !== 'None') {
		var geometryFunction, maxPoints;
		if (value === 'Square') {
			value = 'Circle';
			geometryFunction = ol.interaction.Draw.createRegularPolygon(4);
		} else if (value === 'Box') {
			value = 'LineString';
			maxPoints = 2;
			geometryFunction = function(coordinates, geometry) {
				if (!geometry) {
					geometry = new ol.geom.Polygon(null);
				}
				var start = coordinates[0];
				var end = coordinates[1];
				geometry.setCoordinates([
					[start, [start[0], end[1]], end, [end[0], start[1]], start]
				]);
				return geometry;
			};
		}
		draw = new ol.interaction.Draw({
			source: vectorSource,
			type: /** @type {ol.geom.GeometryType} */ (value),
			geometryFunction: geometryFunction,
			maxPoints: maxPoints
		});
		map.addInteraction(draw);
	}
}