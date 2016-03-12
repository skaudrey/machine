<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
	String path = request.getContextPath();
	String basepath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>JSP Page</title>
	<link rel="stylesheet" href="<%=basepath%>/css/bootstrap/bootstrap.min.css" />
	<link rel="stylesheet" href="<%=basepath%>/css/dmz/dmz.css" />
	<link rel="stylesheet" href="<%=basepath%>/css/font-awesome.min.css" />
	<script type="text/javascript" src="<%=basepath%>/js/jquery/jquery-2.0.3.min.js" ></script>
	<script type="text/javascript" src="<%=basepath%>/js/bootstrap/bootstrap.min.js" ></script>
	<script type="text/javascript" src="<%=basepath%>/js/dmz/dmz-common.js" ></script>
	<!--<script type="text/javascript" src="../../js/basic.js"></script>
    <script type="text/javascript" src="../../js/jquery/jquery.cookie.min.js"></script>-->
	<!--加载视频插件-->
	<link href="<%=basepath%>/css/dmz/video-js.css" rel="stylesheet">
	<script src="<%=basepath%>/js/video.js"></script>
	<!--table插件，一次显示10行-->
	<script type="text/javascript" src="<%=basepath%>/js/jquery/jquery.dataTables.min.js"></script>
	<script type="text/javascript" src="<%=basepath%>/js/jquery/datatables.min.js"></script>
	<!--  树形treeview      -->
	<link rel="stylesheet" href="<%=basepath%>/css/dmz/jquery.tree-multiselect.min.css" />
	<script type="text/javascript" src="<%=basepath%>/js/jquery/jquery.tree-multiselect.min.js"></script>
	<script src="<%=basepath%>/js/dmz/treeview.js"></script>
	<!--滚动条插件  -->
	<link rel="stylesheet" href="<%=basepath%>/css/dmz/jquery.mCustomScrollbar.css" />
	<script src="<%=basepath%>/js/mScrollBar/jquery-ui-1.10.4.min.js"></script>
	<script src="<%=basepath%>/js/mScrollBar/jquery.mousewheel.min.js"></script>
	<script src="<%=basepath%>/js/mScrollBar/jquery.mCustomScrollbar.min.js"></script>
	<script src="<%=basepath%>/js/dmz/setCustomScrollBar.js"></script>
	<style>
        #mCSB_3{ /* contains plugin's markup */
            position: relative;
            /*overflow: hidden;*/
            height: 100%;
            max-width: 100%;
            outline: none;
            direction: ltr;
        }
	</style>
</head>
<body>
<div class="container-fluid">
	<!--Page Header Begin-->
	<div class="row">
		<div id="content" class="col-lg-12">
			<div class="page-head">
				<ol class="breadcrumb">
					<li>
						<i class="fa fa-home"></i>
						<a href="index.html">首页</a>
					</li>
					<li><a href="index.html">第一篇 行政区域组织</a></li>
					<li><a href="index.html">第一章 高亭镇</a></li>
					<li>第一节 概况</li>
				</ol>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-sm-5">
			<h3 class="content-title">
				<i class="fa  fa-book"></i>
				地名志内容
			</h3>
		</div>
		<div class="col-sm-7">
			<div class="btn-group operation">
				<button class="btn btn-default" type="button">关键字查询</button>
				<button class="btn btn-default" type="button" data-toggle="modal" data-target="#outputModal">导出文本</button>
				<button class="btn btn-default" type="button"><i class="fa  fa-plus"></i>添加条目</button>
				<button class="btn btn-default hidden-xs" type="button">编辑记录</button>
				<button id="reportrange" class="btn reportrange"><i class="fa fa-calendar"></i><i class="fa fa-angle-down"></i></button>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-sm-12">
			<div class="description">全国第二次地名普查工作领导小组办公室</div>
		</div>
	</div>
	<hr>
	<div class="row" id="box-layout">
		<div class="col-lg-9 col-sm-9">
			<a  class="btn " onclick="collapseBox(1)">
				<i class="fa  fa-plus"></i>
				<span>全部展开</span>
			</a>
			<a  class="btn " onclick="collapseBox(0)">
				<i class="fa fa-minus"></i>
				<span>全部收起</span>
			</a>
			<a  class="btn " onclick="layoutBox(1)">
				<i class="fa   fa-bars"></i>
				<span>单列布局</span>
			</a>
			<a  class="btn " onclick="layoutBox(2)">
				<i class="fa  fa-th-large"></i>
				<span>双列布局</span>
			</a>
		</div>
		<div class="col-lg-3 col-sm-3">
					<span class="btn disabled btn-showContent">
						<i class="fa  fa-bookmark-o"></i>
						<span>缩略模式</span>
					</span>
			<a  class="btn" onclick="showContent()">
				切换
			</a>
		</div>
	</div>
</div>
<div class="main-context container-fluid">
	<div class="row">
		<div class="box-container col-sm-6">
			<div class="box border box-blue">
				<div class="box-title">
					<div class="box-tools">
						<a href="#content-edit" data-toggle="modal" class="config">
							<i class="fa fa-edit"></i>编辑
						</a>
						<a href="javascript:;" class="reload">
							<i class="fa fa-refresh"></i>刷新
						</a>
						<a href="javascript:;" class="collapse">
							<i class="fa fa-chevron-up"></i>隐藏
						</a>
						<a href="javascript:;" class="remove">
							<i class="fa fa-times"></i>删除
						</a>
					</div>
					<h4><i class="fa fa-bars"></i>兰亭社区 Lántíng Shèqū </h4>
				</div>
				<div class="box-body">
					<div class="scroller" data-height="120px">位于高亭城区中心，距镇政府驻地150米。 东起安澜路东端，南以安澜路为界，北、西与闸口社区、育才社区的长河路三期为界。兰亭之名，源自安澜路上的“安澜亭”，为区别安澜社区，取其谐音“兰”字，寓意美好。 2003年9月由海滨居委会和菜市居委会合并建立。区域面积约0.22平方千米，2014年末户籍有居民2523户，5853人，常住人口12000多人。社区居委会驻长河路65号二楼，社区办公室电话：4473436</div>
				</div>
				<div class="toolbox bottom">
					<div class="btn-group">
						<button type="button" class="btn btn-default">第一条</button>
						<button type="button" class="btn btn-default">地名条目</button>
						<button type="button" class="btn btn-default">初稿</button>
						<button type="button" class="btn btn-default">岱山地名办</button>
						<button type="button" class="btn btn-default">2015-12-01 12:34:45</button>
					</div>
				</div>
			</div>
		</div>
		<div class="col-sm-6 box-container">
			<!-- BOX BORDER-->
			<div class="box border box-blue">
				<div class="box-title">

					<div class="box-tools">
						<a href="#content-edit"  data-toggle="modal"  class="config">
							<i class="fa fa-edit"></i>编辑
						</a>
						<a href="javascript:;" class="reload">
							<i class="fa fa-refresh"></i>刷新
						</a>
						<a href="javascript:;" class="collapse">
							<i class="fa fa-chevron-up"></i>隐藏
						</a>
						<a href="javascript:;" class="remove">
							<i class="fa fa-times"></i>删除
						</a>
					</div>
					<h4><i class="fa fa-bars"></i>育才社区 Yùcái Shèqū</h4>
				</div>
				<div class="box-body">
					<div class="scroller" data-height="120px" >
						位于高亭城区北侧，东和大岙一、二村相邻，南与长河路三期为界，西连闸口社区，北接官山新村。因驻地在育才新村，故名。原属闸口居委会，1989年4月14日建立育才居民委员会。面积 0.3平方千米，有居民 户，3423人，28个居民小组，辖区范围为育才新村住宅区和附近的岱山中学，育才路以东、长河路以北的单位和散居的居民。社区居委会驻育才路31号，距镇政府驻地500米。社区办公室电话：4474180
					</div>
				</div>
				<div class="toolbox bottom">
					<div class="btn-group">
						<button type="button" class="btn btn-default">第二条</button>
						<button type="button" class="btn btn-default">地名条目</button>
						<button type="button" class="btn btn-default">初稿</button>
						<button type="button" class="btn btn-default">岱山地名办</button>
						<button type="button" class="btn btn-default">2015-12-01 12:34:45</button>
					</div>

				</div>
			</div>
			<!-- /BOX BORDER -->
		</div>
		<div class="col-sm-6 box-container">
			<!-- BOX BORDER-->
			<div class="box border  box-blue">
				<div class="box-title">

					<div class="box-tools">
						<a href="#content-edit"  data-toggle="modal"  class="config">
							<i class="fa fa-edit"></i>编辑
						</a>
						<a href="javascript:;" class="reload">
							<i class="fa fa-refresh"></i>刷新
						</a>
						<a href="javascript:;" class="collapse">
							<i class="fa fa-chevron-up"></i>隐藏
						</a>
						<a href="javascript:;" class="remove">
							<i class="fa fa-times"></i>删除
						</a>
					</div>
					<h4><i class="fa fa-bars"></i>竹屿社区 Zhúyǔ Shèqū</h4>
				</div>
				<div class="box-body">
					<div class="scroller" data-height="120px">
						位于高亭镇竹屿新区，东接竹屿港，南到江南大桥，西和东海村接壤，北至南峰村张家山嘴。因处竹屿港东南侧得名。2011年5月岱政函[2011]59号文件批复建立。辖区范围：西以衢山大道为界，南到恒丽府邸，北到行政中心，包括渔父乐园共计13个住宅小区。面积 4.5平方千米，2014年末有户籍居民 户，5825人。辖区内主要有 。社区居委会驻高亭镇鱼山大道351号，距镇政府驻地3千米。社区办公室电话：4967958
						<div class="row">
							<div class="col-sm-4">
								<a href="/imgs/dmz/gallery/1.png" data-lightbox="image-1" data-title="My caption">
									<img src="/imgs/dmz/gallery/1.png" style="width: 100%;,height: 100%;" />
								</a>
							</div>
							<div class="col-sm-4">
								<a href="/imgs/dmz/gallery/2.jpg" data-lightbox="image-1" data-title="My caption">
									<img src="/imgs/dmz/gallery/2.jpg" style="width: 100%;,height: 100%;" />
								</a>
							</div>
							<div class="col-sm-4">
								<a href="/imgs/dmz/gallery/3.png" data-lightbox="image-1" data-title="My caption">
									<img src="/imgs/dmz/gallery/3.png" style="width: 100%;,height: 100%;" />
								</a>
							</div>

						</div>
					</div>
				</div>
				<div class="toolbox bottom">
					<div class="btn-group">
						<button type="button" class="btn btn-default">第三条</button>
						<button type="button" class="btn btn-default">地名条目</button>
						<button type="button" class="btn btn-default">初稿</button>
						<button type="button" class="btn btn-default">岱山地名办</button>
						<button type="button" class="btn btn-default">2015-12-01 12:34:45</button>
					</div>

				</div>
			</div>
			<!-- /BOX BORDER -->
		</div>
		<div class="col-sm-6 box-container">
			<!-- BOX BORDER-->
			<div class="box border box-blue">
				<div class="box-title">

					<div class="box-tools">
						<a href="#content-edit"  data-toggle="modal" class="config">
							<i class="fa fa-edit"></i>编辑
						</a>
						<a href="javascript:;" class="reload">
							<i class="fa fa-refresh"></i>刷新
						</a>
						<a href="javascript:;" class="collapse">
							<i class="fa fa-chevron-up"></i>隐藏
						</a>
						<a href="javascript:;" class="remove">
							<i class="fa fa-times"></i>删除
						</a>
					</div>
					<h4><i class="fa fa-bars"></i>闸口社区 Zhákǒu Shèqū</h4>
				</div>
				<div class="box-body">
					<div class="scroller" data-height="120px">
						位于高亭城区西北，东起沿港西路1号，南至滨港路，西到沿港西路双号428号水兵码头，北与育才社区相接，西北与闸口二村相邻。社区以驻地闸口得名。原属高亭镇二居委，1981年10月建立居委，称五居委；1982年更名为闸口居委会；1989年5月划出新村一带，另建育才居委会。面积0.135平方千米，有居民 户，4233人，常住居民10000多人，是县城主要工业区。社区居委会驻沿港西路209号，距镇政府驻地1.5千米。社区办公室电话：4060676
						<video id="example_video_1" class="video-js vjs-default-skin" controls preload="none" poster="http://video-js.zencoder.com/oceans-clip.png" data-setup="{}">
							<source src="/imgs/dmz/video.mp4" type='video/mp4' />
						</video>
					</div>
				</div>
				<div class="toolbox bottom">
					<div class="btn-group">
						<button type="button" class="btn btn-default">第四条</button>
						<button type="button" class="btn btn-default">地名条目</button>
						<button type="button" class="btn btn-default">初稿</button>
						<button type="button" class="btn btn-default">岱山地名办</button>
						<button type="button" class="btn btn-default">2015-12-01 12:34:45</button>
					</div>

				</div>
			</div>
			<!-- /BOX BORDER -->
		</div>
		<div class="col-sm-6 box-container">
			<!-- BOX BORDER-->
			<div class="box border  box-blue">
				<div class="box-title">
					<h4><i class="fa fa-bars"></i>沙涂社区 Shātú Shèqū</h4>
					<div class="box-tools">
						<a href="#content-edit"  data-toggle="modal"  class="config">
							<i class="fa fa-edit"></i>编辑
						</a>
						<a href="javascript:;" class="reload">
							<i class="fa fa-refresh"></i>刷新
						</a>
						<a href="javascript:;" class="collapse">
							<i class="fa fa-chevron-up"></i>隐藏
						</a>
						<a href="javascript:;" class="remove">
							<i class="fa fa-times"></i>删除
						</a>
					</div>
				</div>
				<div class="box-body">
					<div class="scroller" data-height="120px">
						位于高亭城区东南端，距镇政府驻地350米。东接蓬莱路，南至交通码头，西至对港山，北起清泰路蓬莱公园脚下。社区以驻地沙涂得名。原属高亭镇一居委；1981年另建居委，仍称一居委；1982年更名沙涂居委会。2003年更名为沙涂社区居民委员会。区域面积0.5平方千米，2014年有户籍居民1452户，3363人，常住人口7000余人。辖区内有居民住宅楼43幢，都为无物业自然小区。社区居委会驻高亭镇宫前弄55号，社区办公室电话：4472607
						<div id="carousel-example-generic" class="carousel slide">
							<!-- Indicators -->
							<ol class="carousel-indicators">
								<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
								<li data-target="#carousel-example-generic" data-slide-to="1"></li>
								<li data-target="#carousel-example-generic" data-slide-to="2"></li>
							</ol>

							<!-- Wrapper for slides -->
							<div class="carousel-inner" role="listbox">
								<div class="item active">
									<img src="/imgs/dmz/carousel/1.jpg" alt="">
									<div class="carousel-caption">
										<h3>First slide label</h3>
										<p>Nulla vitae elit libero, a pharetra augue mollis interdum.</p>
									</div>
								</div>
								<div class="item">
									<img src="/imgs/dmz/carousel/2.jpg" alt="">
									<div class="carousel-caption">
										<h3>Second slide label</h3>
										<p>Nulla vitae elit libero, a pharetra augue mollis interdum.</p>
									</div>
								</div>
								<div class="item">
									<img src="/imgs/dmz/carousel/3.jpg" alt="">
									<div class="carousel-caption">
										<h3>Third slide label</h3>
										<p>Nulla vitae elit libero, a pharetra augue mollis interdum.</p>
									</div>
								</div>
							</div>

							<!-- Controls -->
							<a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
								<span class="fa fa-prev"></span>
							</a>
							<a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
								<span class="fa fa-next"></span>
							</a>
						</div>
					</div>
				</div>
				<div class="toolbox bottom">
					<div class="btn-group">
						<button type="button" class="btn btn-default">第一条</button>
						<button type="button" class="btn btn-default">地名条目</button>
						<button type="button" class="btn btn-default">初稿</button>
						<button type="button" class="btn btn-default">岱山地名办</button>
						<button type="button" class="btn btn-default">2015-12-01 12:34:45</button>
					</div>
				</div>

			</div>
			<!-- /BOX BORDER -->
		</div>

	</div>
	<div class="footer-tools">
				<span class="go-top">
					<i class="fa fa-chevron-up"></i> Top
				</span>
	</div>
	<nav>
		<ul class="pagination pagination-lg pull-right">
			<li>
				<a href="#" aria-label="Previous">
					<span aria-hidden="true">&laquo;</span>
				</a>
			</li>
			<li><a href="#">1</a></li>
			<li><a href="#">2</a></li>
			<li><a href="#">3</a></li>
			<li><a href="#">4</a></li>
			<li><a href="#">5</a></li>
			<li>
				<a href="#" aria-label="Next">
					<span aria-hidden="true">&raquo;</span>
				</a>
			</li>
		</ul>
	</nav>
</div>
<div class="modal fade" id="content-edit" tabindex="-1" role="dialog" aria-labelledby="myModalLable" aria-hidden='true'>
	<div id="editDialog" class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden='true'>&times;</button>
				<ul class="nav nav-tabs">
					<li class="active">
						<a href="#textEditTab" data-toggle="tab"><i class="fa fa-pencil"></i>
							<span class="hidden-inline-mobile">文本编辑</span>
						</a>
					</li>
					<li class="act">
						<a href="#mediaEditTab" data-toggle="tab"><i class="fa fa-picture-o"></i>
							<span class="hidden-inline-mobile">多媒体库</span>
						</a>
					</li>
					<li class="act">
						<a href="#historyEditTab" data-toggle="tab"><i class="fa fa-save"></i>
							<span class="hidden-inline-mobile">历史编辑记录</span>
						</a>
					</li>
				</ul>
			</div>
			<div class="modal-body">
				<div class="tab-content">
					<div class="tab-pane fade in active" id="textEditTab">
						<form class="form-horizontal">
							<div class="form-group">
								<label class="col-sm-2 control-label">地名代码</label>
								<div class="col-sm-3">
									<input type="text" class="form-control" />
								</div>
								<button type="submit" class="col-sm-1 btn btn-inverse">导入</button>
								<label class="col-sm-6 control-label textLeft">
									根据地名代码自动导入地名志的地名含义、沿革、地理实体内容
								</label>
							</div>
							<div class="form-group">
								<label for="placename" class="col-sm-2 control-label">地名</label>
								<div class="col-sm-5">
									<input type="text" class="form-control" id="placename">
								</div>
								<label class="col-sm-1 control-label">状态 </label>
								<div class="col-sm-4">
									<label class="radio-inline">
										<input type="radio" class="uniform" name="optionsRadios1" value="option1">初稿</label>
									<label class="radio-inline">
										<input type="radio" class="uniform" name="optionsRadios1" value="option2" checked>修正稿</label>
									<label class="radio-inline">
										<input type="radio" class="uniform" name="optionsRadios1" value="option3">终稿</label>
								</div>
							</div>
							<div class="form-group">
								<label for="pinyin" class="col-sm-2 control-label">拼音</label>
								<div class="col-sm-4">
									<input type="text" class="form-control" id="pinyin">
								</div>
								<button class="col-sm-1 btn btn-pink">转换</button>
								<label class="col-sm-1 control-label">类别 </label>
								<div class="col-sm-4">
									<label class="radio-inline">
										<input type="radio" class="uniform" name="optionsRadios2" value="option1" checked>地名条目</label>
									<label class="radio-inline">
										<input type="radio" class="uniform" name="optionsRadios2" value="option2">其他内容</label>
								</div>
							</div>
							<div class="form-group">

								<label class="col-sm-2 control-label">使用时间 </label>
								<div class="col-sm-4">
									<label class="radio-inline">
										<input type="radio" class="uniform" name="optionsRadios3" value="option1" checked>现今地名</label>
									<label class="radio-inline">
										<input type="radio" class="uniform" name="optionsRadios3" value="option2">历史地名</label>
								</div>
								<label for="inputEmail" class="col-sm-2  control-label">排序</label>
								<div class="col-sm-2">
									<input type="text" class="form-control" id="inputEmail">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">文本描述</label>
								<div class="col-sm-9">
									<textarea class="form-control" rows="8"></textarea>
								</div>
							</div>
						</form>
					</div>
					<div class="tab-pane fade" id="mediaEditTab">
						<form class="form-horizontal">
							<div class="form-group">
								<div class="mediaEditTab-pictureList">
									<div class="col-sm-10 col-sm-offset-1">
										<div class="col-sm-4">
											图片1
											<button type="button" class="close pull-right" aria-hidden="true">&times;</button>
											<a href="/imgs/dmz/gallery/1.png" data-lightbox="image-1" data-title="My caption">
												<img src="/imgs/dmz/gallery/1.png" style="width: 100%;,height: 100%;" />
											</a>
										</div>
										<div class="col-sm-4">
											图片2
											<button type="button" class="close pull-right" aria-hidden="true">&times;</button>
											<a href="/imgs/dmz/gallery/2.jpg" data-lightbox="image-1" data-title="My caption">
												<img src="/imgs/dmz/gallery/2.jpg" style="width: 100%;,height: 100%;" />
											</a>
										</div>
										<div class="col-sm-4">
											图片3
											<button type="button" class="close pull-right" aria-hidden="true">&times;</button>
											<a href="/imgs/dmz/gallery/3.png" data-lightbox="image-1" data-title="My caption">
												<img src="/imgs/dmz/gallery/3.png" style="width: 100%;,height: 100%;" />
											</a>
										</div>
									</div>
									<div class="col-sm-10 col-sm-offset-1">
										<div class="col-sm-4">
											图片4
											<button type="button" class="close pull-right" aria-hidden="true">&times;</button>
											<a href="/imgs/dmz/gallery/1.png" data-lightbox="image-1" data-title="My caption">
												<img src="/imgs/dmz/gallery/1.png" style="width: 100%;,height: 100%;" />
											</a>
										</div>
										<div class="col-sm-4">
											图片5
											<button type="button" class="close pull-right" aria-hidden="true">&times;</button>
											<a href="/imgs/dmz/gallery/2.jpg" data-lightbox="image-1" data-title="My caption">
												<img src="/imgs/dmz/gallery/2.jpg" style="width: 100%;,height: 100%;" />
											</a>
										</div>
										<div class="col-sm-4">
											图片6
											<button type="button" class="close pull-right" aria-hidden="true">&times;</button>
											<a href="/imgs/dmz/gallery/3.png" data-lightbox="image-1" data-title="My caption">
												<img src="/imgs/dmz/gallery/3.png" style="width: 100%;,height: 100%;" />
											</a>
										</div>
									</div>
									<div class="col-sm-10 col-sm-offset-1">
										<div class="col-sm-4">
											图片7
											<button type="button" class="close pull-right" aria-hidden="true">&times;</button>
											<a href="/imgs/dmz/gallery/1.png" data-lightbox="image-1" data-title="My caption">
												<img src="/imgs/dmz/gallery/1.png" style="width: 100%;,height: 100%;" />
											</a>
										</div>
										<div class="col-sm-4">
											图片8
											<button type="button" class="close pull-right" aria-hidden="true">&times;</button>
											<a href="/imgs/dmz/gallery/2.jpg" data-lightbox="image-1" data-title="My caption">
												<img src="/imgs/dmz/gallery/2.jpg" style="width: 100%;,height: 100%;" />
											</a>
										</div>
										<div class="col-sm-4">
											图片9
											<button type="button" class="close pull-right" aria-hidden="true">&times;</button>
											<a href="/imgs/dmz/gallery/3.png" data-lightbox="image-1" data-title="My caption">
												<img src="/imgs/dmz/gallery/3.png" style="width: 100%;,height: 100%;" />
											</a>
										</div>
									</div>

								</div>
								<div class="col-sm-offset-1 col-sm-4">
										<span class="input-group-btn">
											<button type="button" class="btn btn-primary" onclick="javascript:$('#icon').trigger('click')">
												<i class="fa fa-plus"></i>添加多媒体
											</button>
											<input type="file" class="hidden" accept="image/jpeg" id="icon" name="img" />
										</span>
								</div>
							</div>

						</form>
					</div>
					<div class="tab-pane fade" id="historyEditTab">
						<!--<div id="historyEditTab-datatable-wrapper" class="dataTabels_wrapper form-inline" role="grid">
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="pull-left">
                                        <div id="historyEditTab-datatable-length" class="dataTable_length">
                                            <label>显示</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>-->
						<table id="historyEditTab-datatable" cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered table-hover">
							<thead>
							<tr>
								<th class="width-8">编号</th>
								<th class="width-40">编辑内容</th>
								<th class="width-15">编辑用户</th>
								<th class="width-25">编辑日期</th>
								<th class="width-8">操作</th>
							</tr>
							</thead>
							<tbody>
							<tr>
								<td>1</td>
								<td>新增条目</td>
								<td>岱山县地名办</td>
								<td>2015年12月1日16时35分48秒</td>
								<td><a href="#">查看>></a></td>
							</tr>
							<tr>
								<td>2</td>
								<td>地名、文本描述、拼音、使用时间</td>
								<td>岱山县地名办</td>
								<td>2015年12月1日16时35分48秒</td>
								<td><a href="#">查看>></a></td>
							</tr>
							<tr>
								<td>3</td>
								<td>状态、类别、排序、多媒体库</td>
								<td>岱山县地名办</td>
								<td>2015年12月1日16时35分48秒</td>
								<td><a href="#">查看>></a></td>
							</tr>
							<tr>
								<td>4</td>
								<td>文本描述</td>
								<td>岱山县地名办</td>
								<td>2015年12月1日16时35分48秒</td>
								<td><a href="#">查看>></a></td>
							</tr>
							<tr>
								<td>5</td>
								<td>新增条目</td>
								<td>岱山县地名办</td>
								<td>2015年12月1日16时35分48秒</td>
								<td><a href="#">查看>></a></td>
							</tr>
							<tr>
								<td>6</td>
								<td>地名、文本描述、拼音、使用时间</td>
								<td>岱山县地名办</td>
								<td>2015年12月1日16时35分48秒</td>
								<td><a href="#">查看>></a></td>
							</tr>
							<tr>
								<td>7</td>
								<td>状态、类别、排序、多媒体库</td>
								<td>岱山县地名办</td>
								<td>2015年12月1日16时35分48秒</td>
								<td><a href="#">查看>></a></td>
							</tr>
							<tr>
								<td>8</td>
								<td>文本描述</td>
								<td>岱山县地名办</td>
								<td>2015年12月1日16时35分48秒</td>
								<td><a href="#">查看>></a></td>
							</tr>
							<tr>
								<td>9</td>
								<td>新增条目</td>
								<td>岱山县地名办</td>
								<td>2015年12月1日16时35分48秒</td>
								<td><a href="#">查看>></a></td>
							</tr>
							<tr>
								<td>10</td>
								<td>地名、文本描述、拼音、使用时间</td>
								<td>岱山县地名办</td>
								<td>2015年12月1日16时35分48秒</td>
								<td><a href="#">查看>></a></td>
							</tr>
							<tr>
								<td>11</td>
								<td>状态、类别、排序、多媒体库</td>
								<td>岱山县地名办</td>
								<td>2015年12月1日16时35分48秒</td>
								<td><a href="#">查看>></a></td>
							</tr>
							<tr>
								<td>12</td>
								<td>文本描述</td>
								<td>岱山县地名办</td>
								<td>2015年12月1日16时35分48秒</td>
								<td><a href="#">查看>></a></td>
							</tr>
							<tr>
								<td>13</td>
								<td>新增条目</td>
								<td>岱山县地名办</td>
								<td>2015年12月1日16时35分48秒</td>
								<td><a href="#">查看>></a></td>
							</tr>
							<tr>
								<td>14</td>
								<td>地名、文本描述、拼音、使用时间</td>
								<td>岱山县地名办</td>
								<td>2015年12月1日16时35分48秒</td>
								<td><a href="#">查看>></a></td>
							</tr>
							<tr>
								<td>15</td>
								<td>状态、类别、排序、多媒体库</td>
								<td>岱山县地名办</td>
								<td>2015年12月1日16时35分48秒</td>
								<td><a href="#">查看>></a></td>
							</tr>
							<tr>
								<td>16</td>
								<td>文本描述</td>
								<td>岱山县地名办</td>
								<td>2015年12月1日16时35分48秒</td>
								<td><a href="#">查看>></a></td>
							</tr>
							<tr>
								<td>17</td>
								<td>新增条目</td>
								<td>岱山县地名办</td>
								<td>2015年12月1日16时35分48秒</td>
								<td><a href="#">查看>></a></td>
							</tr>
							<tr>
								<td>18</td>
								<td>地名、文本描述、拼音、使用时间</td>
								<td>岱山县地名办</td>
								<td>2015年12月1日16时35分48秒</td>
								<td><a href="#">查看>></a></td>
							</tr>
							<tr>
								<td>19</td>
								<td>状态、类别、排序、多媒体库</td>
								<td>岱山县地名办</td>
								<td>2015年12月1日16时35分48秒</td>
								<td><a href="#">查看>></a></td>
							</tr>
							<tr>
								<td>20</td>
								<td>文本描述</td>
								<td>岱山县地名办</td>
								<td>2015年12月1日16时35分48秒</td>
								<td><a href="#">查看>></a></td>
							</tr>
							<tr>
								<td>21</td>
								<td>新增条目</td>
								<td>岱山县地名办</td>
								<td>2015年12月1日16时35分48秒</td>
								<td><a href="#">查看>></a></td>
							</tr>
							<tr>
								<td>22</td>
								<td>地名、文本描述、拼音、使用时间</td>
								<td>岱山县地名办</td>
								<td>2015年12月1日16时35分48秒</td>
								<td><a href="#">查看>></a></td>
							</tr>
							<tr>
								<td>23</td>
								<td>状态、类别、排序、多媒体库</td>
								<td>岱山县地名办</td>
								<td>2015年12月1日16时35分48秒</td>
								<td><a href="#">查看>></a></td>
							</tr>
							<tr>
								<td>24</td>
								<td>文本描述</td>
								<td>岱山县地名办</td>
								<td>2015年12月1日16时35分48秒</td>
								<td><a href="#">查看>></a></td>
							</tr>
							<tr>
								<td>25</td>
								<td>新增条目</td>
								<td>岱山县地名办</td>
								<td>2015年12月1日16时35分48秒</td>
								<td><a href="#">查看>></a></td>
							</tr>
							<tr>
								<td>26</td>
								<td>地名、文本描述、拼音、使用时间</td>
								<td>岱山县地名办</td>
								<td>2015年12月1日16时35分48秒</td>
								<td><a href="#">查看>></a></td>
							</tr>
							<tr>
								<td>27</td>
								<td>状态、类别、排序、多媒体库</td>
								<td>岱山县地名办</td>
								<td>2015年12月1日16时35分48秒</td>
								<td><a href="#">查看>></a></td>
							</tr>
							<tr>
								<td>28</td>
								<td>文本描述</td>
								<td>岱山县地名办</td>
								<td>2015年12月1日16时35分48秒</td>
								<td><a href="#">查看>></a></td>
							</tr>
							<tr>
								<td>29</td>
								<td>新增条目</td>
								<td>岱山县地名办</td>
								<td>2015年12月1日16时35分48秒</td>
								<td><a href="#">查看>></a></td>
							</tr>
							<tr>
								<td>30</td>
								<td>地名、文本描述、拼音、使用时间</td>
								<td>岱山县地名办</td>
								<td>2015年12月1日16时35分48秒</td>
								<td><a href="#">查看>></a></td>
							</tr>
							<tr>
								<td>31</td>
								<td>状态、类别、排序、多媒体库</td>
								<td>岱山县地名办</td>
								<td>2015年12月1日16时35分48秒</td>
								<td><a href="#">查看>></a></td>
							</tr>
							<tr>
								<td>32</td>
								<td>文本描述</td>
								<td>岱山县地名办</td>
								<td>2015年12月1日16时35分48秒</td>
								<td><a href="#">查看>></a></td>
							</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary">保存</button>
				</div>
			</div>

		</div>
	</div>
</div>
<div class="modal fade" id="outputModal" tabindex="-1" role="dialog" aria-labelledby="myModalLable" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title" id="myModalLabel">导出文本</h4>
			</div>
			<div class="modal-body modal-body-outputModal">
				<select id="treeview" multiple="multiple">
					<option value="1" data-section="目录" selected="selected" data-index="1">岱山县政区图</option>
					<option value="2" data-section="目录" selected="selected" data-index="2">岱山县政区影像图</option>
					<option value="3" data-section="目录" selected="selected" data-index="3">岱山县综述</option>
					<option value="4" data-section="目录/第一篇 行政区域组织/第一章 高亭镇">第一节 概况</option>
					<option value="5" data-section="目录/第一篇 行政区域组织/第一章 高亭镇">第二节 城镇社区</option>
					<option value="6" data-section="目录/第一篇 行政区域组织/第二章 岱东镇">第一节 概况</option>
					<option value="7" data-section="目录/第一篇 行政区域组织/第二章 岱东镇">第二节 城镇社区</option>
					<option value="8" data-section="目录/第一篇 行政区域组织/第三章 东沙镇">第一节 概况</option>
					<option value="9" data-section="目录/第一篇 行政区域组织/第三章 东沙镇">第二节 城镇社区</option>
					<option value="10" data-section="目录/第二篇 名胜古迹/第一章 风景名胜">第一节 风景名胜区</option>
					<option value="11" data-section="目录/第二篇 名胜古迹/第一章 风景名胜">第二节 风景点</option>
					<option value="12" data-section="目录/第二篇 名胜古迹">第二章 古迹古建筑</option>
				</select>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				<button type="button" class="btn btn-primary">导出 </button>
			</div>
		</div>

	</div>
</div>
<script>
	$(document).ready(handleBoxTools());
	$(document).ready(handleGoToTop());
	$(document).ready(handleDataTable());
	$(document).ready($("select#treeview").treeMultiselect(options));
	$(document).ready($(".box-body .scroller").mCustomScrollbar());
</script>
</body>
</html>