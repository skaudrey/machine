var status='None';
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
		source.addFeatures((new ol.format.GeoJSON()).readFeatures(testData));
	});
});

function init() {
	$("#map").css("max-height", document.body.clientHeight - 65);
	//���ͼ��Ƭ����
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
	//��ͼ
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
	//���ͼ��
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
	//ʸ������ͼ��
	//����Ҫ����ʽ
	styles = {
		'Point': [new ol.style.Style({
			image: new ol.style.Icon(
				({
					anchor: [0.5, 46],
					anchorXUnits: 'fraction',
					anchorYUnits: 'pixels',
					opacity: 0.75,
					src: 'img/icon.png'
				}))
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
				width:2
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
	source = new ol.source.Vector({
		wrapX: false
	});
	vector = new ol.layer.Vector({
		source: source,
		style: styleFunction
	});
	//��ͼ����
	map = new ol.Map({
		layers: [
			baseLayer, vector
		],
		target: 'map',
		controls: ol.control.defaults().extend([
			new ol.control.FullScreen(), //ȫ��
			new ol.control.Zoom({
				zoomInTipLabel: "�Ŵ�",
				zoomOutTipLabel: "��С"
			}), //�Ŵ���С
			new ol.control.ScaleLine(), //������
			new ol.control.OverviewMap(), //ӥ��
			new ol.control.ZoomSlider()
		]),
		interactions: ol.interaction.defaults().extend([
			new ol.interaction.DragRotateAndZoom()
		]),
		view: view
	});
	map.on('click', function(evt) {
		if(status!="None")
		{return;}
		var feature = map.forEachFeatureAtPixel(evt.pixel,
			function(feature, layer) {
				return feature;
			});
		if (feature && "Point" == feature.get('geometry').getType()) {
//			var coordinate = evt.coordinate;
//          var newc = ol.proj.transform(coordinate, 'EPSG:900913', 'EPSG:4326');
//			alert("��ǰѡ�еĵ�������:"+newc[0] + " , " + newc[1]);
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
				'content': "<div style='width:200px;height:200px'><div class='popupTop'>������Ϣ<a href='#' class='pull-right' onclick='closePopup()'>X</a></div><div style='clear:both'><div>����:"+newc[0]+"</div><div>γ��:"+newc[1]+"</div>"+
				"<div>��׼����:�ĻԽֵ�����Ժ</div><div>��������:</div><div>��������:</div><div>�����ȼ�:</div>"+
				"<button class='btn btn-primary popupBtn'>��������</button></div>"
			});
			$(element).popover('show');
		}

	});

	//����Ҽ������¼�
	$('#map').mousedown(function(e) {
		if (e.which== 3) // 1 = ������ left; 2 = ����м�; 3 = �����s��
		{
			setStatus(0);
		}
		//return false; //��ֹ������ת
	})
	popup = new ol.Overlay({
		element: document.getElementById('popup')
	});
	map.addOverlay(popup);
}
//��ӵ㡢�ߡ�����Ρ�Բ�Ρ�����
function addInteraction() {
	var value = status;
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
			source: source,
			type: /** @type {ol.geom.GeometryType} */ (value),
			geometryFunction: geometryFunction,
			maxPoints: maxPoints
		});
		map.addInteraction(draw);
	}
}


