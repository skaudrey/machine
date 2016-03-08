<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basepath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>JSP Page</title>

	<link rel="stylesheet" href="css/bootstrap/bootstrap.min.css" />
	<link rel="stylesheet" href="css/theme/default.css"  id="skin-switcher"/>
	<link rel="stylesheet" href="css/themecommen.css" />
	<link rel="stylesheet" href="css/font-awesome.min.css" />
	<script type="text/javascript" src="js/jquery/jquery-2.0.3.min.js" ></script>
	<script type="text/javascript" src="js/bootstrap/bootstrap.min.js" ></script>
	<script type="text/javascript" src="js/basic.js" ></script>
	<script type="text/javascript" src="js/jquery/jquery.cookie.min.js" ></script>
	<script type="text/javascript" src="js/control-left.js"></script>
    <!--滚动条插件  -->
    <link rel="stylesheet" href="css/dmz/jquery.mCustomScrollbar.css" />
    <script src="js/mScrollBar/jquery-ui-1.10.4.min.js"></script>
    <script src="js/mScrollBar/jquery.mousewheel.min.js"></script>
    <script src="js/mScrollBar/jquery.mCustomScrollbar.min.js"></script>
    <script src="js/dmz/setCustomScrollBar.js"></script>

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
						<i class="fa fa-user"></i>
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
	<div id="sidebar" class="sidebar scroller" style="height: 600px">
		<div class="sidebar-menu nav-collapse ">
			<div class="divide-20"></div>
			<div id="search-bar">
				<input type="text" class="form-control search"  placeholder="Search">
				<i class="fa fa-search search-icon"></i>
			</div>

                <ul id="leftcontent">
                    <li class="has-sub">
                        <a href="javascript:void(0);" class="" onclick=setIframe("")>
                            <i class="fa fa-th-large fa-fw"></i>
                            <span class="menu-text">空间信息基础平台管理</span>
                        </a>
                    </li>
                    <li class="has-sub">
                        <a href="javascript:void(0);" class="" onclick=setIframe("_privilegeAndDepartment/index.html")>
                            <i class="fa fa-th-large fa-fw"></i>
                            <span class="menu-text">用户部门权限管理</span>

                        </a>
						<ul class="sub">
							<li class="has-sub-sub" id="deptMnmt">
								<a href="#">
									<i class="fa fa-users"></i><span class="menu-text" >部门管理</span>
									<span class="arrow" id="toggleDeptTree"></span>
								</a>

							</li>
							<li class="has-sub-sub">
								<div>
									<ul id="treeDemo" class="ztree" style="display:none">
									</ul>
								</div>
							</li>
							<li id="actionMnmt" class="has-sub-sub">
								<a href="#">
									<i class="fa fa-users"></i><span class="menu-text">权限管理</span>

								</a>
							</li>
						</ul>
                    </li>
                    <li class="has-sub">
                        <a href="javascript:void(0);" class="" onclick=setIframe("")>
                            <i class="fa fa-th-large fa-fw"></i>
                            <span class="menu-text">地名数据管理</span>
                        </a>
                        <ul class="sub">
                            <li class="has-sub-sub">
                                <a href="javascript:void(0);" class="" onclick=setIframe("_placename/placeNames.html")>
                                    <i class="fa fa-th-large fa-fw"></i>
                                    <span class="sub-menu-text">地名数据录入</span>
                                </a>
                            </li>
                            <li class="has-sub-sub">
                                <a href="javascript:void(0);" class="" onclick=setIframe("")>
                                    <i class="fa fa-th-large fa-fw"></i>
                                    <span class="sub-menu-text">地名数据查询</span>
                                </a>
                            </li>
                            <li class="has-sub-sub">
                                <a href="javascript:void(0);" class="" onclick=setIframe("_placename/placesnameRepair.html")>
                                    <i class="fa fa-th-large fa-fw"></i>
                                    <span class="sub-menu-text">地名数据维护</span>
                                </a>
                            </li>
                            <li class="has-sub-sub">
                                <a href="javascript:void(0);" class="" onclick=setIframe("_placename/placesnameInput.html")>
                                    <i class="fa fa-th-large fa-fw"></i>
                                    <span class="sub-menu-text">地名数据导入</span>
                                </a>
                            </li>
                            <li class="has-sub-sub">
                                <a href="javascript:void(0);" class="" onclick=setIframe("_placename/placesnameOutput.html")>
                                    <i class="fa fa-th-large fa-fw"></i>
                                    <span class="sub-menu-text">地名数据导出</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="has-sub">
                        <a href="javascript:void(0);" class="" onclick=setIframe("")>
                            <i class="fa fa-th-large fa-fw"></i>
                            <span class="menu-text">地名业务管理</span>
                        </a>
                        <ul class="sub">
                            <li class="has-sub-sub">
                                <a href="javascript:void(0);" class="" onclick=setIframe("_placename/placeNames.html")>
                                    <i class="fa fa-th-large fa-fw"></i>
                                    <span class="sub-menu-text">地名预申报</span>
                                </a>
                            </li>
                            <li class="has-sub-sub">
                                <a href="javascript:void(0);" class="" onclick=setIframe("_placename/placefirstCheck.html")>
                                    <i class="fa fa-th-large fa-fw"></i>
                                    <span class="sub-menu-text">地名初审</span>
                                </a>
                            </li>
                            <li class="has-sub-sub">
                                <a href="javascript:void(0);" class="" onclick=setIframe("_placename/businessAccepted.html")>
                                    <i class="fa fa-th-large fa-fw"></i>
                                    <span class="sub-menu-text">地名业务办理</span>
                                </a>
                            </li>
                            <li class="has-sub-sub">
                                <a href="javascript:void(0);" class="" onclick=setIframe("_placename/placenamesLogout.html")>
                                    <i class="fa fa-th-large fa-fw"></i>
                                    <span class="sub-menu-text">地名数据注销</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="has-sub">
                        <a href="javascript:void(0);" class="" onclick=setIframe("_doorplate/batchManagement.html")>
                            <i class="fa fa-th-large fa-fw"></i>
                            <span class="menu-text">门牌业务管理</span>
                        </a>
                        <ul class="sub">
                            <li class="has-sub-sub">
                                <a href="javascript:void(0);" class="" onclick=setIframe("")>
                                    <i class="fa fa-th-large fa-fw"></i>
                                    <span class="sub-menu-text">门牌证录入</span>
                                </a>
                            </li>
                            <li class="has-sub-sub">
                                <a href="javascript:void(0);" class="" onclick=setIframe("")>
                                    <i class="fa fa-th-large fa-fw"></i>
                                    <span class="sub-menu-text">门牌查询</span>
                                </a>
                            </li>
                            <li class="has-sub-sub">
                                <a href="javascript:void(0);" class="" onclick=setIframe("")>
                                    <i class="fa fa-th-large fa-fw"></i>
                                    <span class="sub-menu-text">门牌证维护</span>
                                </a>
                            </li>
                            <li class="has-sub-sub">
                                <a href="javascript:void(0);" class="" onclick=setIframe("")>
                                    <i class="fa fa-th-large fa-fw"></i>
                                    <span class="sub-menu-text">门牌证注销</span>
                                </a>
                            </li>
                            <li class="has-sub-sub">
                                <a href="javascript:void(0);" class="" onclick=setIframe("_doorplate/batchManagement.html")>
                                    <i class="fa fa-th-large fa-fw"></i>
                                    <span class="sub-menu-text">门牌证批量管理</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="has-sub">
                        <a href="javascript:void(0);" class="" onclick=setIframe("")>
                            <i class="fa fa-th-large fa-fw"></i>
                            <span class="menu-text">行政区划管理</span>
                        </a>
                        <ul class="sub">
                            <li class="has-sub-sub">
                                <a href="javascript:void(0);" class="" onclick=setIframe("_xzqh/divisionEstablishment.html")>
                                    <i class="fa fa-th-large fa-fw"></i>
                                    <span class="sub-menu-text">行政区划设立</span>
                                </a>
                            </li>
                            <li class="has-sub-sub">
                                <a href="javascript:void(0);" class="" onclick=setIframe("")>
                                    <i class="fa fa-th-large fa-fw"></i>
                                    <span class="sub-menu-text">行政区划查询</span>
                                </a>
                            </li>
                            <li class="has-sub-sub">
                                <a href="javascript:void(0);" class="" onclick=setIframe("_xzqh/divisionAdjustment.html")>
                                    <i class="fa fa-th-large fa-fw"></i>
                                    <span class="sub-menu-text">行政区划调整</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="has-sub">
                        <a href="_dmz/dmz.jsp">
                            <i class="fa fa-th-large fa-fw"></i>
                            <span class="menu-text">界桩界限管理</span>
                        </a>
                    </li>
                    <li class="has-sub">
                        <a href="_dmz/dmz.jsp" class="">
                            <i class="fa fa-th-large fa-fw"></i>
                            <span class="menu-text">地名志系统</span>

                        </a>
                    </li>
                    <li class="has-sub">
                        <a href="javascript:void(0);" class="" onclick=setIframe("")>
                            <i class="fa fa-th-large fa-fw"></i>
                            <span class="menu-text">统计与分析</span>
                        </a>
                    </li>
                    <li class="has-sub">
                        <a href="javascript:void(0);" class="" onclick=setIframe("")>
                            <i class="fa fa-th-large fa-fw"></i>
                            <span class="menu-text">地名成果应用</span>
                        </a>
                    </li>
                    <li class="has-sub">
                        <a href="javascript:void(0);" class="" onclick=setIframe("")>
                            <i class="fa fa-th-large fa-fw"></i>
                            <span class="menu-text">系统维护子系统</span>
                        </a>
                    </li>
                    <li class="has-sub">
                        <a href="javascript:;" class="">
                            <i class="fa fa-th-large fa-fw"></i>
                            <span class="menu-text">统计与分析</span>
                        </a>
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

<%--<s:iterator value="store3" status="st" var="obj">--%>
	<%--<input type="hidden" name="level" id="level<s:property value="#obj.priId" />" value="<s:property value="#obj.level" />">--%>
	<%--<input type="hidden" name="priId" id="priId<s:property value="#obj.priId" />" value="<s:property value="#obj.priId" />" >--%>
	<%--<input type="hidden" name="name" id="name<s:property value="#obj.priId" />" value="<s:property value="#obj.name" />" >--%>
	<%--<input type="hidden" name="action" id="action<s:property value="#obj.priId" />" value="<s:property value="#obj.action" />" >--%>
	<%--<input type="hidden" name="description" id="description<s:property value="#obj.priId" />" value="<s:property value="#obj.description" />" >--%>
	<%--<input type="hidden" name="upPriId" id="upPriId<s:property value="#obj.priId" />" value="<s:property value="#obj.upPriId" />" >--%>
<%--</s:iterator>--%>
</body>
<script>


    $(document).ready($("#sidebar").mCustomScrollbar({ theme:"dark-thin"}));
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

//	$(document).ready(addLeftItem());
	$(document).ready(resetIframe($('#iframe')));
</script>
</html>