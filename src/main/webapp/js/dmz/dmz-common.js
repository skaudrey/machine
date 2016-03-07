function collapseBox(index){
	if(index==1){
		jQuery(".expand").addClass("collapse").removeClass("expand");
		jQuery(".collapse").html("<i class='fa fa-chevron-up'></i>隐藏");
		$(".box-body").slideDown(200);
	}else{
		jQuery(".collapse").addClass("expand").removeClass("collapse");
		jQuery(".expand").html("<i class='fa fa-chevron-down'></i>展开");
		$(".box-body").slideUp(200);
	}
}
function layoutBox(index){
	if(index==1){
		$(".box-container").removeClass("col-sm-6").addClass("col-sm-12");
	}else if(index==2){
		$(".box-container").removeClass("col-sm-12").addClass("col-sm-6");
	}else{
		
	}
}
function showContent(){
	if($(".btn-showContent span").html()=="缩略模式"){
		$(".slimScrollDiv,.scroller").css("overflow","").css("width","").css("height","");
		$(".btn-showContent span").html("全显模式");
	}else{
		$(".btn-showContent span").html("缩略模式");
		$(".slimScrollDiv,.scroller").css("overflow","hidden").css("width","100%").css("height","120px");
	}
}
function handleBoxTools(){
	jQuery(".box .box-title .box-tools .collapse,.box .box-title .box-tools .expand").click(function(){
		var el=jQuery(this).parent(".box-tools").parent(".box-title").parent(".box").children(".box-body");
		if(jQuery(this).hasClass("collapse")){
			jQuery(this).removeClass("collapse").addClass("expand");
			jQuery(this).html("<i class='fa fa-chevron-down'></i>展开");
			el.slideUp(200);
		}else{
			jQuery(this).removeClass("expand").addClass("collapse");
			jQuery(this).html("<i class='fa fa-chevron-up'></i>隐藏");
			el.slideDown(200);
		}
	});
	jQuery(".box .box-title .box-tools .remove").click(function(){
		var removable=jQuery(this).parent(".box-tools").parent(".box-title").parent(".box");
		if(removable.next().hasClass("box")||removable.prev().hasClass(".box")){
			removable.remove();
		}else{
			removable.parent().remove();
		}
	});
	jQuery(".box .box-title .box-tools a.reload").click(function(){
		var el=jQuery(this).parent(".box-tools").parent(".box-title").parent(".box");
		
	});
}

function handleGoToTop(){
	$(".footer-tools").on("click",".go-top",function(e){
		App.scrollTo();
		e.preventDefault();
	})
}
function handleDataTable(){
	$("#historyEditTab-datatable").dataTable({
		"sPaginationType":"bs_full"
	});
	
}
