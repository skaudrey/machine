function collapseBox(index)
{
	if(index==1)
	{
		jQuery(".expand").addClass("collapse").removeClass("expand");
		       
		       
		       jQuery(".collapse").html("<i class='fa fa-chevron-up'></i>隐藏");

		
                //var i = jQuery(".collapse").children(".fa-chevron-down");
				//i.removeClass("fa-chevron-down").addClass("fa-chevron-up");
               $(".box-body").slideDown(200);
	}
	else
	{
		jQuery(".collapse").addClass("expand").removeClass("collapse");
		jQuery(".expand").html("<i class='fa fa-chevron-down'></i>展开");
                //var i = jQuery(".expand").children(".fa-chevron-up");
				//i.removeClass("fa-chevron-up").addClass("fa-chevron-down");
               $(".box-body").slideUp(200);
	}
	
}

function layoutBox(index)
{
	if(index==1)
	{
		
		$(".box-container").removeClass("col-sm-6").addClass("col-sm-12");
	}
	else if(index==2)
	{
		$(".box-container").removeClass("col-sm-12").addClass("col-sm-6");
	}
}
function showContent()
{
//jQuery(this).html();
	 if($(".btn-showContent span").html()=="缩略模式")
	 {
	 $(".slimScrollDiv,.scroller").css("overflow","").css("width","").css("height","");
	// $(".scroller").css("overflow","").css("width","").css("height","");
	 $(".btn-showContent span").html("全显模式");
	// $(".reload").trigger('click');
	 }
	 else
	 {
	 	 $(".btn-showContent span").html("缩略模式");
	 	 $(".slimScrollDiv,.scroller").css("overflow","hidden").css("width","100%").css("height","120px");
	 //$(".scroller").css("overflow","").css("width","").css("height","");
	 }

}

