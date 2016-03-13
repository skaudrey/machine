var ctrlPressed=false;
function loadsvg()
{
	$.ajax({
		url:'svg/generateSvg.action',
		data:{},
		type:'get',
		success:function(datar)
		{
			$('body').html(datar);
		},
		error:function(XMLHttpRequest, textStatus, errorThrown)
		{
			alert(textStatus+errorThrown);
		}
	});
}

function svgOn(tar)
{
	var cla;
	if($(tar).attr('class').indexOf('element')==-1)
		cla="#"+$(tar).attr('id');
	else
		cla="#"+$(tar).attr('class');
	$(cla).css('fill','rgba(155,155,155,0.5)');
}

function svgOut(tar)
{
	//var cla="#"+$(tar).attr('id');
	var cla;
	if($(tar).attr('class').indexOf('element')==-1)
		cla="#"+$(tar).attr('id');
	else
		cla="#"+$(tar).attr('class');
	$(".svg_item").css('fill','rgba(94,193,240,1)');
}

function showowner(owner)
{
	alert(owner);
}

function zoomOn() {
	var svg = document.getElementById("svgImg");
	svg.setAttribute("viewBox","0 0 120 80");
}
function zoomOff()
{
	var svg = document.getElementById("svgImg");
	svg.setAttribute("viewBox","0 0 240 160");
}

function select(item)
{
	var tar;
	if($(item).attr('class').indexOf('element')==-1)
		tar="#"+$(item).attr('id');
	else
		tar="#"+$(item).attr('class');
	if(ctrlPressed)
	{

	}
	else
		showDetail($(tar));
	return 0;
}

function showDetail(item)
{
	$('body').remove('#background_wrap');
	$("<div/>",{
		id:'background_wrap',
		class:'background_wrap'
	}).appendTo($("body"));
	$("<div/>",{
		id:'house_info',
		class:'house_info_box'
	}).appendTo($("#background_wrap"));
	$("<ul/>",{
		id:'detail_list',
		class:'detail_list'
	}).appendTo($("#house_info"));
	var roomInfos=$(item).attr('data-field');
	var rooms=roomInfos.split(';');
	for(var i=0;i<rooms.length;i++)
	{
		if(rooms[i]==null||rooms[i]=='')
			continue;
		var detail=rooms[i].split(',');
		$("<li/>",{
			class:'house_detail_box'
		}).html(detail[0]+detail[1]).appendTo($("#detail_list"));

	}
}