<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basepath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <title>扫描并上传</title>
    <script type="text/javascript" src="<%=basepath%>scan/Resources/dynamsoft.webtwain.initiate.js"> </script>
    <script type="text/javascript" src="<%=basepath%>scan/Resources/dynamsoft.webtwain.config.js"> </script>
    <link rel="stylesheet" href="<%=basepath%>css/bootstrap/bootstrap.css">
    <script src="<%=basepath%>js/jquery/jquery-1.10.2.min.js"></script>
    <script src="<%=basepath%>js/bootstrap/bootstrap.min.js"></script>
    <script type="text/javascript" src="<%=basepath%>js/scan/scan.js"></script>
</head>
<body>
<div class="container">
    <div class="col-lg-7">
        <div class="panel" id="panel-image"><%--START 图像--%>
            <div id="dwtcontrolContainer"></div>
            <div><%--START扫描div底部控件--%>
                <div >
                    <ul class="list-inline">
                        <li>
                            <div class="btn-group">
                                <input onclick="btnFirstImage_onclick()" type="button" class="btn btn-default"  value="首页" />
                                <input onclick="btnPreImage_onclick()" type="button" class="btn btn-default" value="前进" />
                            </div>
                        </li>
                        <li>
                            <input type="text" size="2" id="DW_CurrentImage" readonly="readonly" value="0" />                                        <input type="text" size="1"  readonly="readonly" value="/" />
                            <input type="text" size="2" id="DW_TotalImage" readonly="readonly" value="0" />
                        </li>
                        <li>
                            <div class="btn-group">
                                <input onclick="btnNextImage_onclick()" type="button" class="btn btn-default" value="后退" />
                                <input onclick="btnLastImage_onclick()" type="button" class="btn btn-default" value="末页" />
                            </div>
                        </li>
                    </ul>
                </div>
                <div >
                    <label for="DW_PreviewMode">展示方式</label>
                    <select size="1" id="DW_PreviewMode" onchange="setlPreviewMode();">
                        <option value="0">1X1</option>
                        <option value="1">2X2</option>
                        <option value="2">3X3</option>
                        <option value="3">4X4</option>
                        <option value="4">5X5</option>
                    </select>
                </div>
                <div >
                    <ul class="list-inline">
                        <li>
                            <input onclick="btnRemoveSelectedImages_onclick()" type="button" class="btn btn-default btn-lg" value="删除选中图片" />
                        </li>
                        <li>
                            <input onclick="btnRemoveAllImages_onclick()" type="button" class="btn btn-default btn-lg" value="清空所有图片" />
                        </li>
                    </ul>
                </div>
            </div><%--END 扫描div底部控件--%>
        </div><%--END图像--%>
    </div>
    <div class="col-lg-3">
        <div class="panel">
            <div class="panel-heading">
                <h3>获取图像</h3>
            </div>
            <div class="panel-body">
                <div class="panel-group">
                    <ul class="list-inline">
                        <li>
                            <div class="panel-group">
                                <label for="source">选择设备</label>
                                <select id="source" class="form-control"></select>
                            </div>
                        </li>
                        <li>

                        </li>
                        <li>
                            <input type="button" class="btn btn-default" onclick="AcquireImage();" value="扫描"/>
                        </li>
                        <li>
                            <input type="button" class="btn btn-default" onclick="LoadImage();" value="加载" />
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="panel">
            <div class="panel-heading">
                <h3>处理图像</h3>
            </div>
            <div class="panel-body">
                <div class="panel-group">
                    <label>文件格式</label>
                    <ul class="list-inline">
                        <li>
                            <div class="panel-group">
                                <label for="imgTypejpeg">JPEG</label>
                                <input type="radio" name="ImageType" id="imgTypejpeg" class="pull-left" checked>
                            </div>
                        </li>
                        <li>
                            <div class="panel-group">
                                <label for="imgTypetiff">TIF</label>
                                <input type="radio" name="ImageType" id="imgTypetiff"  class="pull-left">
                            </div>
                        </li>
                        <li>
                            <div class="panel-group">
                                <label for="imgTypepdf">PDF</label>
                                <input type="radio" name="ImageType" id="imgTypepdf" class="pull-left">
                            </div>
                        </li>
                    </ul>
                </div>

                <div class="panel-group">
                    <h4>上传文件</h4>
                    <form id="saveForm">
                        <div class="form-group">
                            <label for="upload_fileType">文件类型</label>
                            <select id="upload_fileType">
                                <option value="1">身份证</option>
                                <option value="2">房产证</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <input type="button" class="btn btn-default" onclick="UploadImage();" value="上传" />
                        </div>
                    </form>
                </div>
                <div class="panel-group">
                    <input type="button" class="btn btn-default" onclick="SaveImage();" value="保存至本地" />
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
