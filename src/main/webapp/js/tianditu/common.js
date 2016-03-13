$(document).ready(function(){
	$(".dropdown-toggle").click(function(){
		var e=$(this).parent().children(".dropdownList");
		if(e.css("display")=="none")
		{
			$(".dropdownList").css("display","none");
			e.css("display","block");
		}
		else
		{
			$(".dropdownList").css("display","none");
			e.css("display","none");
		}
	});
	$("#findFeature-confirm").click(function(){
		$("#spatialSearch-showbtn").trigger('click');
		$(".bottomMenu").css("display","block");
	});
	$("#spatialSearch-resultDisplay").click(function(){
		$("#spatialSearch-result thead,#spatialSearch-result tbody").css("display")=="none"?
			$("#spatialSearch-result thead,#spatialSearch-result tbody").css("display",""):
			$("#spatialSearch-result thead,#spatialSearch-result tbody").css("display","none")
	});
	//天地图图层变化事件
	$("#baseLayer").change(function() {
		$("#baseLayer").prop("checked")?baseLayer.setVisible(1):baseLayer.setVisible(0);
		$("#baseLayer").prop("checked")?$("#terrianLayer").prop("checked",false):$("#terrianLayer").prop("checked",true);
		$("#baseLayer").prop("checked")?terrianLayer.setVisible(0):terrianLayer.setVisible(1);
	});
	$("#terrianLayer").change(function() {
		$("#terrianLayer").prop("checked")?terrianLayer.setVisible(1):terrianLayer.setVisible(0);
		$("#terrianLayer").prop("checked")?$("#baseLayer").prop("checked",false):$("#baseLayer").prop("checked",true);
		$("#terrianLayer").prop("checked")?baseLayer.setVisible(0):baseLayer.setVisible(1);
	});
	$("#baseMarkLayer").change(function() {
		$("#baseMarkLayer").prop("checked")?baseMarkLayer.setVisible(1):baseMarkLayer.setVisible(0);
	});
	$("#vectorLayer").change(function() {
		$("#vectorLayer").prop("checked")?vectorLayer.setVisible(1):vectorLayer.setVisible(0);
	});
	$("#measureLayer").change(function() {
		$("#measureLayer").prop("checked")?measureLayer.setVisible(1):measureLayer.setVisible(0);
		$("#measureLayer").prop("checked")?$(".tooltip-static").removeClass('hidden'):$(".tooltip-static").addClass('hidden');
	});
	$("#houseLayer").change(function() {
		$("#houseLayer").prop("checked")?houseLayer.setVisible(1):houseLayer.setVisible(0);
		$("#houseLayer").prop("checked")?$(".tooltip-static").removeClass('hidden'):$(".tooltip-static").addClass('hidden');
	});
	$("#signLayer").change(function() {
		$("#signLayer").prop("checked")?signLayer.setVisible(1):signLayer.setVisible(0);
		$("#signLayer").prop("checked")?$(".tooltip-static").removeClass('hidden'):$(".tooltip-static").addClass('hidden');
	});

	//模拟要素添加
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
function closePopup()
{
	var element = popup.getElement();
	$(element).popover('destroy');
}
function setStatus(param) {
	//status = param;
	if (param == 0) {
		status = 'None';
	} else if (param == 1) {
		status = 'Point';

	} else if (param == 2) {
		status = 'LineString';

	} else if (param == 3) {
		status = 'Polygon';

	} else if (param == 4) {
		status = 'Circle';

	} else if (param == 5) {
		status = 'Box';
	}
	else if (param==6)
	{
		status='Modify';
	}
	else if (param==7)
	{
		status='Measure';
		measureType='Polygon';
	}
	else if(param==8)
	{
		status='Measure';
		measureType='LineString';
	}
	popup.setPosition(undefined);
	map.removeInteraction(draw);
	map.removeInteraction(select);
	map.removeInteraction(modify);
	map.removeInteraction(drawMeasure);
	addInteraction();
}
function showLayers()
{

	if($(".leftMenu").css("display")=="none")
	{
		$(".leftMenu").css("display","block");
		$(".rightContent").css("width","85%");
		$(".rightContent").css("margin-left","15%");
	}
	else
	{
		$(".leftMenu").css("display","none");
		$(".rightContent").css("width","100%");
		$(".rightContent").css("margin-left","0px");
	}
	map.updateSize();
}
function exportImg()
{
	alert("天地图调用存在同源跨域问题");
	map.once('postcompose', function(event) {
		var canvas = event.context.canvas;
		exportPNGElement.href = canvas.toDataURL('image/png');
	});
	map.renderSync();
}
function showModal()
{
	$("#houseModal").modal('show');
	//$("#srcIframe").contents().find("#svgImg").css("max-width","600px").css("max-height","600px");
//	alert($("#srcIframe").contents().find("#svgImg").css("width"));
}