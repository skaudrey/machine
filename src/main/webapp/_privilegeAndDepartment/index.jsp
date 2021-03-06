<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
	String path = request.getContextPath();
	String basepath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, user-scalable=no">
	<meta name="description" content="">
	<meta name="author" content="">

	<link rel="stylesheet" href="/css/priAndDepart/zTreeStyle/zTreeStyle.css" type="text/css">
	<link rel="stylesheet" type="text/css" href="/css/priAndDepart/cloud-admin.css" >
	<link rel="stylesheet" type="text/css"  href="/css/priAndDepart/themes/default.css" id="skin-switcher" >
	<link rel="stylesheet" type="text/css"  href="/css/priAndDepart/responsive.css" >
	<!-- STYLESHEETS --><!--[if lt IE 9]><script src="/js/priAndDepart/flot/excanvas.min.js"></script><script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script><![endif]-->
	<link href="/css/font-awesome.min.css" rel="stylesheet">
	<!-- ANIMATE -->
	<link rel="stylesheet" type="text/css" href="/css/priAndDepart/animatecss/animate.min.css" />
	<!-- DATE RANGE PICKER -->
	<link rel="stylesheet" type="text/css" href="/js/priAndDepart/bootstrap-daterangepicker/daterangepicker-bs3.css" />
	<!-- TODO -->
	<link rel="stylesheet" type="text/css" href="/js/priAndDepart/jquery-todo/css/styles.css" />
	<!-- FULL CALENDAR -->
	<link rel="stylesheet" type="text/css" href="/js/priAndDepart/fullcalendar/fullcalendar.min.css" />
	<!-- GRITTER -->
	<link rel="stylesheet" type="text/css" href="/js/priAndDepart/gritter/css/jquery.gritter.css" />
	<!-- FONTS -->
	<link href='/css/priAndDepart/fonts-google.css' rel='stylesheet' type='text/css'>
	<!-- DATA TABLES -->
	<link rel="stylesheet" type="text/css" href="/js/priAndDepart/datatables/media/css/jquery.dataTables.min.css" />
	<link rel="stylesheet" type="text/css" href="/js/priAndDepart/datatables/media/assets/css/datatables.min.css" />
	<link rel="stylesheet" type="text/css" href="/js/priAndDepart/datatables/extras/TableTools/media/css/TableTools.min.css" />
	<link rel="stylesheet" type="text/css" href="/js/priAndDepart/typeahead/typeahead.css" />
	<link rel="stylesheet" type="text/css" href="/js/priAndDepart/select2/select2.min.css" />
	<link rel="stylesheet" type="text/css" href="/js/priAndDepart/uniform/css/uniform.default.min.css" />
	<link rel="stylesheet" href="/css/priAndDepart/common.css">

	<title>UserRoleAction</title>
</head>
<body>



<section id="page">
	<div id="sidebar" class="sidebar">
		<%--<div class="sidebar-menu nav-collapse">--%>
			<%--<div class="divide-20"></div>--%>
			<%--<ul>--%>
				<%--<li class="" id="deptMnmt">--%>
					<%--<a href="#">--%>
						<%--<i class="fa fa-users"></i><span class="menu-text" >部门管理</span>--%>
						<%--<span class="arrow" id="toggleDeptTree"></span>--%>
					<%--</a>--%>

				<%--</li>--%>
				<%--<li>--%>
					<%--<div>--%>
						<%--<ul id="treeDemo" class="ztree" style="display:none">--%>
						<%--</ul>--%>
					<%--</div>--%>
				<%--</li>--%>
				<%--<li id="actionMnmt">--%>
					<%--<a href="#">--%>
						<%--<i class="fa fa-users"></i><span class="menu-text">权限管理</span>--%>

					<%--</a>--%>
				<%--</li>--%>
			<%--</ul>--%>
		<%--</div>--%>
	</div>
	<!--导入modal-->
	<div class="modal fade" id="inputModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title">Box Settings</h4>
				</div>
				<div class="modal-body">
					导入
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary">Save changes</button>
				</div>
			</div>
		</div>
	</div>
	<!--导出modal-->
	<div class="modal fade" id="outputModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title">Box Settings</h4>
				</div>
				<div class="modal-body">
					导出.
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary">Save changes</button>
				</div>
			</div>
		</div>
	</div>
	<!--导出modal--END-->
	<div id="main-content" style="margin-left: 0px" >
		<!--部门管理部分-->
		<div id="dept-content" style="display:block">
			<div class="container">
				<div class="row">
					<div id="content" class="col-lg-12">

						<div class="row">
							<div class="col-sm-12">
								<div class="page-header">
									<ul class="breadcrumb">
										<li>
											<i class="fa fa-home"></i>
											<a href="index.html">Home</a>
										</li>
										<li>部门管理</li>
									</ul>
									<div class="clearfix">
										<h3 class="content-title  pull-left">部门管理</h3>
									</div>
								</div>
							</div>
						</div>
						<!--部门编辑modal-->
						<div class="modal fade" id="editDeptModal" tabindex="-1"role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
										<h4 class="modal-title">部门编辑</h4>
									</div>
									<div class="modal-body">
										<form class="form-horizontal" role="form">
											<div class="form-group">
												<label for="deptname" class="col-sm-4 control-label">部门名称
												</label>
												<div class="col-sm-4">
													<input type="text" class="form-control" id="edit_deptname" placeholder="部门名称" value="C部门">
												</div>
											</div>
											<div class="form-group">
												<label for="deptname" class="col-sm-4 control-label">组织代码
												</label>
												<div class="col-sm-4">
													<input type="text" class="form-control" id="edit_orgCode" placeholder="组织代码" value="A0102034">
												</div>
											</div>
											<div class="form-group">
												<label for="deptsite" class="col-sm-4 control-label" >部门地点
												</label>
												<div class="col-sm-4">
													<input type="text" class="form-control" id="edit_deptsite" placeholder="部门地点" value="某省某市某区">
												</div>
												<i class="editcion fa fa-anchor" id="editcion" data-toggle="modal" data-target="#thisDeptUsersList"></i>
											</div>
											<div class="form-group">
												<label for="comment" class="col-sm-4 control-label" >备注
												</label>
												<div class="col-sm-4">
													<input type="text" class="form-control" id="edit_comment" placeholder="部门地点" value="">
												</div>
											</div>
										</form>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
										<button type="button" class="btn btn-primary">Save changes</button>
									</div>
								</div>
							</div>
						</div>
						<!--部门编辑modal--END-->
						<!--添加部门-->

						<div class="modal fade" id="addDeptModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
										<h4 class="modal-title">添加部门</h4>
									</div>
									<div class="modal-body">
										<form class="form-horizontal" role="form">
											<div class="form-group" style="margin-bottom:-15px;
					                    ">
												<label for="deptname" class="col-sm-4 control-label">部门名称
												</label>
												<div class="col-sm-5">
													<input type="text" class="form-control" id="deptname" placeholder="部门名称" value="">
												</div>
											</div>
										</form>
										<form class="form-horizontal" role="form">
											<div class="form-group" style="margin-bottom:-15px;
					                    ">
												<label for="orgCode" class="col-sm-4 control-label">组织代码
												</label>
												<div class="col-sm-5">
													<input type="text" class="form-control" id="orgCode" placeholder="组织代码" value="">
												</div>
											</div>
										</form>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
										<button type="button" class="btn btn-primary" id="confirmDeptAddBtn">Save changes</button>
									</div>
								</div>
							</div>
						</div>
						<!--添加部门--END-->
						<!--添加用户modal-->
						<div class="modal fade" id="addUserModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
										<h4 class="modal-title">添加用户</h4>
									</div>
									<div class="modal-body">
										<form class="form-horizontal" role="form">
											<div class="form-group">
												<label for="username" class="col-sm-4 control-label">姓名
												</label>
												<div class="col-sm-4">
													<input type="text" class="form-control" id="add_username" placeholder="姓名" value="">
												</div>
											</div>
											<div class="form-group">
												<label for="role" class="col-sm-4 control-label" >角色
												</label>
												<div class="col-sm-4">
													<select multiple="multiple" class="myMultiple col-md-12">
														<option></option>
														<option>Alabama</option>
														<option>Alaska</option>
														<option>Arizona</option>
														<option>Arkansas</option>
														<option>California</option>
														<option>Colorado</option>
													</select>
												</div>
											</div>
											<div class="form-group">
												<label for="email" class="col-sm-4 control-label">邮箱
												</label>
												<div class="col-sm-4">
													<input type="text" class="form-control" id="deptsite" placeholder="@company.com" value="">
												</div>
											</div>
										</form>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
										<button type="button" class="btn btn-primary">Save changes</button>
									</div>
								</div>
							</div>
						</div>
						<!--添加用户modal--END-->
						<!--编辑用户modal-->
						<div class="modal fade" id="userEditModal" tabindex="-1"role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
										<h4 class="modal-title">编辑用户</h4>
									</div>
									<div class="modal-body">
										<form class="form-horizontal" role="form">
											<div class="form-group">
												<label for="username" class="col-sm-4 control-label">姓名
												</label>
												<div class="col-sm-4">
													<input type="text" class="form-control" id="edit_username" placeholder="姓名" value="jocks">
												</div>
											</div>
											<div class="form-group">
												<label for="role" class="col-sm-4 control-label" >角色
												</label>
												<div class="col-sm-4">

													<select multiple="multiple" class="myMultiple col-md-12">

														<option selected="selected">Alabama</option>
														<option selected="selected">Alaska</option>
														<option>Arizona</option>
														<option>Arkansas</option>
														<option>California</option>
														<option>Colorado</option>

													</select>

												</div>
											</div>
											<div class="form-group">
												<label for="email" class="col-sm-4 control-label">联系方式
												</label>
												<div class="col-sm-4">
													<input type="text" class="form-control" id="edit_email" placeholder="联系方式" value="1234">
												</div>

											</div>

										</form>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
										<button type="button" class="btn btn-primary">Save changes</button>
									</div>
								</div>
							</div>
						</div>
						<!--编辑用户modal--END-->
						<!--添加角色modal-->
						<div class="modal fade" id="addRoleModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
										<h4 class="modal-title">Box Settings</h4>
									</div>
									<div class="modal-body">
										<form class="form-horizontal" role="form">
											<div class="form-group">
												<label for="rolename" class="col-sm-4 control-label">角色名称
												</label>
												<div class="col-sm-4">
													<input type="text" class="form-control" id="rolename" placeholder="角色名称" value="">
												</div>
											</div>
											<div class="form-group">
												<label for="roleDes" class="col-sm-4 control-label">角色描述
												</label>
												<div class="col-sm-4">
													<input type="text" class="form-control" id="roleDes" placeholder="角色描述" value="">
												</div>

											</div>
											<div class="form-group">
												<label for="roleAction" class="col-sm-4 control-label" >角色权限
												</label>
												<div class="col-sm-4">

													<select multiple="multiple" class="myMultiple col-md-12">
														<option></option>
														<option>Alabama</option>
														<option>Alaska</option>
														<option>Arizona</option>
														<option>Arkansas</option>
														<option>California</option>
														<option>Colorado</option>

													</select>

												</div>
											</div>


										</form>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
										<button type="button" class="btn btn-primary">Save changes</button>
									</div>
								</div>
							</div>
						</div>
						<!--添加角色modal--end-->
						<!--角色编辑modal-->
						<div class="modal fade" id="editRoleModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
										<h4 class="modal-title">Box Settings</h4>
									</div>
									<div class="modal-body">
										<form class="form-horizontal" role="form">
											<div class="form-group">
												<label for="rolename" class="col-sm-4 control-label">角色名称
												</label>
												<div class="col-sm-4">
													<input type="text" class="form-control" id="edit_rolename" placeholder="角色名称" value="A角色">
												</div>
											</div>
											<div class="form-group">
												<label for="roleDes" class="col-sm-4 control-label">角色描述
												</label>
												<div class="col-sm-4">
													<input type="text" class="form-control" id="edit_roleDes" placeholder="角色描述" value="管理">
												</div>
											</div>
											<div class="form-group">
												<label for="roleAction" class="col-sm-4 control-label" >角色权限
												</label>
												<div class="col-sm-4">

													<select multiple="multiple" class="myMultiple col-md-12">
														<option></option>
														<option>Alabama</option>
														<option>Alaska</option>
														<option>Arizona</option>
														<option>Arkansas</option>
														<option>California</option>
														<option>Colorado</option>

													</select>

												</div>
											</div>


										</form>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
										<button type="button" class="btn btn-primary">Save changes</button>
									</div>
								</div>
							</div>
						</div>
						<!--角色编辑modal--end-->

						<!--用户列表modal-->
						<div class="modal fade" id="thisDeptUsersList" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
										<h4 class="modal-title">Box Settings</h4>
									</div>
									<div class="modal-body">

									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
										<button type="button" class="btn btn-primary">Save changes</button>
									</div>
								</div>
							</div>
						</div>
						<!--用户列表modal--end-->
						<div class="row">
							<div class="col-md-3">
								<div class="sidebar-menu nav-collapse">
									<ul style="margin-top: 0px">
										<li class="" id="deptMnmt">
											<a href="#">
												<i class="fa fa-users"></i><span class="menu-text" >部门管理</span>
												<span class="arrow" id="toggleDeptTree"></span>
											</a>

										</li>
										<li>
											<div>
												<ul id="treeDemo" class="ztree" style="display:none">
												</ul>
											</div>
										</li>

									</ul>
								</div>
							</div>
							<div class="col-md-9 box-container ui-sortable">
								<div class="box border blue">
									<div class="box-title">
										<h4>
											<i class="fa fa-bars"></i>
											部门信息
										</h4>
										<div class="tools hidden-xs">

											<a href="javascript:;" class="collapse" >
												<i id="deptchId" class="fa fa-chevron-up">隐藏</i>
											</a>

										</div>
									</div>
									<div class="box-body" id="deptInfo-Id">
										<form class="form-inline" role="form">
											<div class="form-group dept-info">
												<label class="label-deptInfo" for="deptname">部门名称</label>
											</div>
											<div class="form-group dept-info">
												<input type="text" class="form-control" id="show_deptname"
													   value="x部门" readonly>
											</div>


											<div class="form-group dept-info">
												<label class="label-deptInfo" for="orgCode">组织代码</label>
											</div>
											<div class="form-group dept-info">
												<input type="text" class="form-control" id="show_orgCode"
													   value="APTX4869" readonly>
											</div>
											<div class="form-group dept-info">
												<label class="label-deptInfo" for="orgCode">组织地点</label>
											</div>
											<div class="form-group dept-info">
												<input type="text" class="form-control" id="show_deptsite"
													   value="某省市区" readonly>
											</div>

										</form>
										<form class="form-inline" role="form">
											<div class="form-group dept-info">
												<label class="label-deptInfo" for="commente">备注</label>
											</div>
											<div class="form-group dept-info">
												<input type="text" class="form-control" id="show_comment"
													   value="备注aa" readonly>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>

						<div class="row">
							<div class="col-md-12">
								<!-- BOX -->
								<div class="box border red">
									<div class="box-title">
										<h4><i class="fa fa-columns"></i><span class="hidden-inline-mobile">用户---角色</span></h4>
									</div>
									<div class="box-body">
										<div class="tabbable header-tabs">
											<ul class="nav nav-tabs">

												<li><a href="#box_tab2" data-toggle="tab"><i class="fa fa-laptop"></i> <span class="hidden-inline-mobile">角色管理</span></a></li>
												<li class=""><a href="#box_tab1" data-toggle="tab"><i class="fa fa-calendar-o"></i> <span class="hidden-inline-mobile">用户管理</span></a></li>

											</ul>
											<div class="tab-content">
												<div class="tab-pane fade" id="box_tab1">
													<table id="datatable1" cellpadding="0" cellspacing="0" border="0" class="datatable table table-striped table-bordered table-hover">
														<thead>
														<tr>
															<div id="operationUser" class="btn-group">
																<a class=" btn btn-default" href="#" data-toggle="modal" data-target="#addUserModal">添加</a>

																<a class=" btn btn-default" href="#" data-toggle="modal" data-target="#inputModal">导入</a>
																<a class=" btn btn-default" href="#" data-toggle="modal" data-target="#outputModal">导出</a>
															</div>
														</tr>
														<tr>
															<th>用户姓名</th>
															<th>角色名称</th>
															<th class="hidden-xs">所属部门</th>
															<th>联系方式</th>
															<th class="hidden-xs">操作</th>
														</tr>
														</thead>
														<tbody>
														<tr class="gradeX">
															<td>Trident</td>
															<td>
																Internet
																Explorer
																4.0
															</td>
															<td class="hidden-xs">Win 95+</td>
															<td class="center">4</td>
															<td class="center hidden-xs"><a href="#" data-toggle="modal" data-target="#userEditModal">编辑</a><a href="#">删除</a></td>
														</tr>
														<tr class="gradeC">
															<td>Trident</td>
															<td>Internet
																Explorer 5.0</td>
															<td class="hidden-xs">Win 95+</td>
															<td class="center">5</td>
															<td class="center hidden-xs">C</td>
														</tr>
														<tr class="gradeC">
															<td>Trident</td>
															<td>Internet
																Explorer 5.0</td>
															<td class="hidden-xs">Win 95+</td>
															<td class="center">5</td>
															<td class="center hidden-xs">C</td>
														</tr>
														<tr class="gradeC">
															<td>Trident</td>
															<td>Internet
																Explorer 5.0</td>
															<td class="hidden-xs">Win 95+</td>
															<td class="center">5</td>
															<td class="center hidden-xs">C</td>
														</tr>
														<tr class="gradeA">
															<td>Trident</td>
															<td>Internet
																Explorer 5.5</td>
															<td class="hidden-xs">Win 95+</td>
															<td class="center">5.5</td>
															<td class="center hidden-xs">A</td>
														</tr>
														<tr class="gradeA">
															<td>Trident</td>
															<td>Internet
																Explorer 6</td>
															<td class="hidden-xs">Win 98+</td>
															<td class="center">6</td>
															<td class="center hidden-xs">A</td>
														</tr>
														<tr class="gradeA">
															<td>Trident</td>
															<td>Internet Explorer 7</td>
															<td class="hidden-xs">Win XP SP2+</td>
															<td class="center">7</td>
															<td class="center hidden-xs">A</td>
														</tr>
														<tr class="gradeA">
															<td>Trident</td>
															<td>AOL browser (AOL desktop)</td>
															<td class="hidden-xs">Win XP</td>
															<td class="center">6</td>
															<td class="center hidden-xs">A</td>
														</tr>
														<tr class="gradeA">
															<td>Gecko</td>
															<td>Firefox 1.0</td>
															<td class="hidden-xs">Win 98+ / OSX.2+</td>
															<td class="center">1.7</td>
															<td class="center hidden-xs">A</td>
														</tr>
														<tr class="gradeA">
															<td>Gecko</td>
															<td>Firefox 1.5</td>
															<td class="hidden-xs">Win 98+ / OSX.2+</td>
															<td class="center">1.8</td>
															<td class="center hidden-xs">A</td>
														</tr>
														<tr class="gradeA">
															<td>Gecko</td>
															<td>Firefox 2.0</td>
															<td class="hidden-xs">Win 98+ / OSX.2+</td>
															<td class="center">1.8</td>
															<td class="center hidden-xs">A</td>
														</tr>
														<tr class="gradeA">
															<td>Gecko</td>
															<td>Firefox 3.0</td>
															<td class="hidden-xs">Win 2k+ / OSX.3+</td>
															<td class="center">1.9</td>
															<td class="center hidden-xs">A</td>
														</tr>
														</tbody>
														<tfoot>
														<tr>
															<th>Rendering engine</th>
															<th>Browser</th>
															<th class="hidden-xs">Platform(s)</th>
															<th>Engine version</th>
															<th class="hidden-xs">CSS grade</th>
														</tr>
														</tfoot>
													</table>

												</div>

												<div class="tab-pane fade" id="box_tab2">
													<table id="datatable2" cellpadding="0" cellspacing="0" border="0" class="datatable table table-striped table-bordered table-hover">
														<thead>
														<tr>
															<div id="operationRole" class="btn-group">
																<a class=" btn btn-default" href="#" data-toggle="modal" data-target="#addRoleModal">添加</a>

																<a class=" btn btn-default" href="#" data-toggle="modal" data-target="#inputModal">导入</a>
																<a class=" btn btn-default" href="#" data-toggle="modal" data-target="#outputModal">导出</a>
															</div>
														</tr>
														<tr>
															<th>角色名称</th>
															<th>角色描述</th>
															<th class="hidden-xs">角色权限</th>
															<th class="hidden-xs">操作</th>
														</tr>
														</thead>
														<tbody>
														<tr class="gradeX">
															<td>Trident</td>
															<td>
																Internet
																Explorer
																4.0
															</td>
															<td class="hidden-xs">Win 95+</td>

															<td class="center hidden-xs"><a href="#" data-toggle="modal" data-target="#editRoleModal">编辑</a><a href="#">删除</a></td>
														</tr>
														<tr class="gradeC">
															<td>Trident</td>
															<td>Internet
																Explorer 5.0</td>
															<td class="hidden-xs">Win 95+</td>

															<td class="center hidden-xs">C</td>
														</tr>
														<tr class="gradeA">
															<td>Trident</td>
															<td>Internet
																Explorer 5.5</td>
															<td class="hidden-xs">Win 95+</td>

															<td class="center hidden-xs">A</td>
														</tr>
														<tr class="gradeA">
															<td>Trident</td>
															<td>Internet
																Explorer 6</td>
															<td class="hidden-xs">Win 98+</td>

															<td class="center hidden-xs">A</td>
														</tr>
														<tr class="gradeA">
															<td>Trident</td>

															<td class="hidden-xs">Win XP SP2+</td>
															<td class="center">7</td>
															<td class="center hidden-xs">A</td>
														</tr>
														<tr class="gradeA">
															<td>Trident</td>
															<td>AOL browser (AOL desktop)</td>
															<td class="hidden-xs">Win XP</td>

															<td class="center hidden-xs">A</td>
														</tr>
														<tr class="gradeA">
															<td>Gecko</td>
															<td>Firefox 1.0</td>
															<td class="hidden-xs">Win 98+ / OSX.2+</td>

															<td class="center hidden-xs">A</td>
														</tr>
														<tr class="gradeA">
															<td>Gecko</td>
															<td>Firefox 1.5</td>
															<td class="hidden-xs">Win 98+ / OSX.2+</td>

															<td class="center hidden-xs">A</td>
														</tr>
														<tr class="gradeA">
															<td>Gecko</td>
															<td>Firefox 2.0</td>
															<td class="hidden-xs">Win 98+ / OSX.2+</td>

															<td class="center hidden-xs">A</td>
														</tr>
														<tr class="gradeA">
															<td>Gecko</td>
															<td>Firefox 3.0</td>
															<td class="hidden-xs">Win 2k+ / OSX.3+</td>

															<td class="center hidden-xs">A</td>
														</tr>
														</tbody>
														<tfoot>
														<tr>
															<th>Rendering engine</th>
															<th>Browser</th>

															<th>Engine version</th>
															<th class="hidden-xs">CSS grade</th>
														</tr>
														</tfoot>
													</table>
												</div>

											</div>
										</div>
									</div>
								</div>
								<!-- /BOX -->
							</div>
						</div>


					</div>
				</div>
			</div>
		</div>

		<!--权限管理部分-->
		<div id="action-content" style="display:none">
			<div class="container">
				<div class="row">
					<div id="content" class="col-lg-12">

						<div class="row">
							<div class="col-sm-12">
								<div class="page-header">
									<ul class="breadcrumb">
										<li>
											<i class="fa fa-home"></i>
											<a href="index.html">Home</a>
										</li>
										<li>权限管理</li>
									</ul>
									<div class="clearfix">
										<h3 class="content-title  pull-left">权限管理</h3>

									</div>
								</div>
							</div>
						</div>
						<div class="modal fade" id="addActionModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
										<h4 class="modal-title">Box Settings</h4>
									</div>
									<div class="modal-body">
										<form class="form-horizontal" role="form">
											<div class="form-group">
												<label for="actionname" class="col-sm-4 control-label">权限名称
												</label>
												<div class="col-sm-4">
													<input type="text" class="form-control" id="actionname" placeholder="权限名称" value="">
												</div>
											</div>
											<div class="form-group">
												<label for="actiondes" class="col-sm-4 control-label" >权限描述
												</label>
												<div class="col-sm-4">
													<input type="text" class="form-control" id="actiondes" placeholder="权限描述" value="">
												</div>
											</div>
											<div class="form-group">
												<label for="resource" class="col-sm-4 control-label">资源
												</label>
												<div class="col-sm-4">
													<input type="text" class="form-control" id="resource" placeholder="资源" value="">
												</div>

											</div>

										</form>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
										<button type="button" class="btn btn-primary">Save changes</button>
									</div>
								</div>
							</div>
						</div>
						<div class="modal fade" id="editActionModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
										<h4 class="modal-title">Box Settings</h4>
									</div>
									<div class="modal-body">
										<form class="form-horizontal" role="form">
											<div class="form-group">
												<label for="actionname" class="col-sm-4 control-label">权限名称
												</label>
												<div class="col-sm-4">
													<input type="text" class="form-control" id="edit_actionname" placeholder="权限名称" value="管理">
												</div>
											</div>
											<div class="form-group">
												<label for="actiondes" class="col-sm-4 control-label" >权限描述
												</label>
												<div class="col-sm-4">
													<input type="text" class="form-control" id="edit_actiondes" placeholder="权限描述" value="管理数据库">
												</div>
											</div>
											<div class="form-group">
												<label for="resource" class="col-sm-4 control-label">资源
												</label>
												<div class="col-sm-4">
													<input type="text" class="form-control" id="edit_resource" placeholder="资源" value="数据库">
												</div>

											</div>

										</form>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
										<button type="button" class="btn btn-primary">Save changes</button>
									</div>
								</div>
							</div>
						</div>

						<div class="row">
							<div class="col-md-12">
								<!-- BOX -->
								<div class="box border red">
									<div class="box-title">
										<h4><i class="fa fa-columns"></i><span class="hidden-inline-mobile">权限管理</span></h4>
									</div>
									<div class="box-body">
										<div class="tabbable header-tabs">
											<ul class="nav nav-tabs">

												<li><a href="#box_tab3" data-toggle="tab"><i class="fa fa-laptop"></i> <span class="hidden-inline-mobile">权限管理</span></a></li>


											</ul>
											<div class="tab-content">


												<div class="tab-pane active in" id="box_tab3">
													<table id="" cellpadding="0" cellspacing="0" border="0" class="datatable table table-striped table-bordered table-hover">
														<thead>
														<tr>
															<div id="operationAction" class="btn-group">
																<a class=" btn btn-default" href="#" data-toggle="modal" data-target="#addActionModal">添加</a>

																<a class=" btn btn-default" href="#" data-toggle="modal" data-target="#inputModal">导入</a>
																<a class=" btn btn-default" href="#" data-toggle="modal" data-target="#outputModal">导出</a>
															</div>
														</tr>
														<tr>
															<th>权限名称</th>
															<th>权限描述</th>
															<th class="hidden-xs">资源</th>
															<th class="hidden-xs">操作</th>
														</tr>
														</thead>
														<tbody>
														<tr class="gradeX">
															<td>Trident</td>
															<td>
																Internet
																Explorer
																4.0
															</td>
															<td class="hidden-xs">Win 95+</td>

															<td class="center hidden-xs"><a href="#" data-toggle="modal" data-target="#editActionModal">编辑</a><a href="#">删除</a></td>
														</tr>
														<tr class="gradeC">
															<td>Trident</td>
															<td>Internet
																Explorer 5.0</td>
															<td class="hidden-xs">Win 95+</td>

															<td class="center hidden-xs">C</td>
														</tr>
														<tr class="gradeA">
															<td>Trident</td>
															<td>Internet
																Explorer 5.5</td>
															<td class="hidden-xs">Win 95+</td>

															<td class="center hidden-xs">A</td>
														</tr>
														<tr class="gradeA">
															<td>Trident</td>
															<td>Internet
																Explorer 6</td>
															<td class="hidden-xs">Win 98+</td>

															<td class="center hidden-xs">A</td>
														</tr>
														<tr class="gradeA">
															<td>Trident</td>

															<td class="hidden-xs">Win XP SP2+</td>
															<td class="center">7</td>
															<td class="center hidden-xs">A</td>
														</tr>
														<tr class="gradeA">
															<td>Trident</td>
															<td>AOL browser (AOL desktop)</td>
															<td class="hidden-xs">Win XP</td>

															<td class="center hidden-xs">A</td>
														</tr>
														<tr class="gradeA">
															<td>Gecko</td>
															<td>Firefox 1.0</td>
															<td class="hidden-xs">Win 98+ / OSX.2+</td>

															<td class="center hidden-xs">A</td>
														</tr>
														<tr class="gradeA">
															<td>Gecko</td>
															<td>Firefox 1.5</td>
															<td class="hidden-xs">Win 98+ / OSX.2+</td>

															<td class="center hidden-xs">A</td>
														</tr>
														<tr class="gradeA">
															<td>Gecko</td>
															<td>Firefox 2.0</td>
															<td class="hidden-xs">Win 98+ / OSX.2+</td>

															<td class="center hidden-xs">A</td>
														</tr>
														<tr class="gradeA">
															<td>Gecko</td>
															<td>Firefox 3.0</td>
															<td class="hidden-xs">Win 2k+ / OSX.3+</td>

															<td class="center hidden-xs">A</td>
														</tr>
														</tbody>
														<tfoot>
														<tr>
															<th>Rendering engine</th>
															<th>Browser</th>

															<th>Engine version</th>
															<th class="hidden-xs">CSS grade</th>
														</tr>
														</tfoot>
													</table>
												</div>

											</div>
										</div>
									</div>
								</div>
								<!-- /BOX -->
							</div>
						</div>


					</div>
				</div>
			</div>
		</div>

	</div>


</section>



<!-- JAVASCRIPTS -->
<!-- Placed at the end of the document so the pages load faster -->
<!-- JQUERY -->
<script src="/js/priAndDepart/jquery/jquery-2.0.3.min.js"></script>
<!-- JQUERY UI-->
<script src="/js/priAndDepart/jquery-ui-1.10.3.custom/js/jquery-ui-1.10.3.custom.min.js"></script>
<!-- BOOTSTRAP -->
<script src="/js/bootstrap/bootstrap.min.js"></script>


<!-- DATE RANGE PICKER -->
<script src="/js/priAndDepart/bootstrap-daterangepicker/moment.min.js"></script>

<script src="/js/priAndDepart/bootstrap-daterangepicker/daterangepicker.min.js"></script>
<!-- SLIMSCROLL -->
<script type="text/javascript" src="/js/priAndDepart/jQuery-slimScroll-1.3.0/jquery.slimscroll.min.js"></script>
<script type="text/javascript" src="/js/priAndDepart/jQuery-slimScroll-1.3.0/slimScrollHorizontal.min.js"></script>
<!-- BLOCK UI -->
<script type="text/javascript" src="/js/priAndDepart/jQuery-BlockUI/jquery.blockUI.min.js"></script>
<script type="text/javascript" src="/js/priAndDepart/typeahead/typeahead.min.js"></script>
<script type="text/javascript" src="/js/priAndDepart/autosize/jquery.autosize.min.js"></script>
<script type="text/javascript" src="/js/priAndDepart/countable/jquery.simplyCountable.min.js"></script>
<script type="text/javascript" src="/js/priAndDepart/uniform/jquery.uniform.min.js"></script>
<script type="text/javascript" src="/js/priAndDepart/select2/select2.min.js"></script>
<!-- DATA TABLES -->
<script type="text/javascript" src="/js/priAndDepart/datatables/media/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="/js/priAndDepart/datatables/media/assets/js/datatables.min.js"></script>
<script type="text/javascript" src="/js/priAndDepart/timeago/jquery.timeago.min.js"></script>
<script type="text/javascript" src="/js/priAndDepart/datatables/extras/TableTools/media/js/TableTools.min.js"></script>
<script type="text/javascript" src="/js/priAndDepart/datatables/extras/TableTools/media/js/ZeroClipboard.min.js"></script>
<!-- COOKIE -->
<script type="text/javascript" src="/js/priAndDepart/jQuery-Cookie/jquery.cookie.min.js"></script>
<!-- CUSTOM SCRIPT -->
<script src="/js/priAndDepart/script.js"></script>

<script type="text/javascript" src="/js/priAndDepart/jquery.ztree.core-3.5.js"></script>
<script type="text/javascript" src="/js/priAndDepart/jquery.ztree.excheck-3.5.js"></script>
<script type="text/javascript" src="/js/priAndDepart/jquery.ztree.exedit-3.5.js"></script>
<script src="/js/priAndDepart/rabc/common.js"></script>
<script>
	jQuery(document).ready(function() {
		App.setPage("dynamic_table");  //Set current page
		App.init(); //Initialise plugins and elements
	});
	jQuery(document).ready(function() {
		App.setPage("forms");  //Set current page
		App.init(); //Initialise plugins and elements
	});
</script>
<script type="text/javascript">
	$(".myMultiple").select2();
</script>

</body>
</html>