<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录</title>
<!-- Le styles -->
<script type="text/javascript" src="assets/js/jquery.min.js"></script>
<!--  <link rel="stylesheet" href="assets/css/style.css"> -->
<link rel="stylesheet" href="assets/css/loader-style.css">
<link rel="stylesheet" href="assets/css/bootstrap.css">
<link rel="stylesheet" href="assets/css/signin.css">
<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
<!-- Fav and touch icons -->
<link rel="shortcut icon" href="assets/ico/minus.png">
</head>
<body>
	<!-- Preloader -->
	<div id="preloader">
		<div id="status">&nbsp;</div>
	</div>
	<div class="container">
		<div class="" id="login-wrapper">
			<div class="row">
				<div class="col-md-4 col-md-offset-4">
					<div id="logo-login">
						<h1>
							<center>用户登录</center>
						</h1>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4 col-md-offset-4">
					<div class="account-box">
						<s:form action="loginAction" method="post" theme="simple">
							<div class="form-group">
								<a href="reg.jsp" class="pull-right label-forgot">注册账号</a> <label
									for="inputUsernameEmail">账号</label>
								<s:textfield name="user.uid" class="form-control" />
							</div>
							<div class="form-group">
								<!--a href="#" class="pull-right label-forgot">Forgot password?</a-->
								<label for="inputPassword">密码</label>
								<s:password name="user.pwd" class="form-control" />
							</div>
							<!-- <div class="checkbox pull-left">
								<label> <input type="checkbox">记住用户名
								</label>
							</div> -->
								<s:submit value="登录" class="btn btn btn-primary pull-right"/>
						</s:form>
						<div class="row-block">
							<div class="row"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<p>&nbsp;</p>
		<div style="text-align: center; margin: 0 auto;">
			<h6 style="color: #fff;">
				&copy;2014-2017 中北大学 版权所有<br />
			</h6>
		</div>
	</div>
	<div id="test1" class="gmap3"></div>
	<!--  END OF PAPER WRAP -->
	<!-- MAIN EFFECT -->
	<script type="text/javascript">
		if('${EOFR.equals("EOFR")}'=='true'){
			alert('用户名或密码错误！');
		}
	</script>
	<script type="text/javascript" src="assets/js/preloader.js"></script>
	<script type="text/javascript" src="assets/js/bootstrap.js"></script>
	<script type="text/javascript" src="assets/js/app.js"></script>
	<script type="text/javascript" src="assets/js/load.js"></script>
	<script type="text/javascript" src="assets/js/main.js"></script>
	<script src="http://maps.googleapis.com/maps/api/js?sensor=false"
		type="text/javascript"></script>
	<script type="text/javascript" src="assets/js/map/gmap3.js"></script>
</body>
</html>
