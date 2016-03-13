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
                            <button class="btn btn-default" data-toggle="modal" data-target=".bs-example-modal-lg">查看</button> |
                            <button class="btn btn-default" data-toggle="modal" data-target=".bs-example-modal-lg">修改</button>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>



    </div>
    </div>
    <div class="modal fade bs-example-modal-lg" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">地名信息</h4>
                </div>
                <div class="modal-body">
                    <div class="panel panel-info">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#basicInformation">基本信息</a>
                            </h4>
                        </div>
                        <div id="basicInformation" class="panel-collapse collapse in">
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-md-4">
                                        <label for="administrativeDivision" class="col-sm-3 control-label">行政区划</label>
                                        <select class="col-sm-9 form-control" ></select>
                                    </div>
                                    <div class="col-md-4">
                                        <label for="languages" class="col-sm-3 control-label">语种</label>
                                        <select class="col-sm-9 form-control" id="languages"></select>
                                    </div>
                                    <div class="col-md-4">
                                        <label for="coordinates" class="col-sm-3 control-label">坐标系</label>
                                        <select class="col-sm-9 form-control" id="coordinates"></select>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-4">
                                        <label for="placesnameCode" class="col-sm-3 control-label">地名代码</label>
                                        <input type="text" class="col-sm-9 form-control" id="placesnameCode" />
                                    </div>
                                    <div class="col-md-4">
                                        <label for="scale" class="col-sm-3 control-label">比例尺</label>
                                        <select class="col-sm-9 form-control" id="scale"></select>
                                    </div>
                                    <div class="col-md-4">
                                        <label for="longitudeFrom" class="col-sm-3 control-label">经度</label>
                                        <form id="longitudeFrom" class="col-sm-9 form-inline" role="form">
                                            <input type="text" class="form-control form" id="longitudeMin" /> -
                                            <input type="text" class="form-control" id="longitudeMax" />
                                        </form>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-4">
                                        <label for="standardName" class="col-sm-3 control-label">标准名称</label>
                                        <input type="text" class="col-sm-9 form-control"  />
                                    </div>
                                    <div class="col-md-4">
                                        <label for="namingTime" class="col-sm-3 control-label">命名时间</label>
                                        <select class="col-sm-9 form-control" id="namingTime"></select>
                                    </div>
                                    <div class="col-md-4">
                                        <label for="latitudeForm" class="col-sm-3 control-label">纬度</label>
                                        <form id="latitudeForm" class="col-sm-9 form-inline" role="form">
                                            <input type="text" class="form-control" id="latitudeMin" /> -
                                            <input type="text" class="form-control" id="latitudeMax" />
                                        </form>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-4">
                                        <label for="spelling" class="col-sm-3 control-label">罗马拼写</label>
                                        <input type="text" class="col-sm-9 form-control" id="spelling" />
                                    </div>
                                    <div class="col-md-4">
                                        <label for="usingTime" class="col-sm-3 control-label">使用时间</label>
                                        <select class="col-sm-9 form-control" id="usingTime"></select>
                                    </div>
                                    <div class="col-md-4">
                                        <label for="standardJudge" class="col-sm-3 control-label">是否规范</label>
                                        <select class="col-sm-9 form-control" id="standardJudge"></select>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-4">
                                        <label for="generalName" class="col-sm-3 control-label">标准名称通名</label>
                                        <input type="text" class="col-sm-9 form-control" id="generalName" />
                                    </div>
                                    <div class="col-md-4">
                                        <label for="dense" class="col-sm-3 control-label">密级</label>
                                        <select class="col-sm-9 form-control" id="dense"></select>
                                    </div>
                                    <div class="col-md-4">
                                        <label for="planningTime" class="col-sm-3 control-label">规划时间</label>
                                        <select class="col-sm-9 form-control" id="planningTime"></select>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-4">
                                        <label for="generalnameSpelling" class="col-sm-3 control-label">通名罗马拼写</label>
                                        <input type="text" class="col-sm-9 form-control" id="generalnameSpelling" />
                                    </div>
                                    <div class="col-md-4">
                                        <label for="establishedYear" class="col-sm-3 control-label">设立年份</label>
                                        <input type="text" class="col-sm-9 form-control" id="establishedYear" />
                                    </div>
                                    <div class="col-md-4">
                                        <label for="pictureCode" class="col-sm-3 control-label">图片代码</label>
                                        <input type="text" class="col-sm-9 form-control" id="pictureCode" />
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-4">
                                        <label for="properName" class="col-sm-3 control-label">标准名称专名</label>
                                        <input type="text" class="col-sm-9 form-control" id="properName" />
                                    </div>
                                    <div class="col-md-4">
                                        <label for="abolishedYear" class="col-sm-3 control-label">废止年份</label>
                                        <select class="col-sm-9 form-control" id="abolishedYear"></select>
                                    </div>
                                    <div class="col-md-4">
                                        <label for="pictureNumber" class="col-sm-3 control-label">图名图号</label>
                                        <input type="text" class="col-sm-9 form-control" id="pictureNumber" />
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-4">
                                        <label for="propernameSpelling" class="col-sm-3 control-label">专名罗马拼写</label>
                                        <input type="text" class="col-sm-9 form-control" id="propernameSpelling" />
                                    </div>
                                    <div class="col-md-4">
                                        <label for="pictureName" class="col-sm-3 control-label">图上名称</label>
                                        <input type="text" class="col-sm-9 form-control" id="pictureName" />
                                    </div>
                                    <div class="col-md-4">
                                        <label for="recordDate" class="col-sm-3 control-label">登记日期</label>
                                        <select class="col-sm-9 form-control" id="recordDate"></select>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-4">
                                        <label for="abbreviation" class="col-sm-3 control-label">简称</label>
                                        <input type="text" class="col-sm-9 form-control" id="abbreviation" />
                                    </div>
                                    <div class="col-md-4">
                                        <label for="altitude" class="col-sm-3 control-label">高程(米)</label>
                                        <input type="number" class="col-sm-9 form-control" id="altitude" />
                                    </div>
                                    <div class="col-md-4">
                                        <label for="registrantName" class="col-sm-3 control-label">登记人姓名</label>
                                        <input type="text" class="col-sm-9 form-control" id="registrantName" />
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-4">
                                        <label for="alias" class="col-sm-3 control-label">别名</label>
                                        <input type="text" class="col-sm-9 form-control" id="alias" />
                                    </div>
                                    <div class="col-md-4">
                                        <label for="measuringMethod" class="col-sm-3 control-label">测量方法</label>
                                        <input type="text" class="col-sm-9 form-control" id="measuringMethod" />
                                    </div>
                                    <div class="col-md-4">
                                        <label for="unitName" class="col-sm-3 control-label">登记单位名称</label>
                                        <input type="text" class="col-sm-9 form-control" id="unitName" />
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <label for="placesnameDescription" class="col-sm-3 control-label" style="padding-left:15px;width: 16%;">地名含义描述</label>
                                        <div class="col-sm-9" style="width: 84%;padding-right: 5px;">
                                            <textarea class="form-control" id="placesnameDescription"></textarea>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <label for="historyDescription" class="col-sm-3 control-label" style="padding-left:15px;width: 16%;">历史沿革描述</label>
                                        <div class="col-sm-9" style="width: 84%;padding-right: 5px;">
                                            <textarea class="form-control " id="historyDescription"></textarea>
                                        </div>
                                    </div>
                                </div>
                                <div class="row ">
                                    <div class="col-md-6 ">
                                        <label for="geographicDescription" class="col-sm-3 control-label " style="padding-left:15px;width: 16%;margin-top: 10px; ">地理实体描述</label>
                                        <div class="col-sm-9 " style="width: 84%;padding-right: 5px; ">
                                            <textarea class="form-control" id="geographicDescription" style="margin-top: 10px;"></textarea>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <label for="otherDescription" class="col-sm-3 control-label" style="padding-left:15px;width: 16%;margin-top: 10px;">其他信息描述</label>
                                        <div class="col-sm-9" style="width: 84%;padding-right: 5px;">
                                            <textarea class="form-control " id="otherDescription" style="margin-top: 10px; "></textarea>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-info ">
                        <div class="panel-heading ">
                            <h4 class="panel-title ">
                                <a data-toggle="collapse" data-parent="#accordion" href="#otherInformation">其他信息</a>
                            </h4>
                        </div>
                        <div id="otherInformation" class="panel-collapse collapse">
                            <div class="panel-body ">
                                <iframe id="materialIfame" src="/editMat/material.jsp" marginwidth="0" marginheight="0"   frameborder="0" width="100%" scrolling="no" height="100%"
                                        width="100%">

                                </iframe>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">确定</button>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
