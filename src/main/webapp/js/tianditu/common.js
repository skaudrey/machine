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
		$(".bottomMenu").css("display","block");
	});
	$("#spatialSearch-resultDisplay").click(function(){
		$("#spatialSearch-result thead,#spatialSearch-result tbody").css("display")=="none"?
		$("#spatialSearch-result thead,#spatialSearch-result tbody").css("display",""):
		$("#spatialSearch-result thead,#spatialSearch-result tbody").css("display","none")
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
	popup.setPosition(undefined);
	map.removeInteraction(draw);
	addInteraction();
}
