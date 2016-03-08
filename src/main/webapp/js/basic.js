var App=function(){
	var currentPage = ''; // current page
	var collapsed = false; //sidebar collapsed
	var is_mobile = false; //is screen mobile?
	var is_mini_menu = false; //is mini-menu activated
	var is_fixed_header = false; //is fixed header activated
	var responsiveFunctions = []; //responsive function holder

	/*-----------------------------------------------------------------------------------*/
	/*	To get the correct viewport width based on  http://andylangton.co.uk/articles/javascript/get-viewport-size-javascript/
	 /*-----------------------------------------------------------------------------------*/
	var getViewPort = function () {
		var e = window, a = 'inner';
		if (!('innerWidth' in window)) {
			a = 'client';
			e = document.documentElement || document.body;
		}
		return {
			width: e[a + 'Width'],
			height: e[a + 'Height']
		}
	}
	/*-----------------------------------------------------------------------------------*/
	/*	Check layout size
	 /*-----------------------------------------------------------------------------------*/
	var checkLayout = function() {
		//Check if sidebar has mini-menu
		is_mini_menu = $('#sidebar').hasClass('mini-menu');
		//Check if fixed header is activated
		is_fixed_header = $('#header').hasClass('navbar-fixed-top');
	}

	/*-----------------------------------------------------------------------------------*/
	/*	Sidebar & Main Content size match
	 /*-----------------------------------------------------------------------------------*/
	var handleSidebarAndContentHeight=function(){
		//设置主要内容区域的最小高度
		var iframe=$("#iframe");
		var sidebar=$("#sidebar");
		var body=$("body");
		var height;
		if(body.hasClass("sidebar-fixed")){
			height=$(window).height-$("#header").height()+1;

		}else{
			height=sidebar.height()+20;
		}
		if(height>=iframe.height()){
			iframe.attr("style","min-height:"+height+"px !important");
		}
	}
	/*-----------------------------------------------------------------------------------*/
	/*	Sidebar
	 /*-----------------------------------------------------------------------------------*/
	var handleSidebar=function(){
		//解决一级菜单
		jQuery(".sidebar-menu .has-sub >a").click(function(){
			var thisElement=$(this);
			var slideOffest=-200;
			var slideSpeed=200;

			var sub=jQuery(this).next();
			if(sub.is(":visible")){//如果可见：则折叠
				jQuery(".arrow",jQuery(this)).removeClass("open");
				jQuery(".arrow",jQuery(this)).removeClass("fa-caret-down");
				jQuery(".arrow",jQuery(this)).addClass("fa-caret-left");
				jQuery(this).parent().removeClass("open");
				sub.slideUp(slideSpeed,function(){
					if($("#sidebar").hasClass(".sidebar-fixed")==false){
						App.scrollTo(thisElement,slideOffest);
					}
					handleSidebarAndContentHeight();
				})

			}else{
				jQuery(".arrow",jQuery(this)).addClass("open");
				jQuery(".arrow",jQuery(this)).removeClass("fa-caret-left");
				jQuery(".arrow",jQuery(this)).addClass("fa-caret-down");
				jQuery("this").parent().addClass("open");
				sub.slideDown(slideSpeed,function(){
					if($("#sidebar").hasClass(".sidebar-fixed")==false){
						App.scrollTo(thisElement,slideOffest);
					}
					handleSidebarAndContentHeight();
				})
			}
		});

		jQuery("li[class^='has-sub-sub']>a").click(function(){
			//讲一个展开的同时，折叠上一个
//			var last=jQuery(".has-sub-sub.open",$(".sidebar-menu"));
//			last.removeClass("open");
//			jQuery(".arrow",last).removeClass("open");
//			jQuery(".sub-sub",last).slideUp(200);//这一句话应该出错了“.sub-sub”
			var sub=jQuery(this).next();
			if(sub.is(":visible")){
				jQuery(".arrow",jQuery(this)).removeClass("open");
				jQuery(".arrow",jQuery(this)).removeClass("fa-caret-down");
				jQuery(".arrow",jQuery(this)).addClass("fa-caret-left");
				jQuery(this).parent().removeClass("open");
				sub.slideUp(200);
			}else{
				jQuery(".arrow",jQuery(this)).addClass("open");
				jQuery(".arrow",jQuery(this)).removeClass("fa-caret-left");
				jQuery(".arrow",jQuery(this)).addClass("fa-caret-down");
				jQuery(this).parent().addClass("open");
				sub.slideDown(200);
			}
		});
	}
	var collapseSidebar=function(){
		var iconElem=document.getElementById("sidebar-collapse").querySelector("[class*='fa-']");
		var iconLeft=iconElem.getAttribute("data-icon1");
		var iconRight=iconElem.getAttribute("data-icon2");
		var ifCollapaseSidebar= $.cookie("mini_sidebar");
		if(ifCollapaseSidebar=="1"){
			/* For Navbar */
			jQuery(".navbar-brand").addClass("mini-menu");
			/* For sidebar */
			jQuery("#sidebar").addClass("mini-menu");
			jQuery("#main-content").addClass("margin-left-50");
			jQuery(".sidebar-collapse i").removeClass(iconLeft);
			jQuery(".sidebar-collapse i").addClass(iconRight);
			jQuery("ul[class^='sub']").addClass("mini-menu");
			jQuery("li[class^='has-sub']").addClass("mini-menu");
			/* Remove placeholder from Search Bar */
			jQuery(".search").removeAttr("placeholder");
			collapsed=true;
			/* Set a cookie so that mini-sidebar persists */
			$.cookie("mini_sidebar","1");

		}else{
			/* For Navbar */
			jQuery(".navbar-brand").removeClass("mini-menu");
			/* For sidebar */
			jQuery("#sidebar").removeClass("mini-menu");
			jQuery("#main-content").removeClass("margin-left-50");
			jQuery(".sidebar-collapse i").addClass(iconLeft);
			jQuery(".sidebar-collapse i").removeClass(iconRight);
			jQuery("ul[class^='sub']").removeClass("mini-menu");
			jQuery("li[class^='has-sub']").removeClass("mini-menu");
			/* Remove placeholder from Search Bar */
			jQuery(".search").attr("placeholder","Search");
			collapsed=false;
			/* Set a cookie so that mini-sidebar persists */
			$.cookie("mini_sidebar","0");
		}

	}
	/*-----------------------------------------------------------------------------------*/
	/*	Sidebar Collapse
	 /*-----------------------------------------------------------------------------------*/
	var handleSidebarCollapse=function(){
		var viewport=getViewPort();
		if($.cookie("mini_sidebar")=="1"){
			jQuery(".navbar-brand").addClass("mini-menu");
			jQuery("#sidebar").addClass("mini-menu");
			jQuery("#main-content").addClass("margin-left-50");
			collapsed=true;
		}

		jQuery(".sidebar-collapse").click(function(){
			if(is_mobile && !(is_mini_menu)){
				if(collapsed){
					jQuery("body").removeClass("slidebar");
					jQuery(".siderbar").removeClass("sidebar-fixed");
					if(is_fixed_header){
						jQuery("#header").addClass("navbar-fixed-top");
						jQuery("#main-content").addClass("margin-top-100");
					}
					collapsed=false;
					$.cookie("mini_sidebar","0");
				}else{
					jQuery("body").addClass("slidebar");
					jQuery(".siderbar").addClass("sidebar-fixed");
					if(is_fixed_header){
						jQuery("#header").removeClass("navbar-fixed-top");
						jQuery("#main-content").removeClass("margin-top-100");
					}
					collapsed=false;
					$.cookie("mini_sidebar","1");
					handleMobileSidebar();
				}
			}else{
				var iconElem=document.getElementById("sidebar-collapse").querySelector('i');
				var iconLeft=iconElem.getAttribute("data-icon1");
				var iconRight=iconElem.getAttribute("data-icon2");
				if(collapsed){
					/* For Navbar */
					jQuery(".navbar-brand").removeClass("mini-menu");
					/* For sidebar */
					jQuery("#sidebar").removeClass("mini-menu");
					jQuery("#main-content").removeClass("margin-left-50");
					jQuery(".sidebar-collapse i").addClass(iconLeft);
					jQuery(".sidebar-collapse i").removeClass(iconRight);
					jQuery("ul[class^='sub']").removeClass("mini-menu");
					jQuery("li[class^='has-sub']").removeClass("mini-menu");
					/* Remove placeholder from Search Bar */
					jQuery(".search").attr("placeholder","Search");
					collapsed=false;
					/* Set a cookie so that mini-sidebar persists */
					$.cookie("mini_sidebar","0");
				}else{
					/* For Navbar */
					jQuery(".navbar-brand").addClass("mini-menu");
					/* For sidebar */
					jQuery("#sidebar").addClass("mini-menu");
					jQuery("#main-content").addClass("margin-left-50");
					jQuery(".sidebar-collapse i").removeClass(iconLeft);
					jQuery(".sidebar-collapse i").addClass(iconRight);
					jQuery("ul[class^='sub']").addClass("mini-menu");
					jQuery("li[class^='has-sub']").addClass("mini-menu");
					/* Remove placeholder from Search Bar */
					jQuery(".search").removeAttr("placeholder");
					collapsed=true;
					/* Set a cookie so that mini-sidebar persists */
					$.cookie("mini_sidebar","1");

				}
				$("#main-content").on("resize",function(e){
					e.stopPropagation();
				});
			}
		});
	}
	/*-----------------------------------------------------------------------------------*/
	/*	Handles theme skin switches
	 /*-----------------------------------------------------------------------------------*/
	var handleThemeSkins = function () {
		// Handle theme colors
		var setSkin = function (color) {
			$('#skin-switcher').attr("href", "/css/theme/" + color + ".css");
			$.cookie('skin_color', color);
		}
		$('#skin-switch > li> a').click(function () {
			var color = $(this).data("skin");
			setSkin(color);
		});

		//Check which theme skin is set
		if ($.cookie('skin_color')) {
			setSkin($.cookie('skin_color'));
		}
	}
	/*-----------------------------------------------------------------------------------*/
	/*	Handle Fixed Sidebar on Mobile devices
	 /*-----------------------------------------------------------------------------------*/
	var handleMobileSidebar=function(){
		var menu=$(".sidebar");
		if(menu.parent(".slimScrollDiv").size()==1){
			// destroy existing instance before updating the height
//			menu.slimScroll({
//				destroy:true
//			});
			menu.removeAttr("style");
			$("#sidebar").removeAttr("style");

		}
//		menu.slimScroll({
//			size:"7px",
//			color:"#a1b2bd",
//			opacity: .3,
//			height:"100%",
//			allPageScroll:false,
//			disableFadeOut:false
//		});
	}


	return {

		//Initialise theme pages
		init: function () {



			checkLayout();	//Function to check if mini menu/fixed header is activated
			handleSidebar(); //Function to display the sidebar
			handleSidebarCollapse(); //Function to hide or show sidebar
			handleSidebarAndContentHeight();  //Function to hide sidebar and main content height
			collapseSidebar();
			handleMobileSidebar();
			handleThemeSkins();
		},

		//Set page
		setPage: function (name) {
			currentPage = name;
		},
		scrollTo: function (el, offeset) {
			pos = (el && el.size() > 0) ? el.offset().top : 0;
			jQuery('html,body').animate({
				scrollTop: pos + (offeset ? offeset : 0)
			}, 'slow');
		},

		// function to scroll to the top
		scrollTop: function () {
			App.scrollTo();
		},
	}
}();
jQuery(document).ready(function() {
	App.setPage("index");  //Set current page
	App.init(); //Initialise plugins and elements
});
