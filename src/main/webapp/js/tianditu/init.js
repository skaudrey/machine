var status = 'None';
var draw;
$(document).ready(function() {
	init();
	addInteraction();
	$("#findFeature-confirm").click(function() {
		var testData = {
			"type": "FeatureCollection",
			"features": [{
				"type": "Feature",
				"geometry": {
					"type": "Point",
					"coordinates": [12728341.723190226, 3572380.0631930684]
				},
				"properties": null
			}, {
				"type": "Feature",
				"geometry": {
					"type": "Point",
					"coordinates": [12727252.495537164, 3571539.255881931]
				},
				"properties": null
			}, {
				"type": "Feature",
				"geometry": {
					"type": "Point",
					"coordinates": [12726679.217825023, 3573163.5427329913]
				},
				"properties": null
			}, {
				"type": "Feature",
				"geometry": {
					"type": "Point",
					"coordinates": [12727348.04182252, 3574061.677815342]
				},
				"properties": null
			}, {
				"type": "Feature",
				"geometry": {
					"type": "Point",
					"coordinates": [12725933.956799243, 3574596.737013338]
				},
				"properties": null
			}, {
				"type": "Feature",
				"geometry": {
					"type": "Point",
					"coordinates": [12725972.175313385, 3573087.105704706]
				},
				"properties": null
			}, {
				"type": "Feature",
				"geometry": {
					"type": "Point",
					"coordinates": [12724519.871775968, 3572513.8279925673]
				},
				"properties": null
			}]
		}
		vectorSource.addFeatures((new ol.format.GeoJSON()).readFeatures(testData));
	});
});

function init() {
	$("#map").css("height", document.documentElement.clientHeight - 65);
	//天地图瓦片数据
	var projection = ol.proj.get('EPSG:900913');
	var projectionExtent = projection.getExtent();
	var size = ol.extent.getWidth(projectionExtent) / 256;
	var resolutions = new Array(40);
	var matrixIds = new Array(40);
	for (var z = 0; z < 40; ++z) {
		// generate resolutions and matrixIds arrays for this WMTS
		resolutions[z] = size / Math.pow(2, z);
		matrixIds[z] = z;
	}
	var attribution = new ol.Attribution({
		html: '@copyright linyijun'
	});
	view = new ol.View({
		center: ol.proj.transform(
			[114.3704, 30.54907], 'EPSG:4326', 'EPSG:900913'),
		zoom: 13,
		minResolution: 1
	});
	//底图
	baseLayer = new ol.layer.Tile({
		source: new ol.source.WMTS({
			attributions: [attribution],
			url: 'http://t0.tianditu.com/vec_w/wmts',
			layer: 'vec',
			matrixSet: 'w',
			format: 'tiles',
			projection: projection,
			tileGrid: new ol.tilegrid.WMTS({
				origin: ol.extent.getTopLeft(projectionExtent),
				resolutions: resolutions,
				matrixIds: matrixIds
			}),
			style: 'default',
			wrapX: true
		})
	});
	terrianLayer= new ol.layer.Tile({
		source: new ol.source.WMTS({
			attributions: [attribution],
			url: 'http://t0.tianditu.com/img_w/wmts',
			layer: 'img',
			matrixSet: 'w',
			format: 'tiles',
			projection: projection,
			tileGrid: new ol.tilegrid.WMTS({
				origin: ol.extent.getTopLeft(projectionExtent),
				resolutions: resolutions,
				matrixIds: matrixIds
			}),
			style: 'default',
			wrapX: true
		})
	});
	terrianLayer.setVisible(0);
	//标记图层
	baseMarkLayer = new ol.layer.Tile({
		source: new ol.source.WMTS({
			attributions: [attribution],
			url: 'http://t0.tianditu.com/cva_w/wmts',
			layer: 'cva',
			matrixSet: 'w',
			format: 'tiles',
			projection: projection,
			tileGrid: new ol.tilegrid.WMTS({
				origin: ol.extent.getTopLeft(projectionExtent),
				resolutions: resolutions,
				matrixIds: matrixIds
			}),
			style: 'default',
			wrapX: true
		})
	});
	//矢量数据图层
	//设置要素样式
	styles = {
		'Point': [new ol.style.Style({
			image: new ol.style.Circle({
				radius: 6,
				fill: new ol.style.Fill({
					color: [0, 153, 255, 1]
				}),
				stroke: new ol.style.Stroke({
					color: [255, 255, 255, 0.75],
					width: 1.5
				})
			}),
			zIndex: 100000

		})],
		'LineString': [new ol.style.Style({
			stroke: new ol.style.Stroke({
				color: 'blue',
				width: 4
			})
		})],
		'Polygon': [new ol.style.Style({
			stroke: new ol.style.Stroke({
				color: 'blue',
				width: 2
			}),
			fill: new ol.style.Fill({
				color: "#ffffff"
			})
		})],
		'Circle': [new ol.style.Style({
			stroke: new ol.style.Stroke({
				color: 'black',
				width: 2
			}),
			fill: new ol.style.Fill({
				color: '#ff0000'
			})
		})]
	};
	styleFunction = function(feature, resolution) {
		return styles[feature.getGeometry().getType()];
	};
	vectorSource = new ol.source.Vector({
		wrapX: false
	});
	vectorLayer = new ol.layer.Vector({
		source: vectorSource,
		style: styleFunction
	});
	//测距图层
	measureSource = new ol.source.Vector({
		wrapX: false
	});
	measureLayer = new ol.layer.Vector({
		source: measureSource,
		style: new ol.style.Style({
			fill: new ol.style.Fill({
				color: 'rgba(255, 255, 255, 0.4)'
			}),
			stroke: new ol.style.Stroke({
				color: '#ffcc33',
				width: 2
			}),
			image: new ol.style.Circle({
				radius: 7,
				fill: new ol.style.Fill({
					color: '#ffcc33'
				})
			})
		})
	});
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
			terrianLayer,baseLayer,baseMarkLayer,vectorLayer,measureLayer
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
		if (feature && "Point" == feature.get('geometry').getType()) {
			//			var coordinate = evt.coordinate;
			//          var newc = ol.proj.transform(coordinate, 'EPSG:900913', 'EPSG:4326');
			//			alert("当前选中的点坐标是:"+newc[0] + " , " + newc[1]);
			var element = popup.getElement();
			var coordinate = evt.coordinate;
			var hdms = ol.coordinate.toStringHDMS(ol.proj.transform(
				coordinate, 'EPSG:4326', 'EPSG:900913'));
			var newc = ol.proj.transform(coordinate, 'EPSG:900913', 'EPSG:4326');
			$(element).popover('destroy');
			popup.setPosition(coordinate);
			// the keys are quoted to prevent renaming in ADVANCED mode.
			$(element).popover({
				'placement': 'top',
				'animation': false,
				'html': true,
				'content': "<div style='width:200px;height:200px'><div class='popupTop'>属性信息<a href='#' class='pull-right' onclick='closePopup()'>X</a></div><div style='clear:both'><div>经度:" + newc[0] + "</div><div>纬度:" + newc[1] + "</div>" +
				"<div>标准名称:文辉街道敬老院</div><div>地名代码:</div><div>地名类型:</div><div>地名等级:</div>" +
				"<button class='btn btn-primary popupBtn'>复制坐标</button></div>"
			});
			$(element).popover('show');
		}
	});
	$(map.getViewport()).on('mousemove', function(evt) {
		mousePosition = map.getEventPixel(evt.originalEvent);
		map.render();
	})
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