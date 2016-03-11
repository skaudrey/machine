<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/3/9
  Time: 18:44
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String path = request.getContextPath();
  String basepath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <title>个人中心</title>
    <link rel="stylesheet" href="/css/bootstrap/bootstrap.min.css" />
    <link rel="stylesheet" href="/css/font-awesome.min.css">
    <script type="text/javascript" src="/js/jquery/jquery-2.0.3.min.js" ></script>
    <script type="text/javascript" src="/js/bootstrap/bootstrap.min.js" ></script>
    <script type="text/javascript" src="/js/basic.js"></script>
    <style>
        ul.nav-tabs{
            margin-top: 25px;
        }
    </style>
</head>
<body>
<div class="container-fluid">

    <ul class="nav nav-tabs"  >
        <li class="active" id="info-tab"><a href="javascript:void(0);" class="btn btn-info" onclick=setTab(0)>基本信息</a></li>
        <li id="log-tab"><a href="javascript:void(0);" class="btn btn-primary" onclick=setTab(1)>其他</a></li>
    </ul>

    <div id="info" >
        <div role="form" >
            <div class="form-group">
                <label for="user">用户名：
                    <i class="fa fa-user"></i>
                </label>
                <input type="text" class="form-control" name="userId" id="user" />
            </div>
            <div class="form-group">
                <label for="password">密码：
                    <i class="fa fa-lock"></i>
                </label>
                <input type="password" class="form-control" name="password" id="password" />
            </div>
            <div class="form-group">
                <label for="user">电话/手机：
                    <i class="fa fa-user"></i>
                </label>
                <input type="text" class="form-control" name="" id="tele" />
            </div>
            <div class="form-group">
                <label for="user">Email：
                    <i class="fa fa-user"></i>
                </label>
                <input type="text" class="form-control" name="" id="email" />
            </div>
            <div class="form-group">
                <label for="user">部门：
                    <i class="fa fa-user"></i>
                </label>
                <input type="text" class="form-control" name="" id="destrict" />
            </div>
        </div>
    </div>
    <div id="log"  style="display: none">
        <div>
            其他。
        </div>
    </div>


</div>
<script>
    function setTab(index){
        if(index==0){
            $("#info").css("display","block");
            $("#log").css("display","none");

            $("#log-tab").removeClass("active"); $("#info-tab").addClass("active");
        }else if(index==1){
            $("#log").css("display","block");
            $("#info").css("display","none");

            $("#info-tab").removeClass("active"); $("#log-tab").addClass("active");
        }
    }
</script>
</body>
</html>

