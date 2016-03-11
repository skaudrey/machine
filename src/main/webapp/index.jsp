<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>地名志编辑系统</title>
	<script type="text/javascript" src="js/jquery/jquery-2.0.3.min.js"></script>
	<link rel="stylesheet" href="css/bootstrap.min.css" />
	<link rel="stylesheet" href="css/index.css" />
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">
</head>
<body class="loginbody">
<section id="page">
	<section id="login" style="margin-top: 50px;">
		<div class="container">
			<div class="row">
				<div class="col-sm-4 col-sm-offset-4 " >

					<div class="loginheader">
						<h3  style="text-align: center;padding-top:20px;font-size: 24px;">浙江省地名志编辑系统</h3>
					</div>
					<div class="divide-20"></div>
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
							<input type="checkbox" id="remeberPassword">
							<label for="remeberPassword">记住密码</label>
						</div>
						<div class="form-group">
							<button class="btn btn-danger btn-block" id="loginBtn">
								登录
							</button>
						</div>
						<div class="divide-20"></div>
						<div class="center">
							<strong>武汉大学空间信息与数字技术</strong>
						</div>
						<div class="divide-20"></div>
					</div>



				</div>
			</div>
		</div>
	</section>
</section>




<script>

	$('#loginBtn').click(function (){
		//window.location.href="/privilege!loginIn?userId="+$("#user").val()+"&password="+$("#password").val()+"";
		if($("#user").val()=="admin" && $("#password").val()=="123"){
			window.location.href="main.jsp";
		}
	});

</script>
</body>
</html>
