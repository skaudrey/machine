<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>JSP Page</title>

	<link rel="stylesheet" href="css/bootstrap.min.css" />
	<link rel="stylesheet" href="css/theme/default.css"  id="skin-switcher"/>
	<link rel="stylesheet" href="css/themecommen.css" />
	<link rel="stylesheet" href="css/font-awesome.min.css" />
	<script type="text/javascript" src="js/jquery/jquery-2.0.3.min.js" ></script>
	<script type="text/javascript" src="js/bootstrap/bootstrap.min.js" ></script>
	<script type="text/javascript" src="js/basic.js" ></script>
	<script type="text/javascript" src="js/jquery/jquery.cookie.min.js" ></script>
	<script type="text/javascript" src="js/control-left.js"></script>

</head>
<body>
<nav class="nav navbar-default navbar-fixed-top" role="navigation" id="header" >
	<div class="container-fluid "  style="margin-left: 0px;">
		<div class="navbar-header" >

			<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#example-navbar-collapse">
				<span class="sr-only">切换导航</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<div class="navbar-brand">
				<a href="#" class="title-logo ">地名志编辑系统</a>
				<div id="sidebar-collapse" class="sidebar-collapse btn">
					<i class="fa fa-bars " data-icon1="fa fa-align-center" data-icon2="fa fa-align-justify"></i>
				</div>
			</div>


		</div>
		<div  class="collapse navbar-collapse"  id="example-navbar-collapse">
			<ul class="nav navbar-nav">
				<li><a href="#"  >统计分析</a></li>
				<li><a href="#" >参考帮助</a></li>
				<li><a href="#" >系统配置</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right" >
				<li class="dropdown">
					<a  class="dropdown-toggle" href="#" data-toggle="dropdown"  aria-haspopup="true" aria-expanded="false">
						<i class="fa fa-edit"></i>样式<i class="fa fa-angle-down"></i>
					</a>
					<ul class="dropdown-menu " id="skin-switch">
						<li><a href="#"><i class="fa fa-leaf"></i>主题样式</a></li>
						<li><a href="#" data-skin="default">默认</a></li>
						<li><a href="#" data-skin="night">夜间</a></li>
						<li><a href="#" data-skin="earth">朴实</a></li>
						<li><a href="#" data-skin="utopia">黄色</a></li>
						<li><a href="#" data-skin="purple">紫色</a></li>
						<li><a href="#" data-skin="nature">自然</a></li>
						<li><a href="#" data-skin="graphite">墨黑</a></li>
					</ul>
				</li>
				<li class="dropdown" >
					<a  class="dropdown-toggle" href="#" data-toggle="dropdown"  aria-haspopup="true" aria-expanded="false">
						<img src="img/style.png">
						岱山县地名办<i class="fa fa-angle-down"></i>
					</a>
					<ul class="dropdown-menu">
						<li><a href="#"><i class="fa fa-edit"></i>修改密码</a></li>
						<li><a href="#"><i class="fa fa-power-off"></i>退出</a></li>
					</ul>
				</li>
			</ul>

		</div>
	</div>
</nav>
<div class="page">
	<div id="sidebar" class="sidebar">
		<div class="sidebar-menu nav-collapse">
			<div class="divide-20"></div>
			<div id="search-bar">
				<input type="text" class="form-control search"  placeholder="Search">
				<i class="fa fa-search search-icon"></i>
			</div>
			<ul id="leftcontent">

				<li class="has-sub">
					<a href="/DmzModual!getModual" class="">
						<i class="fa fa-th-large fa-fw"></i>
						<span class="menu-text">地名志系统</span>
						<i  class="fa fa-caret-left arrow"></i>

					</a>
				</li>
				<li class="has-sub">
					<a href="javascript:;" class="">
						<i class="fa fa-th-large fa-fw"></i>
						<span class="menu-text">第二篇 名胜古迹</span>
						<i  class="fa fa-caret-left arrow"></i>

					</a>
					<ul class="sub">
						<li class="has-sub-sub">
							<a href="javascript:;" class=""><span class="sub-menu-text">第一章 风景名胜</span>
								<i  class="fa fa-caret-left arrow"></i>

							</a>
							<ul class="sub-sub">
								<li><a class="" href="#"><span class="sub-sub-menu-text">第一节 风景名胜区</span></a></li>
								<li><a class="" href="#"><span class="sub-sub-menu-text">第二节 风景点</span></a></li>
							</ul>
						</li>
						<li><a class="" href="orders.html"><span class="sub-menu-text">第二章 古迹、古建筑</span></a></li>
						<li><a class="" href="orders.html"><span class="sub-menu-text">第三章 纪念地</span></a></li>
					</ul>
				</li>
			</ul>

		</div>
	</div>
	<div id="main-content">
		<div class="ifameContainer">
			<iframe id="iframe" marginwidth="0" marginheight="0"  frameborder="0" width="100%" scrolling="no" height="100%"
					width="100%">

			</iframe>
			<%--<script>--%>
			<%--$("#iframe").load(function () {--%>
			<%--alert($("#main-content").height());--%>
			<%--var mainheight = $(this).contents().find("html").height() + 30;--%>
			<%--$(this).height(mainheight);--%>

			<%--});--%>

			<%--</script>--%>
		</div>
	</div>
</div>

<s:iterator value="store3" status="st" var="obj">
	<input type="hidden" name="level" id="level<s:property value="#obj.priId" />" value="<s:property value="#obj.level" />">
	<input type="hidden" name="priId" id="priId<s:property value="#obj.priId" />" value="<s:property value="#obj.priId" />" >
	<input type="hidden" name="name" id="name<s:property value="#obj.priId" />" value="<s:property value="#obj.name" />" >
	<input type="hidden" name="action" id="action<s:property value="#obj.priId" />" value="<s:property value="#obj.action" />" >
	<input type="hidden" name="description" id="description<s:property value="#obj.priId" />" value="<s:property value="#obj.description" />" >
	<input type="hidden" name="upPriId" id="upPriId<s:property value="#obj.priId" />" value="<s:property value="#obj.upPriId" />" >
</s:iterator>
</body>
<script>



	var timer=window.setInterval("resetIframe($('#iframe'))",500);
	//        function reinitIframeEND(){
	//            var iframe = $("#iframe");
	//            try{
	//                   var bHeight = iframe.contentWindow.document.body.scrollHeight;
	//                   var dHeight = iframe.contentWindow.document.documentElement.scrollHeight;
	//                   var height = Math.max(bHeight, dHeight);
	//                  iframe.height = height;
	//                }catch (ex){}
	//            // 停止定时
	//            window.clearInterval(timer);
	//        }

	$(document).ready(addLeftItem());
	$(document).ready(resetIframe($('#iframe')));
</script>
</html>