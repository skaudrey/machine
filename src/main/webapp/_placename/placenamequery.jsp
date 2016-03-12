<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
  String path = request.getContextPath();
  String basepath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <title>地名查询</title>
    <link href="<%=basepath%>/css/bootstrap/bootstrap.min.css" rel="stylesheet">
    <script src="<%=basepath%>/js/jquery/jquery-1.10.2.min.js"></script>
    <script src="<%=basepath%>/js/bootstrap/bootstrap.min.js"></script>
    <link href="<%=basepath%>/css/mystyle.css" rel="stylesheet">
    <style>
        .divide-10{
            height: 10px;
            width: 100%;
        }
    </style>
</head>
<body>
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-4">
                <div class="divide-10"></div>
                <div class="divide-10"></div>
                <div class="divide-10"></div>
                <div class="divide-10"></div>
                <div class="divide-10"></div>
                <div class="divide-10"></div>
                <div class="divide-10"></div>

                <div class="row">
                    <div class="col-sm-4">
                        <label for="standardName" class="control-label">标准名称</label>
                    </div>
                    <div class="col-sm-8">
                        <input class="form-control" id="standardName" />
                    </div>

                </div>
                <div class="divide-10"></div>
                <div class="row">
                    <div class="col-sm-4">
                        <label for="pinyin" class="control-label">汉语拼音</label>
                    </div>
                    <div class="col-sm-8">
                        <input class="form-control" id="pinyin" />
                    </div>


                </div>
                <div class="divide-10"></div>
                <div class="row">
                    <div class="col-sm-4">
                        <label for="administrativeDivision" class="control-label">行政区划</label>
                    </div>
                    <div class="col-sm-8">
                        <select class="form-control" id="administrativeDivision"></select>
                    </div>


                </div>
                <div class="divide-10"></div>
                <div class="row">
                    <div class="col-sm-4">
                        <label for="placesnameType" class="control-label">地名类型</label>
                    </div>
                    <div class="col-sm-8">
                        <select class="form-control" id="placesnameType"></select>
                    </div>


                </div>
                <div class="divide-10"></div>
                <div class="row">
                    <div class="col-sm-4">
                        <label for="placesSimplename" class="control-label">简称</label>
                    </div>
                    <div class="col-sm-8">
                        <input class="form-control" id="placesSimplename" />
                    </div>
                </div>
                <div class="divide-10"></div>
                <div class="row">
                    <div class="col-sm-4">
                        <label for="placesOthername" class="control-label">别名</label>
                    </div>
                    <div class="col-sm-8">
                        <input class="form-control" id="placesOthername" />
                    </div>
                </div>
                <div class="divide-10"></div>
                <div class="row">
                    <div class="col-sm-4">
                        <label for="peaplename" class="control-label">登记人姓名</label>
                    </div>
                    <div class="col-sm-8">
                        <input class="col-xs-8 form-control" id="peaplename" />
                    </div>


                </div>
                <div class="divide-10"></div>
                <div class="row">
                    <div class="col-sm-8 col-sm-offset-4">
                        <button class="btn btn-info btn-block">查询</button>
                    </div>
                </div>
            </div>
            <div class="col-sm-8">
                <h3 class="text-center">地名列表</h3>
                <table id="placenametable" class="table table-striped table-bordered table-hover">
                    <thead>
                    <tr>
                        <th>行政区划</th>
                        <th>标准名称</th>
                        <th>罗马拼写</th>
                        <th>地名类型</th>
                        <th>登记时间</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td>
                            <a href="#" data-toggle="modal">附件</a> |
                            <a href="/_tianditu/tianditu.jsp" data-toggle="modal">地图</a> |
                            <a href="/_placename/placesnameEntering.jsp" data-toggle="modal">查看</a> |
                            <a href="/_placename/placesnameEntering.jsp" data-toggle="modal">修改</a>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>



    </div>
    </div>
</body>
</html>
