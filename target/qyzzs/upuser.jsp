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
<meta name="viewport"
	content="width=device-width, initial-scale=1,maximum-scale=1, user-scalable=no">
<title>用户信息</title>
<link rel="stylesheet" href="/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/style.css">
<script type="text/javascript" src="assets/js/jquery.js"></script>
<link rel="stylesheet" href="assets/css/style.css">
<link rel="stylesheet" href="assets/css/loader-style.css">
<link rel="stylesheet" href="assets/css/bootstrap.css">
<link rel="stylesheet" href="assets/js/button/ladda/ladda.min.css">
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
	<!-- TOP NAVBAR -->
	<nav role="navigation" class="navbar navbar-static-top">
	<div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button data-target="#bs-example-navbar-collapse-1"
				data-toggle="collapse" class="navbar-toggle" type="button">
				<span class="entypo-menu"></span>
			</button>
			<button class="navbar-toggle toggle-menu-mobile toggle-left"
				type="button">
				<span class="entypo-list-add"></span>
			</button>
			<div id="logo-mobile" class="visible-xs">
				<h1>
					汽车用品销售<span>v1.0</span>
				</h1>
			</div>
		</div>
		<!-- Collect the nav links, forms, and other content for toggling -->
		<div id="bs-example-navbar-collapse-1"
			class="collapse navbar-collapse">
			<ul style="margin-right: 0;" class="nav navbar-nav navbar-right">
				<li><a data-toggle="dropdown" class="dropdown-toggle" href="#">
						<img alt="" class="admin-pic img-circle"
						src="http://api.randomuser.me/portraits/thumb/men/10.jpg">您好,
						${sessionScope.exituser.getName()} <b class="caret"></b>
				</a>
					<ul style="margin-top: 14px;" role="menu"
						class="dropdown-setting dropdown-menu">
						<li><a href="index.jsp"> <span class="entypo-home"></span>&#160;&#160;返回主站
						</a></li>
						<li class="divider"></li>
						<li><a href="<s:url action="exitAction"/>"> <span
								class="entypo-logout"></span>&#160;&#160;退出登录
						</a></li>
					</ul></li>
				<li><a data-toggle="dropdown" class="dropdown-toggle" href="#">
						<span class="icon-gear"></span>&#160;&#160;页面颜色
				</a>
					<ul role="menu" class="dropdown-setting dropdown-menu">
						<li class="theme-bg">
							<div id="button-bg"></div>
							<div id="button-bg2"></div>
							<div id="button-bg3"></div>
							<div id="button-bg5"></div>
							<div id="button-bg6"></div>
							<div id="button-bg7"></div>
							<div id="button-bg8"></div>
							<div id="button-bg9"></div>
							<div id="button-bg10"></div>
							<div id="button-bg11"></div>
							<div id="button-bg12"></div>
							<div id="button-bg13"></div>
						</li>
					</ul></li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid --> </nav>

	<!-- /END OF TOP NAVBAR -->

	<!-- SIDE MENU -->
	<div id="skin-select">
		<div id="logo">
			<h1>
				<s:if test="#session.exituser.getIdentity()==1">
				商家中心<span>v1.0</span>
				</s:if>
				<s:else>
				个人中心<span>v1.0</span>
				</s:else>

			</h1>
		</div>
		<a id="toggle"> <span class="entypo-menu"></span>
		</a>
		<div class="dark"></div>
		<div class="skin-part">
			<div id="tree-wrap">
				<ul class="topnav menu-left-nest">
					<li><a href="#" style="border-left: 0px solid !important;"
						class="title-menu-left"> <span>信息管理</span> <i
							data-toggle="tooltip" class="entypo-cog pull-right config-wrap"></i>
					</a></li>
					<li><a class="tooltip-tip ajax-load" href="uinfo.jsp"><i
							class="entypo-vcard"></i> <span>查看个人信息</span> </a></li>
					<li><a class="tooltip-tip ajax-load" href="upuser.jsp"> <i
							class="entypo-user-add"></i><span>修改个人信息</span>
					</a></li>
				</ul>
				<ul class="topnav menu-left-nest">
					<s:if test="#session.exituser.getIdentity()==1">
						<li><a class="tooltip-tip ajax-load" href="findAllOrder">
								<i class="entypo-doc-text"></i> <span>商家订单</span>
						</a></li>
					</s:if>
					<s:else>
						<li><a class="tooltip-tip ajax-load"
							href="findOrderByUidAction?uid=<s:property value='#session.exituser.uid'/>">
								<i class="entypo-doc-text"></i> <span>我的订单</span>
						</a></li>
					</s:else>
				</ul>
				<s:if test="#session.exituser.getIdentity()==1">
					<ul class="topnav menu-left-nest">
						<li><a style="border-left: 0px solid !important;"
							class="title-menu-left"> <span>商品管理</span> <i
								data-toggle="tooltip" class="entypo-cog pull-right config-wrap"></i>
						</a></li>
						<li><a class="tooltip-tip ajax-load"
							href="findAllGoodsAction"> <i class="entypo-doc-text"></i> <span>查看商品</span>

						</a></li>
						<li><a class="tooltip-tip ajax-load" href="creategoods.jsp">
								<i class="entypo-doc-text-inv"></i> <span>增加商品</span>
						</a></li>
					</ul>
				</s:if>
			</div>
		</div>
	</div>
	</div>
	<!-- END OF SIDE MENU -->
	<!--  PAPER WRAP -->
	<div class="wrap-fluid">
		<div class="container-fluid paper-wrap bevel tlbr">
			<!-- CONTENT -->
			<!--TITLE -->
			<div class="row">
				<div id="paper-top">
					<div class="col-sm-3">
						<h2 class="tittle-content-header">
							<i class="icon-media-record"></i> <span>欢迎使用 </span>
						</h2>
					</div>
					<div class="col-sm-7">
						<div class="devider-vertical visible-lg"></div>
						<div class="tittle-middle-header">
							<div class="alert">
								<button type="button" class="close" data-dismiss="alert">×</button>
								<span class="tittle-alert entypo-info-circled"></span> 您好,&nbsp;
								<strong>${sessionScope.exituser.getName()}</strong>&nbsp;&nbsp;您正在使用的是测试版，如遇bug请联系我们
							</div>
						</div>
					</div>
					<div class="col-sm-2">
						<div class="devider-vertical visible-lg"></div>
						<div class="btn-group btn-wigdet pull-right visible-lg"></div>
					</div>
				</div>
				<!-- /END OF CONTENT -->
				<!-- FOOTER -->
				<ul id="breadcrumb">
					<ul id="breadcrumb">
						<li><span class="entypo-home"></span></li>
						<li><i class="fa fa-lg fa-angle-right"></i></li>
						<li><a href="#" title="Sample page 1">信息管理 </a></li>
						<li><i class="fa fa-lg fa-angle-right"></i></li>
						<li><a href="#" title="Sample page 1">修改个人信息 </a></li>
					</ul>
				</ul>
				<div class="content-wrap">
					<!-- PROFILE -->
					<div style="margin: -20px 15px;" class="nest" id="Blank_PageClose">
						<div class="title-alt">
							<h6>修改个人信息</h6>
						</div>
						<div class="body-nest" id="Blank_Page_Content">
							<div class="row">
								<!-- edit form column -->
								<div class="col-md-9 personal-info">
									<h3>您的信息如下</h3>
									<form action="updateAction" class="form-horizontal">
										<div style="display: none">
											<input class="form-control"
												value="${sessionScope.exituser.getUid()}" type="text"
												name="user.uid"> <input class="form-control"
												value="${sessionScope.exituser.getIdentity()}" type="text"
												name="user.identity">
										</div>
										<div class="form-group">
											<label class="col-lg-3 control-label">昵称:</label>
											<div class="col-lg-8">
												<input id="name" name="user.name" class="form-control"
													value="${sessionScope.exituser.getName()}" type="text">
											</div>
										</div>
										<div class="form-group">
											<label class="col-lg-3 control-label">邮箱:</label>
											<div class="col-lg-8">
												<input id="email" name="user.email" class="form-control"
													value="${sessionScope.exituser.getEmail()}" type="text">
											</div>
										</div>
										<div class="form-group">
											<label class="col-lg-3 control-label">收货地址:</label>
											<div class="col-lg-8">
												<input id="address" name="user.address" class="form-control"
													value="${sessionScope.exituser.getAddress()}" type="text">
											</div>
										</div>
										<div class="form-group">
											<label class="col-lg-3 control-label">联系电话:</label>
											<div class="col-lg-8">
												<input id="phone" name="user.phone" class="form-control"
													value="${sessionScope.exituser.getPhone()}" type="text">
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-3 control-label">密码:</label>
											<div class="col-md-8">
												<input id="pwd" name="user.pwd" class="form-control"
													value="${sessionScope.exituser.getPwd()}" type="password">
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-3 control-label">重新输入密码:</label>
											<div class="col-md-8">
												<input id="pwd2" class="form-control"
													value="${sessionScope.exituser.getPwd()}" type="password">
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-3 control-label"></label>
											<div class="col-md-8">
												<input class="btn btn-primary" value="保存" type="submit">
												<span></span> <input class="btn btn-default" value="取消"
													type="reset">
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
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
			var filterRule = /[^0-9a-zA-Z_]/g;
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
</body>
</html>
