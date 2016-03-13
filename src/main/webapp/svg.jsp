<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basepath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html>
<head>
	<script src="<%=basepath%>js/jquery-1.8.3.min.js"></script>
	<script src="<%=basepath%>js/loadsvg.js"></script>
	<link rel="stylesheet" href="<%=basepath%>css/svg.css"/>
</head>
<body>
<style>
</style>
</body>
<script>
	$(document).ready(function(){
		loadsvg();
		$(this).keydown(function(event){
			if(event.which==17)
				ctrlPressed=true;
		});
		$(this).keyup(function(event){
			if(event.which==17)
				ctrlPressed=false;
		});
		$(this).keydown(function(e)
		{
			if(e.which==27)
				$('#background_wrap').remove();
		});
	});
</script>
</html>