<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
	String path = request.getContextPath();
	String basepath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>JSP Page</title>

	<link rel="stylesheet" href="<%=basepath%>/css/bootstrap/bootstrap.min.css" />
	<link rel="stylesheet" href="<%=basepath%>/css/theme/default.css"  id="skin-switcher"/>
	<!--<link rel="stylesheet" href="../css/themecommen_.css" />-->
	<link rel="stylesheet" href="<%=basepath%>/css/font-awesome.min.css" />
	<link rel="stylesheet" href="<%=basepath%>/css/dmz/leaderDMZ.css" />
	<script type="text/javascript" src="<%=basepath%>/js/jquery/jquery-2.0.3.min.js" ></script>

	<script type="text/javascript" src="<%=basepath%>/js/bootstrap/bootstrap.min.js" ></script>
	<script type="text/javascript" src="<%=basepath%>/js/basic.js" ></script>
	<script type="text/javascript" src="<%=basepath%>/js/jquery/jquery.cookie.min.js" ></script>
	<script type="text/javascript" src="<%=basepath%>/js/control-left.js"></script>
	<!--滚动条插件  -->
	<link rel="stylesheet" href="<%=basepath%>/css/dmz/jquery.mCustomScrollbar_my.css" />
	<script src="<%=basepath%>/js/mScrollBar/jquery-ui-1.10.4.min.js"></script>
	<script src="<%=basepath%>/js/mScrollBar/jquery.mousewheel.min.js"></script>
	<script src="<%=basepath%>/js/mScrollBar/jquery.mCustomScrollbar.min.js"></script>
	<script src="<%=basepath%>/js/dmz/setCustomScrollBar.js"></script>
	<script type="text/javascript" src="<%=basepath%>/js/dmz/leaderDmz.js" ></script>
	<style>
		#sidebar{
			padding: 0!important;
			/*width: 100%!important;*/
		}
	</style>

<div class="container-fluid ">
	<div class="row sidebar " id="sidebar">
		<div class="col-sm-9 col-sm-offset-1   sidebar-menu" >
			<h3 class="text-center position-fixed">目录模板</h3>
            <div class="divide-20"></div>
			<div class="scroller">
				<ul id="leftcontent" class="" >



					<li id="id0" class="has-sub"><a href="#" class=""><i class="fa fa-th-large fa-fw"></i><span class="menu-text">封面</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub"></ul></li><li id="id1" class="has-sub"><a href="#" class=""><i class="fa fa-th-large fa-fw"></i><span class="menu-text">政区图</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub"></ul></li><li id="id2" class="has-sub"><a href="#" class=""><i class="fa fa-th-large fa-fw"></i><span class="menu-text">卫星影像图</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub"></ul></li><li id="id3" class="has-sub"><a href="#" class=""><i class="fa fa-th-large fa-fw"></i><span class="menu-text">城区图</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub"></ul></li><li id="id4" class="has-sub"><a href="#" class=""><i class="fa fa-th-large fa-fw"></i><span class="menu-text">其他图</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub"></ul></li><li id="id5" class="has-sub"><a href="#" class=""><i class="fa fa-th-large fa-fw"></i><span class="menu-text">序言</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub"></ul></li><li id="id6" class="has-sub"><a href="#" class=""><i class="fa fa-th-large fa-fw"></i><span class="menu-text">凡例</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub"></ul></li><li id="id7" class="has-sub"><a href="#" class=""><i class="fa fa-th-large fa-fw"></i><span class="menu-text">目录</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub"></ul></li><li id="id8" class="has-sub"><a href="#" class=""><i class="fa fa-th-large fa-fw"></i><span class="menu-text">综述</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub"><li id="id9" class="has-sub-sub"><a href="#"><span class="menu-text">概况</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub-sub"></ul></li><li id="id10" class="has-sub-sub"><a href="#"><span class="menu-text">历史沿革与人口迁移</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub-sub"></ul></li><li id="id11" class="has-sub-sub"><a href="#"><span class="menu-text">基层政权组织历史沿革</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub-sub"></ul></li></ul></li><li id="id12" class="has-sub"><a href="#" class=""><i class="fa fa-th-large fa-fw"></i><span class="menu-text">行政区域和基层政权组织</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub"></ul></li><li id="id13" class="has-sub"><a href="#" class=""><i class="fa fa-th-large fa-fw"></i><span class="menu-text">非行政区域</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub"><li id="id14" class="has-sub-sub"><a href="#"><span class="menu-text">矿区</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub-sub"></ul></li><li id="id15" class="has-sub-sub"><a href="#"><span class="menu-text">农林牧渔区</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub-sub"></ul></li><li id="id16" class="has-sub-sub"><a href="#"><span class="menu-text">工业区，开发区</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub-sub"></ul></li><li id="id17" class="has-sub-sub"><a href="#"><span class="menu-text">边贸区，口岸</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub-sub"></ul></li><li id="id18" class="has-sub-sub"><a href="#"><span class="menu-text">军事区</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub-sub"></ul></li><li id="id19" class="has-sub-sub"><a href="#"><span class="menu-text">地片</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub-sub"></ul></li><li id="id20" class="has-sub-sub"><a href="#"><span class="menu-text">区片</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub-sub"></ul></li><li id="id21" class="has-sub-sub"><a href="#"><span class="menu-text">其他</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub-sub"></ul></li></ul></li><li id="id22" class="has-sub"><a href="#" class=""><i class="fa fa-th-large fa-fw"></i><span class="menu-text">居民点</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub"><li id="id23" class="has-sub-sub"><a href="#"><span class="menu-text">城镇居民点</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub-sub"></ul></li><li id="id24" class="has-sub-sub"><a href="#"><span class="menu-text">农村居民点</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub-sub"></ul></li><li id="id25" class="has-sub-sub"><a href="#"><span class="menu-text">工矿点</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub-sub"></ul></li><li id="id26" class="has-sub-sub"><a href="#"><span class="menu-text">农林牧场等</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub-sub"><li id="id27" class="has-sub-sub-sub"><a href="#"><span class="menu-text">农场</span></a><ul></ul></li><li id="id28" class="has-sub-sub-sub"><a href="#"><span class="menu-text">林场</span></a><ul></ul></li><li id="id29" class="has-sub-sub-sub"><a href="#"><span class="menu-text">牧场</span></a><ul></ul></li><li id="id30" class="has-sub-sub-sub"><a href="#"><span class="menu-text">其他</span></a><ul></ul></li></ul></li><li id="id31" class="has-sub-sub"><a href="#"><span class="menu-text">其他</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub-sub"></ul></li></ul></li><li id="id32" class="has-sub"><a href="#" class=""><i class="fa fa-th-large fa-fw"></i><span class="menu-text">交通运输设施</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub"><li id="id33" class="has-sub-sub"><a href="#"><span class="menu-text">水上运输</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub-sub"><li id="id34" class="has-sub-sub-sub"><a href="#"><span class="menu-text">锚地</span></a><ul></ul></li><li id="id35" class="has-sub-sub-sub"><a href="#"><span class="menu-text">海港</span></a><ul></ul></li><li id="id36" class="has-sub-sub-sub"><a href="#"><span class="menu-text">河港</span></a><ul></ul></li><li id="id37" class="has-sub-sub-sub"><a href="#"><span class="menu-text">船闸，升船机站</span></a><ul></ul></li><li id="id38" class="has-sub-sub-sub"><a href="#"><span class="menu-text">渡口</span></a><ul></ul></li><li id="id39" class="has-sub-sub-sub"><a href="#"><span class="menu-text">其他</span></a><ul></ul></li></ul></li><li id="id40" class="has-sub-sub"><a href="#"><span class="menu-text">公路运输</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub-sub"><li id="id41" class="has-sub-sub-sub"><a href="#"><span class="menu-text">公路</span></a><ul></ul></li><li id="id42" class="has-sub-sub-sub"><a href="#"><span class="menu-text">长途汽车站</span></a><ul></ul></li><li id="id43" class="has-sub-sub-sub"><a href="#"><span class="menu-text">收费站</span></a><ul></ul></li><li id="id44" class="has-sub-sub-sub"><a href="#"><span class="menu-text">其他</span></a><ul></ul></li></ul></li><li id="id45" class="has-sub-sub"><a href="#"><span class="menu-text">铁路运输</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub-sub"><li id="id46" class="has-sub-sub-sub"><a href="#"><span class="menu-text">铁路</span></a><ul></ul></li><li id="id47" class="has-sub-sub-sub"><a href="#"><span class="menu-text">火车站</span></a><ul></ul></li><li id="id48" class="has-sub-sub-sub"><a href="#"><span class="menu-text">道口</span></a><ul></ul></li><li id="id49" class="has-sub-sub-sub"><a href="#"><span class="menu-text">其他</span></a><ul></ul></li></ul></li><li id="id50" class="has-sub-sub"><a href="#"><span class="menu-text">航空与管道运输</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub-sub"><li id="id51" class="has-sub-sub-sub"><a href="#"><span class="menu-text">航空港</span></a><ul></ul></li><li id="id52" class="has-sub-sub-sub"><a href="#"><span class="menu-text">管道</span></a><ul></ul></li><li id="id53" class="has-sub-sub-sub"><a href="#"><span class="menu-text">管站</span></a><ul></ul></li><li id="id54" class="has-sub-sub-sub"><a href="#"><span class="menu-text">其他</span></a><ul></ul></li></ul></li><li id="id55" class="has-sub-sub"><a href="#"><span class="menu-text">城镇交通运输</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub-sub"><li id="id56" class="has-sub-sub-sub"><a href="#"><span class="menu-text">道路街巷</span></a><ul></ul></li><li id="id57" class="has-sub-sub-sub"><a href="#"><span class="menu-text">有轨交通线路</span></a><ul></ul></li><li id="id58" class="has-sub-sub-sub"><a href="#"><span class="menu-text">公共交通车站</span></a><ul></ul></li><li id="id59" class="has-sub-sub-sub"><a href="#"><span class="menu-text">停车场</span></a><ul></ul></li><li id="id60" class="has-sub-sub-sub"><a href="#"><span class="menu-text">其他</span></a><ul></ul></li></ul></li><li id="id61" class="has-sub-sub"><a href="#"><span class="menu-text">交通运输附属设施</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub-sub"><li id="id62" class="has-sub-sub-sub"><a href="#"><span class="menu-text">桥梁</span></a><ul></ul></li><li id="id63" class="has-sub-sub-sub"><a href="#"><span class="menu-text">隧道</span></a><ul></ul></li><li id="id64" class="has-sub-sub-sub"><a href="#"><span class="menu-text">道班</span></a><ul></ul></li><li id="id65" class="has-sub-sub-sub"><a href="#"><span class="menu-text">检查站</span></a><ul></ul></li><li id="id66" class="has-sub-sub-sub"><a href="#"><span class="menu-text">环岛路口</span></a><ul></ul></li><li id="id67" class="has-sub-sub-sub"><a href="#"><span class="menu-text">加油站</span></a><ul></ul></li><li id="id68" class="has-sub-sub-sub"><a href="#"><span class="menu-text">灯塔，导航台</span></a><ul></ul></li><li id="id69" class="has-sub-sub-sub"><a href="#"><span class="menu-text">其他</span></a><ul></ul></li></ul></li><li id="id70" class="has-sub-sub"><a href="#"><span class="menu-text">其他</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub-sub"><li id="id71" class="has-sub-sub-sub"><a href="#"><span class="menu-text">索道，扶梯</span></a><ul></ul></li><li id="id72" class="has-sub-sub-sub"><a href="#"><span class="menu-text">其他</span></a><ul></ul></li></ul></li></ul></li><li id="id73" class="has-sub"><a href="#" class=""><i class="fa fa-th-large fa-fw"></i><span class="menu-text">水利，电力，通信设施</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub"><li id="id74" class="has-sub-sub"><a href="#"><span class="menu-text">井</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub-sub"></ul></li><li id="id75" class="has-sub-sub"><a href="#"><span class="menu-text">蓄水区</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub-sub"><li id="id76" class="has-sub-sub-sub"><a href="#"><span class="menu-text">池塘</span></a><ul></ul></li><li id="id77" class="has-sub-sub-sub"><a href="#"><span class="menu-text">海塘</span></a><ul></ul></li><li id="id78" class="has-sub-sub-sub"><a href="#"><span class="menu-text">水库</span></a><ul></ul></li><li id="id79" class="has-sub-sub-sub"><a href="#"><span class="menu-text">蓄洪区</span></a><ul></ul></li><li id="id80" class="has-sub-sub-sub"><a href="#"><span class="menu-text">泄洪区</span></a><ul></ul></li><li id="id81" class="has-sub-sub-sub"><a href="#"><span class="menu-text">灌区</span></a><ul></ul></li><li id="id82" class="has-sub-sub-sub"><a href="#"><span class="menu-text">其他</span></a><ul></ul></li></ul></li><li id="id83" class="has-sub-sub"><a href="#"><span class="menu-text">排灌设施</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub-sub"><li id="id84" class="has-sub-sub-sub"><a href="#"><span class="menu-text">灌溉渠</span></a><ul></ul></li><li id="id85" class="has-sub-sub-sub"><a href="#"><span class="menu-text">排水沟</span></a><ul></ul></li><li id="id86" class="has-sub-sub-sub"><a href="#"><span class="menu-text">渡槽</span></a><ul></ul></li><li id="id87" class="has-sub-sub-sub"><a href="#"><span class="menu-text">泵站</span></a><ul></ul></li><li id="id88" class="has-sub-sub-sub"><a href="#"><span class="menu-text">涵洞</span></a><ul></ul></li><li id="id89" class="has-sub-sub-sub"><a href="#"><span class="menu-text">其他</span></a><ul></ul></li></ul></li><li id="id90" class="has-sub-sub"><a href="#"><span class="menu-text">堤堰</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub-sub"><li id="id91" class="has-sub-sub-sub"><a href="#"><span class="menu-text">海堤</span></a><ul></ul></li><li id="id92" class="has-sub-sub-sub"><a href="#"><span class="menu-text">河堤</span></a><ul></ul></li><li id="id93" class="has-sub-sub-sub"><a href="#"><span class="menu-text">湖堤</span></a><ul></ul></li><li id="id94" class="has-sub-sub-sub"><a href="#"><span class="menu-text">闸坝</span></a><ul></ul></li><li id="id95" class="has-sub-sub-sub"><a href="#"><span class="menu-text">拦河坝</span></a><ul></ul></li><li id="id96" class="has-sub-sub-sub"><a href="#"><span class="menu-text">其他</span></a><ul></ul></li></ul></li><li id="id97" class="has-sub-sub"><a href="#"><span class="menu-text">运河</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub-sub"></ul></li><li id="id98" class="has-sub-sub"><a href="#"><span class="menu-text">电力设施</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub-sub"><li id="id99" class="has-sub-sub-sub"><a href="#"><span class="menu-text">输变电线路</span></a><ul></ul></li><li id="id100" class="has-sub-sub-sub"><a href="#"><span class="menu-text">发电站</span></a><ul></ul></li><li id="id101" class="has-sub-sub-sub"><a href="#"><span class="menu-text">输变电站</span></a><ul></ul></li><li id="id102" class="has-sub-sub-sub"><a href="#"><span class="menu-text">其他</span></a><ul></ul></li></ul></li><li id="id103" class="has-sub-sub"><a href="#"><span class="menu-text">其他</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub-sub"></ul></li><li id="id224" class="has-sub-sub"><a href="#"><span class="menu-text">通信设施</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub-sub"><li id="id225" class="has-sub-sub-sub"><a href="#"><span class="menu-text">通信线路</span></a><ul></ul></li><li id="id226" class="has-sub-sub-sub"><a href="#"><span class="menu-text">通信基站</span></a><ul></ul></li><li id="id227" class="has-sub-sub-sub"><a href="#"><span class="menu-text">其他</span></a><ul></ul></li></ul></li></ul></li><li id="id104" class="has-sub"><a href="#" class=""><i class="fa fa-th-large fa-fw"></i><span class="menu-text">纪念地，旅游地</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub"><li id="id105" class="has-sub-sub"><a href="#"><span class="menu-text">纪念地</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub-sub"><li id="id106" class="has-sub-sub-sub"><a href="#"><span class="menu-text">人物纪念地</span></a><ul></ul></li><li id="id107" class="has-sub-sub-sub"><a href="#"><span class="menu-text">事物纪念地</span></a><ul></ul></li><li id="id108" class="has-sub-sub-sub"><a href="#"><span class="menu-text">宗教纪念地</span></a><ul></ul></li><li id="id109" class="has-sub-sub-sub"><a href="#"><span class="menu-text">其他</span></a><ul></ul></li></ul></li><li id="id110" class="has-sub-sub"><a href="#"><span class="menu-text">公园</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub-sub"></ul></li><li id="id111" class="has-sub-sub"><a href="#"><span class="menu-text">风景名胜区（点）</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub-sub"></ul></li><li id="id112" class="has-sub-sub"><a href="#"><span class="menu-text">自然保护区</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub-sub"></ul></li><li id="id113" class="has-sub-sub"><a href="#"><span class="menu-text">其他</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub-sub"></ul></li></ul></li><li id="id114" class="has-sub"><a href="#" class=""><i class="fa fa-th-large fa-fw"></i><span class="menu-text">建筑物</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub"><li id="id115" class="has-sub-sub"><a href="#"><span class="menu-text">房屋</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub-sub"></ul></li><li id="id116" class="has-sub-sub"><a href="#"><span class="menu-text">亭台碑塔</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub-sub"><li id="id117" class="has-sub-sub-sub"><a href="#"><span class="menu-text">亭</span></a><ul></ul></li><li id="id118" class="has-sub-sub-sub"><a href="#"><span class="menu-text">台</span></a><ul></ul></li><li id="id119" class="has-sub-sub-sub"><a href="#"><span class="menu-text">碑</span></a><ul></ul></li><li id="id120" class="has-sub-sub-sub"><a href="#"><span class="menu-text">塔</span></a><ul></ul></li><li id="id121" class="has-sub-sub-sub"><a href="#"><span class="menu-text">其他</span></a><ul></ul></li></ul></li><li id="id122" class="has-sub-sub"><a href="#"><span class="menu-text">场</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub-sub"><li id="id123" class="has-sub-sub-sub"><a href="#"><span class="menu-text">广场</span></a><ul></ul></li><li id="id124" class="has-sub-sub-sub"><a href="#"><span class="menu-text">体育场</span></a><ul></ul></li><li id="id125" class="has-sub-sub-sub"><a href="#"><span class="menu-text">其他</span></a><ul></ul></li></ul></li><li id="id126" class="has-sub-sub"><a href="#"><span class="menu-text">城堡，墙</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub-sub"><li id="id127" class="has-sub-sub-sub"><a href="#"><span class="menu-text">城堡</span></a><ul></ul></li><li id="id128" class="has-sub-sub-sub"><a href="#"><span class="menu-text">墙</span></a><ul></ul></li><li id="id129" class="has-sub-sub-sub"><a href="#"><span class="menu-text">其他</span></a><ul></ul></li></ul></li><li id="id130" class="has-sub-sub"><a href="#"><span class="menu-text">其他</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub-sub"></ul></li></ul></li><li id="id131" class="has-sub"><a href="#" class=""><i class="fa fa-th-large fa-fw"></i><span class="menu-text">单位，部门</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub"><li id="id132" class="has-sub-sub"><a href="#"><span class="menu-text">党政机关</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub-sub"></ul></li><li id="id133" class="has-sub-sub"><a href="#"><span class="menu-text">民间组织</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub-sub"></ul></li><li id="id134" class="has-sub-sub"><a href="#"><span class="menu-text">事业单位</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub-sub"><li id="id135" class="has-sub-sub-sub"><a href="#"><span class="menu-text">教育</span></a><ul></ul></li><li id="id136" class="has-sub-sub-sub"><a href="#"><span class="menu-text">文化</span></a><ul></ul></li><li id="id137" class="has-sub-sub-sub"><a href="#"><span class="menu-text">卫生</span></a><ul></ul></li><li id="id138" class="has-sub-sub-sub"><a href="#"><span class="menu-text">福利</span></a><ul></ul></li><li id="id139" class="has-sub-sub-sub"><a href="#"><span class="menu-text">其他</span></a><ul></ul></li></ul></li><li id="id140" class="has-sub-sub"><a href="#"><span class="menu-text">企业</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub-sub"><li id="id143" class="has-sub-sub-sub"><a href="#"><span class="menu-text">第一产业</span></a><ul></ul></li><li id="id144" class="has-sub-sub-sub"><a href="#"><span class="menu-text">第二产业</span></a><ul></ul></li><li id="id145" class="has-sub-sub-sub"><a href="#"><span class="menu-text">第三产业</span></a><ul></ul></li></ul></li><li id="id141" class="has-sub-sub"><a href="#"><span class="menu-text">军事单位</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub-sub"></ul></li><li id="id142" class="has-sub-sub"><a href="#"><span class="menu-text">其他</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub-sub"></ul></li></ul></li><li id="id146" class="has-sub"><a href="#" class=""><i class="fa fa-th-large fa-fw"></i><span class="menu-text">海洋自然地理实体</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub"><li id="id147" class="has-sub-sub"><a href="#"><span class="menu-text">海洋</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub-sub"></ul></li><li id="id148" class="has-sub-sub"><a href="#"><span class="menu-text">海底地理实体</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub-sub"><li id="id149" class="has-sub-sub-sub"><a href="#"><span class="menu-text">海沟</span></a><ul></ul></li><li id="id150" class="has-sub-sub-sub"><a href="#"><span class="menu-text">海盆</span></a><ul></ul></li><li id="id151" class="has-sub-sub-sub"><a href="#"><span class="menu-text">海底平原</span></a><ul></ul></li><li id="id152" class="has-sub-sub-sub"><a href="#"><span class="menu-text">海底高原</span></a><ul></ul></li><li id="id153" class="has-sub-sub-sub"><a href="#"><span class="menu-text">海底山地</span></a><ul></ul></li><li id="id154" class="has-sub-sub-sub"><a href="#"><span class="menu-text">大陆架</span></a><ul></ul></li><li id="id155" class="has-sub-sub-sub"><a href="#"><span class="menu-text">其他</span></a><ul></ul></li></ul></li><li id="id156" class="has-sub-sub"><a href="#"><span class="menu-text">海湾</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub-sub"></ul></li><li id="id157" class="has-sub-sub"><a href="#"><span class="menu-text">海峡</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub-sub"></ul></li><li id="id158" class="has-sub-sub"><a href="#"><span class="menu-text">海洋岛屿</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub-sub"><li id="id159" class="has-sub-sub-sub"><a href="#"><span class="menu-text">沙</span></a><ul></ul></li><li id="id160" class="has-sub-sub-sub"><a href="#"><span class="menu-text">滩</span></a><ul></ul></li><li id="id161" class="has-sub-sub-sub"><a href="#"><span class="menu-text">礁</span></a><ul></ul></li><li id="id162" class="has-sub-sub-sub"><a href="#"><span class="menu-text">岛</span></a><ul></ul></li><li id="id163" class="has-sub-sub-sub"><a href="#"><span class="menu-text">群礁</span></a><ul></ul></li><li id="id164" class="has-sub-sub-sub"><a href="#"><span class="menu-text">群岛</span></a><ul></ul></li><li id="id165" class="has-sub-sub-sub"><a href="#"><span class="menu-text">其他</span></a><ul></ul></li></ul></li><li id="id166" class="has-sub-sub"><a href="#"><span class="menu-text">海岸带</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub-sub"><li id="id167" class="has-sub-sub-sub"><a href="#"><span class="menu-text">海蚀地理实体</span></a><ul></ul></li><li id="id168" class="has-sub-sub-sub"><a href="#"><span class="menu-text">岬角</span></a><ul></ul></li><li id="id169" class="has-sub-sub-sub"><a href="#"><span class="menu-text">滩涂</span></a><ul></ul></li><li id="id170" class="has-sub-sub-sub"><a href="#"><span class="menu-text">海岸</span></a><ul></ul></li><li id="id171" class="has-sub-sub-sub"><a href="#"><span class="menu-text">半岛</span></a><ul></ul></li><li id="id172" class="has-sub-sub-sub"><a href="#"><span class="menu-text">其他</span></a><ul></ul></li></ul></li><li id="id173" class="has-sub-sub"><a href="#"><span class="menu-text">其他</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub-sub"></ul></li></ul></li><li id="id175" class="has-sub"><a href="#" class=""><i class="fa fa-th-large fa-fw"></i><span class="menu-text">水系</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub"><li id="id176" class="has-sub-sub"><a href="#"><span class="menu-text">河流</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub-sub"><li id="id177" class="has-sub-sub-sub"><a href="#"><span class="menu-text">河源</span></a><ul></ul></li><li id="id178" class="has-sub-sub-sub"><a href="#"><span class="menu-text">河谷</span></a><ul></ul></li><li id="id179" class="has-sub-sub-sub"><a href="#"><span class="menu-text">河滩</span></a><ul></ul></li><li id="id180" class="has-sub-sub-sub"><a href="#"><span class="menu-text">阶地</span></a><ul></ul></li><li id="id181" class="has-sub-sub-sub"><a href="#"><span class="menu-text">河湾</span></a><ul></ul></li><li id="id182" class="has-sub-sub-sub"><a href="#"><span class="menu-text">河口</span></a><ul></ul></li><li id="id183" class="has-sub-sub-sub"><a href="#"><span class="menu-text">三角洲</span></a><ul></ul></li><li id="id184" class="has-sub-sub-sub"><a href="#"><span class="menu-text">其他</span></a><ul></ul></li></ul></li><li id="id185" class="has-sub-sub"><a href="#"><span class="menu-text">湖泊</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub-sub"></ul></li><li id="id186" class="has-sub-sub"><a href="#"><span class="menu-text">陆地岛屿</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub-sub"><li id="id187" class="has-sub-sub-sub"><a href="#"><span class="menu-text">洲，河岛</span></a><ul></ul></li><li id="id188" class="has-sub-sub-sub"><a href="#"><span class="menu-text">湖岛</span></a><ul></ul></li><li id="id189" class="has-sub-sub-sub"><a href="#"><span class="menu-text">矶</span></a><ul></ul></li><li id="id190" class="has-sub-sub-sub"><a href="#"><span class="menu-text">其他</span></a><ul></ul></li></ul></li><li id="id191" class="has-sub-sub"><a href="#"><span class="menu-text">冰川</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub-sub"><li id="id192" class="has-sub-sub-sub"><a href="#"><span class="menu-text">冰斗</span></a><ul></ul></li><li id="id193" class="has-sub-sub-sub"><a href="#"><span class="menu-text">冰川谷</span></a><ul></ul></li><li id="id194" class="has-sub-sub-sub"><a href="#"><span class="menu-text">其他</span></a><ul></ul></li></ul></li><li id="id195" class="has-sub-sub"><a href="#"><span class="menu-text">瀑布</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub-sub"></ul></li><li id="id196" class="has-sub-sub"><a href="#"><span class="menu-text">泉</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub-sub"></ul></li><li id="id197" class="has-sub-sub"><a href="#"><span class="menu-text">其他</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub-sub"><li id="id198" class="has-sub-sub-sub"><a href="#"><span class="menu-text">流域</span></a><ul></ul></li></ul></li></ul></li><li id="id199" class="has-sub"><a href="#" class=""><i class="fa fa-th-large fa-fw"></i><span class="menu-text">陆地地形</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub"><li id="id200" class="has-sub-sub"><a href="#"><span class="menu-text">平原</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub-sub"></ul></li><li id="id201" class="has-sub-sub"><a href="#"><span class="menu-text">盆地</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub-sub"></ul></li><li id="id202" class="has-sub-sub"><a href="#"><span class="menu-text">高原</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub-sub"></ul></li><li id="id203" class="has-sub-sub"><a href="#"><span class="menu-text">丘陵山地</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub-sub"><li id="id204" class="has-sub-sub-sub"><a href="#"><span class="menu-text">山口，关隘</span></a><ul></ul></li><li id="id205" class="has-sub-sub-sub"><a href="#"><span class="menu-text">山谷</span></a><ul></ul></li><li id="id206" class="has-sub-sub-sub"><a href="#"><span class="menu-text">山坡</span></a><ul></ul></li><li id="id207" class="has-sub-sub-sub"><a href="#"><span class="menu-text">山峰</span></a><ul></ul></li><li id="id208" class="has-sub-sub-sub"><a href="#"><span class="menu-text">山</span></a><ul></ul></li><li id="id209" class="has-sub-sub-sub"><a href="#"><span class="menu-text">山体</span></a><ul></ul></li><li id="id210" class="has-sub-sub-sub"><a href="#"><span class="menu-text">其他</span></a><ul></ul></li></ul></li><li id="id211" class="has-sub-sub"><a href="#"><span class="menu-text">重要陆地景观</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub-sub"><li id="id212" class="has-sub-sub-sub"><a href="#"><span class="menu-text">沼泽</span></a><ul></ul></li><li id="id213" class="has-sub-sub-sub"><a href="#"><span class="menu-text">苔原</span></a><ul></ul></li><li id="id214" class="has-sub-sub-sub"><a href="#"><span class="menu-text">草原</span></a><ul></ul></li><li id="id215" class="has-sub-sub-sub"><a href="#"><span class="menu-text">森林</span></a><ul></ul></li><li id="id216" class="has-sub-sub-sub"><a href="#"><span class="menu-text">沙漠</span></a><ul></ul></li><li id="id217" class="has-sub-sub-sub"><a href="#"><span class="menu-text">戈壁</span></a><ul></ul></li><li id="id218" class="has-sub-sub-sub"><a href="#"><span class="menu-text">绿洲</span></a><ul></ul></li><li id="id219" class="has-sub-sub-sub"><a href="#"><span class="menu-text">其他</span></a><ul></ul></li></ul></li><li id="id220" class="has-sub-sub"><a href="#"><span class="menu-text">其他</span><i class="fa fa-caret-left arrow"></i></a><ul class="sub-sub"><li id="id221" class="has-sub-sub-sub"><a href="#"><span class="menu-text">洞穴</span></a><ul></ul></li><li id="id222" class="has-sub-sub-sub"><a href="#"><span class="menu-text">天生桥</span></a><ul></ul></li><li id="id223" class="has-sub-sub-sub"><a href="#"><span class="menu-text">台地</span></a><ul></ul></li></ul></li></ul></li>
				</ul>

			</div>
		</div>
		<div class="col-sm-2 col-sm-offset-10" >
			<h3 class="text-center">操作</h3>
			<div class="divide-20"></div>
			<div id="right_option">
                <div class="list-group">
                    <button type="button" class="list-group-item btn-block btn-info text-center" onclick="deleteOne()">删除</button>
                    <button type="button" class="list-group-item  btn-primary text-center" data-toggle="modal" data-target="#addModal">添加</button>
                    <button type="button" class="list-group-item btn-default text-center" onclick="upOne()">上移</button>
                    <button type="button" class="list-group-item  btn-danger text-center" onclick="downOne()">下移</button>
                    <button type="button" class="list-group-item  btn-warning text-center" id="edit">编辑</button>
                    <button type="button" class="list-group-item  btn-success text-center" onclick="save()">保存</button>
                </div>
			</div>

		</div>
		<div class="col-sm-5">

		</div>
	</div>
</div>
<div class="modal fade" id="addModal" tabindex="-1" role="dialog" 			aria-labelledby="myModalLable">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<h4 class="modal-title">编辑</h4>
			</div>
			<div class="modal-body">
				<div class="divide-20"></div>
				<label for="name">目录名</label>
				<input type="text" placeholder="目录名" class="form-control" id="name"/>
				<div class="divide-20"></div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				<button type="button" class="btn btn-primary" onclick="addOne()">保存</button>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
</div><!-- /.modal -->
	<div class="modal fade" id="editModal" tabindex="-1" role="dialog" 			aria-labelledby="myModalLable">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					<h4 class="modal-title">编辑</h4>
				</div>
				<div class="modal-body">
					<div class="divide-20"></div>
					<label for="catalogname">目录名</label>
					<input type="text" placeholder="目录名" class="form-control" id="catalogname"/>
					<div class="divide-20"></div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary" onclick="editOne()">保存</button>
				</div>
			</div><!-- /.modal-content -->
		</div><!-- /.modal-dialog -->
	</div>
</body>

<script>
//    $(".sidebar-menu").css("max-height",document.documentElement.clientHeight-5);
//	$(document).ready($(".scroller").mCustomScrollbar());
	$("li").click(function(e){
		$("li","#leftcontent").removeClass("selected");
		alert($(this).html());
		$(this).addClass("selected");
		e.stopPropagation();
	});
    $("#edit").click(function(){
        var el=$("li.selected").children("a").children("span").html();
        $("#catalogname").val(el);
        $("#editModal").modal();
    });
	//	var timer=window.setInterval("resetIframe($('#iframe'))",500);
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
	//	$(document).ready(resetIframe($('#iframe')));
</script>
</html>