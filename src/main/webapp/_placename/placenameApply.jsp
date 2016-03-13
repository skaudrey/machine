<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
    String path = request.getContextPath();
    String basepath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <title>地名申请</title>
  <link href="<%=basepath%>/css/bootstrap/bootstrap.min.css" rel="stylesheet">
  <script src="<%=basepath%>/js/jquery/jquery-1.10.2.min.js"></script>
  <script src="<%=basepath%>/js/bootstrap/bootstrap.min.js"></script>
  <link href="<%=basepath%>/css/mystyle.css" rel="stylesheet">

  <style type="text/css">
    .col-md-6{
      padding-right: 0px;
    }
    .col-sm-8 {
      padding: 0px;
    }
  </style>
</head>
<body>
  <div class="container-fluid">
    <ul class="nav nav-tabs"  >
      <li class="active" id="Applying-tab"><a href="javascript:void(0);" class="btn btn-info" onclick=setTab(0)>地名申请受理</a></li>
      <li id="Applyed-tab"><a href="javascript:void(0);" class="btn btn-primary" onclick=setTab(1)>已受理申请</a></li>
    </ul>
    <div id="Applying">
        <form action="/toponymy/toponymyMgrAction!startToponymyApplyProcess" method="post">
            <h4 class="pull-left title-pull-left">地名命名</h4>
            <!--右上角button组-->
            <div class="btn-group position-fixed">
                <button type="submit" class="btn btn-info btn-sm">确定</button>
                <button type="button" class="btn btn-default btn-sm" onclick="setTab(1)">取消</button>
            </div>
            <br />
            <br />
            <div class="panel-group" id="accordion" style="margin-top: 5px;margin-left: 15px;margin-right: 15px;">
                <div class="panel panel-info">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#planNameInformation">拟命名信息</a>
                        </h4>
                    </div>
                    <div id="planNameInformation" class="panel-collapse collapse in">
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-10">
                                    <div class="col-md-6">
                                        <label for="administrativeDivision" class="col-md-4 control-label">行政区划</label>
                                        <select class="col-md-8 form-control" id="administrativeDivision"></select>

                                    </div>
                                    <div class="col-md-6">
                                        <label for="placesnameCode" class="col-sm-4 control-label">地名代码</label>
                                        <input type="text" class="col-sm-8 form-control" id="placesnameCode" />
                                    </div>
                                    <div class="col-md-6">
                                        <label for="standardName" class="col-sm-4 control-label">标准名称</label>
                                        <input type="text" class="col-sm-8 form-control" id="standardName" />
                                    </div>
                                    <div class="col-md-6">
                                        <label for="spelling" class="col-sm-4 control-label">罗马拼写</label>
                                        <input type="text" class="col-sm-8 form-control" id="spelling" />
                                    </div>
                                </div>

                                <div class="col-md-2">
                                    <button id="planName" type="button" class="btn btn-info btn-block" data-toggle="modal" data-target="#multinameModal">拟命名</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel panel-info ">
                    <div class="panel-heading ">
                        <h4 class="panel-title ">
                            <a data-toggle="collapse" data-parent="#accordion" href="#information">信息</a>
                        </h4>
                    </div>
                    <div id="information" class="panel-collapse collapse in">
                        <div class="panel-body ">
                            <div class="row">
                                <div class="col-md-4">
                                    <label for="languages" class="col-sm-4 control-label">语种</label>
                                    <select class="col-sm-8 form-control" id="languages"></select>
                                </div>
                                <div class="col-md-4">
                                    <label for="coordinates" class="col-sm-4 control-label">坐标系</label>
                                    <select class="col-sm-8 form-control" id="coordinates"></select>
                                </div>
                                <div class="col-md-4">
                                    <label for="scale" class="col-sm-4 control-label">比例尺</label>
                                    <select class="col-sm-8 form-control" id="scale"></select>
                                </div>
                                <div class="col-md-4">
                                    <label for="longitudeFrom" class="col-sm-4 control-label">经度</label>
                                    <form id="longitudeFrom" class="col-sm-8 form-inline" role="form">
                                        <input type="text" class="form-control form" id="longitudeMin" /> -
                                        <input type="text" class="form-control" id="longitudeMax" />
                                    </form>
                                </div>

                                <div class="col-md-4">
                                    <label for="namingTime" class="col-sm-4 control-label">命名时间</label>
                                    <select class="col-sm-8 form-control" id="namingTime"></select>
                                </div>
                                <div class="col-md-4">
                                    <label for="latitudeForm" class="col-sm-4 control-label">纬度</label>
                                    <form id="latitudeForm" class="col-sm-8 form-inline" role="form">
                                        <input type="text" class="form-control" id="latitudeMin" /> -
                                        <input type="text" class="form-control" id="latitudeMax" />
                                    </form>
                                </div>

                                <div class="col-md-4">
                                    <label for="usingTime" class="col-sm-4 control-label">使用时间</label>
                                    <select class="col-sm-8 form-control" id="usingTime"></select>
                                </div>
                                <div class="col-md-4">
                                    <label for="standardJudge" class="col-sm-4 control-label">是否规范</label>
                                    <select class="col-sm-8 form-control" id="standardJudge"></select>
                                </div>
                                <div class="col-md-4">
                                    <label for="generalName" class="col-sm-4 control-label">标准名称通名</label>
                                    <input type="text" class="col-sm-8 form-control" id="generalName" />
                                </div>
                                <div class="col-md-4">
                                    <label for="dense" class="col-sm-4 control-label">密级</label>
                                    <select class="col-sm-8 form-control" id="dense"></select>
                                </div>
                                <div class="col-md-4">
                                    <label for="planningTime" class="col-sm-4 control-label">规划时间</label>
                                    <select class="col-sm-8 form-control" id="planningTime"></select>
                                </div>
                                <div class="col-md-4">
                                    <label for="generalnameSpelling" class="col-sm-4 control-label">通名罗马拼写</label>
                                    <input type="text" class="col-sm-8 form-control" id="generalnameSpelling" />
                                </div>
                                <div class="col-md-4">
                                    <label for="establishedYear" class="col-sm-4 control-label">设立年份</label>
                                    <input type="text" class="col-sm-8 form-control" id="establishedYear" />
                                </div>
                                <div class="col-md-4">
                                    <label for="pictureCode" class="col-sm-4 control-label">图片代码</label>
                                    <input type="text" class="col-sm-8 form-control" id="pictureCode" />
                                </div>
                                <div class="col-md-4">
                                    <label for="properName" class="col-sm-4 control-label">标准名称专名</label>
                                    <input type="text" class="col-sm-8 form-control" id="properName" />
                                </div>
                                <div class="col-md-4">
                                    <label for="abolishedYear" class="col-sm-4 control-label">废止年份</label>
                                    <select class="col-sm-8 form-control" id="abolishedYear"></select>
                                </div>
                                <div class="col-md-4">
                                    <label for="pictureNumber" class="col-sm-4 control-label">图名图号</label>
                                    <input type="text" class="col-sm-8 form-control" id="pictureNumber" />
                                </div>
                                <div class="col-md-4">
                                    <label for="propernameSpelling" class="col-sm-4 control-label">专名罗马拼写</label>
                                    <input type="text" class="col-sm-8 form-control" id="propernameSpelling" />
                                </div>
                                <div class="col-md-4">
                                    <label for="pictureName" class="col-sm-4 control-label">图上名称</label>
                                    <input type="text" class="col-sm-8 form-control" id="pictureName" />
                                </div>
                                <div class="col-md-4">
                                    <label for="recordDate" class="col-sm-4 control-label">登记日期</label>
                                    <select class="col-sm-8 form-control" id="recordDate"></select>
                                </div>
                                <div class="col-md-4">
                                    <%--<label for="abbreviation" class="col-sm-4 control-label">简称</label>
                                    <input type="text" class="col-sm-8 form-control" id="abbreviation" />--%>
                                    <label for="placeName" class="col-sm-4 control-label">名称</label>
                                    <input type="text" class="col-sm-8 form-control" id="placeName" name="placeName" />
                                </div>
                                <div class="col-md-4">
                                    <label for="altitude" class="col-sm-4 control-label">高程(米)</label>
                                    <input type="number" class="col-sm-8 form-control" id="altitude" />
                                </div>
                                <div class="col-md-4">
                                    <label for="registrantName" class="col-sm-4 control-label">登记人姓名</label>
                                    <input type="text" class="col-sm-8 form-control" id="registrantName" />
                                </div>
                                <div class="col-md-4">
                                    <label for="alias" class="col-sm-4 control-label">别名</label>
                                    <input type="text" class="col-sm-8 form-control" id="alias" />
                                </div>
                                <div class="col-md-4">
                                    <label for="measuringMethod" class="col-sm-4 control-label">测量方法</label>
                                    <input type="text" class="col-sm-8 form-control" id="measuringMethod" />
                                </div>
                                <div class="col-md-4">
                                    <label for="unitName" class="col-sm-4 control-label">登记单位名称</label>
                                    <input type="text" class="col-sm-8 form-control" id="unitName" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <%--<label for="placesnameDescription" class="col-sm-4 control-label" style="padding-left:15px;width: 21%;">地名含义描述</label>
                                    <div class="col-sm-8" style="width: 79%;padding-right: 5px;">
                                        <textarea class="form-control" id="placesnameDescription"></textarea>
                                    </div>--%>
                                    <label for="placesnameDescription" class="col-sm-4 control-label" style="padding-left:15px;width: 21%;">地名含义描述</label>
                                    <div class="col-sm-8" style="width: 79%;padding-right: 5px;">
                                        <textarea class="form-control" id="placesnameDescription" name="description"></textarea>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <label for="historyDescription" class="col-sm-4 control-label" style="padding-left:15px;width: 21%;">历史沿革描述</label>
                                    <div class="col-sm-8" style="width: 79%;padding-right: 5px;">
                                        <textarea class="form-control " id="historyDescription"></textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="row ">
                                <div class="col-md-6 ">
                                    <label for="geographicDescription" class="col-sm-4 control-label " style="padding-left:15px;width: 21%;margin-top: 10px; ">地理实体描述</label>
                                    <div class="col-sm-8 " style="width: 79%;padding-right: 5px; ">
                                        <textarea class="form-control" id="geographicDescription" style="margin-top: 10px;"></textarea>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <label for="otherDescription" class="col-sm-4 control-label" style="padding-left:15px;width: 21%;margin-top: 10px;">其他信息描述</label>
                                    <div class="col-sm-8" style="width: 79%;padding-right: 5px;">
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
                    <div id="otherInformation" class="panel-collapse collapse in">
                        <div class="panel-body ">
                            <!--其他信息为上传各种扫描件-->
                            <div class="pull-right">
                                <input type="file" id="inputFile">
                                <button type="submit " class="btn btn-default btn-sm ">提交</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
      <div id="Applyed" style="display: none;">
         <%--<table class="table table-striped table-hover table-bordered table-condensed">--%>
         <table class="table table-hover table-bordered">
             <thead>
             <tr>
                 <th>项目编号</th>
                 <th>项目名称</th>
                 <th>当前节点</th>
                 <th>申请时间</th>
                 <th>流程追踪</th>
             </tr>
             </thead>
             <tbody>
             <s:iterator value="results" id="obj">
                 <s:url var="flowPicUrl" action="diagram-view.jsp" namespace="/diagram-viewer">
                     <s:param name="processDefinitionId" value="#obj.pdid"/>
                     <%--<s:param name="processInstanceId" value="#obj.piid"/>--%>
                 </s:url>
                 <tr>
                     <td><s:property value="#obj.piid"/></td>
                     <td><s:property value="#obj.flowName"/></td>
                     <td><span class="label label-primary"><s:property value="#obj.currentNode"/></span></td>
                     <td><s:date name="#obj.applyTime" format="yyyy-MM-dd HH:mm"/></td>
                     <td><a href="/diagram-viewer/diagram-view.jsp?processDefinitionId=<s:property value='#obj.pdid'/>&processInstanceId=<s:property value='#obj.piid'/>"><span class="label label-primary">查看</span></a> </td>
                 </tr>
             </s:iterator>

             </tbody>
         </table>
     </div>


  </div>
  <div class="modal fade" id="multinameModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
      <div class="modal-dialog">
          <div class="modal-content">
              <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                  <h4 class="modal-title">重名信息</h4>
              </div>
              <div class="modal-body">
                  <table class="table table-striped table-hover table-bordered table-condensed">
                      <thead>
                      <tr>
                          <th>标准名称</th>
                          <th>罗马拼写</th>
                          <th>行政区划</th>
                          <th>地名类型</th>
                      </tr>
                      </thead>
                      <tbody>
                      <tr>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                      </tr>
                      </tbody>
                  </table>
              </div>
              <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                  <button type="button" class="btn btn-primary">了解</button>
              </div>
          </div><!-- /.modal-content -->
      </div><!-- /.modal-dialog -->
  </div>
<script>
    function setTab(index){
        if(index==0){
            $("#Applying").css("display","block");
            $("#Applyed").css("display","none");

            $("#Applyed-tab").removeClass("active"); $("#Applying-tab").addClass("active");
        }else if(index==1){
            $("#Applyed").css("display","block");
            $("#Applying").css("display","none");

            $("#Applying-tab").removeClass("active"); $("#Applyed-tab").addClass("active");
        }
    }
</script>
</body>
</html>
