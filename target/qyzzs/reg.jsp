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
<title>注册</title>
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
							<center>用户注册</center>
						</h1>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4 col-md-offset-4">
					<div class="account-box">
						<s:form id="regf" action="regAction" method="post" theme="simple">
							<div style="display: none">
								<input class="form-control" value="0" type="text"
									name="user.identity">
							</div>
							<div class="form-group">
								<label for="inputId">账号</label>
								<s:textfield id="uid" name="user.uid" class="form-control" />
							</div>
							<div class="form-group">
								<label for="inputPassword">密码</label>
								<s:password id="pwd" name="user.pwd" class="form-control" />
							</div>
							<div class="form-group">
								<label for="inputPassword">重复密码</label>
								<s:password id="pwd2" class="form-control" />
							</div>
							<div class="form-group">
								<label for="inputName">昵称</label>
								<s:textfield id="name" name="user.name" class="form-control" />
							</div>
							<div class="form-group">
								<label for="inputUsernameEmail">邮箱</label>
								<s:textfield id="email" name="user.email" class="form-control" />
							</div>
							<div class="form-group">
								<label for="inputUserPhone">联系电话</label>
								<s:textfield id="phone" name="user.phone" class="form-control" />
							</div>
							<div class="form-group">
								<label for="inputUserPhone">收货地址</label>
								<s:textfield id="address" name="user.address"
									class="form-control" />
							</div>
							<!-- <div class="checkbox pull-left">
								<label> <input type="checkbox">记住用户名
								</label>
							</div> -->
							<input type="button" class="btn btn btn-primary pull-right"
								onclick="go()" value="注册">
							<!-- 	<s:submit value="注册" class="btn btn btn-primary pull-right"/> -->
						</s:form>
						<div class="row-block">
							<div class="row"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 		<p>&nbsp;</p>
		<div style="text-align: center; margin: 0 auto;">
			<h6 style="color: #fff;">
				Copyright(C)2014 fjcloudsoft.com All Rights Reserved<br />
				福建云软网络科技有限公司 版权所有 闽IP备07021605号
			</h6>
		</div> -->
	</div>
	<!--  END OF PAPER WRAP -->

	<!-- MAIN EFFECT -->
	<script type="text/javascript">
		if ('${(user.getId())==null}' == 'false') {
			alert("该账号已经被注册！");
		}
		function isEmail(strEmail) {
			if (strEmail
					.search(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/) != -1)
				return true;
			else
				alert("请输入正确的邮箱!");
			return false;
		}
		function go() {
			form = document.getElementById('regf');
			uid = document.getElementById('uid').value;
			pwd = document.getElementById('pwd').value;
			pwd2 = document.getElementById('pwd2').value;
			name = document.getElementById('name').value;
			email = document.getElementById('email').value;
			phone = document.getElementById('phone').value;
			address = document.getElementById('address').value;
			if (check(uid)) {
				alert('账号不要含有特殊字符！');
			} else if (uid.length < 6) {
				alert('账号至少6个字符！');
			} else if (pwd.length < 6) {
				alert('密码至少6个字符！');
			} else if (pwd != pwd2) {
				alert('密码输入不一致');
			} else if (name.length < 2) {
				alert('昵称至少2个字符！');
			} else if (!isEmail(email)) {
			} else if (!isPhonenumber(phone)) {
				alert('非法手机号');
			} else if (address.length < 1) {
				alert('收货地址不能为空');
			} else
				form.submit()
		}
		function check(str) {
			var filterRule = /[^0-9_]/g;
			var judge = filterRule.test(str);
			return judge;
		}
		function isPhonenumber(str) {
			var filterRule = /^1[3|4|5|8][0-9]\d{4,8}$/;
			var judge = filterRule.test(str);
			return judge;
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
