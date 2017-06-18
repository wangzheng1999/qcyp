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
	<script type="text/javascript">
		function t1(){	
			var gid = document.getElementById('gid').value;
			var xmlHttp = new ActiveXObject("Msxml2.XMLHTTP");
			var url = "gregister?gid=" + gid;
			xmlHttp.open("post", url, true);
			xmlHttp.onreadystatechange = function() {
				if (xmlHttp.readyState == 4) {
					resultDiv.innerHTML = xmlHttp.responseText;
			} else {
				resultDiv.innerHTML += "正在注册，请稍候。。。";
				}
			}
			xmlHttp.send(); 
			
		}
		 function t2() {
			var name = document.getElementById('name').value;
			var xmlHttp = new ActiveXObject("Msxml2.XMLHTTP");
			var url = "gregister1?name=" + name;
			xmlHttp.open("post", url, true);
			xmlHttp.onreadystatechange = function() {
				if (xmlHttp.readyState == 4) {
					resultDiv1.innerHTML = xmlHttp.responseText;
				} else {
					resultDiv1.innerHTML += "正在注册，请稍候。。。";
				}
			}
			xmlHttp.send();
		}
		function t3() {

			var info = document.getElementById('info').value;
			var xmlHttp = new ActiveXObject("Msxml2.XMLHTTP");
			var url = "gregister2?info=" + info;
			xmlHttp.open("post", url, true);
			xmlHttp.onreadystatechange = function() {
				if (xmlHttp.readyState == 4) {
					resultDiv2.innerHTML = xmlHttp.responseText;
				} else {
					resultDiv2.innerHTML += "正在注册，请稍候。。。";
				}
			}
			xmlHttp.send();
		}
		function t4() {

			var date = document.getElementById('date').value;
			var xmlHttp = new ActiveXObject("Msxml2.XMLHTTP");
			var url = "gregister5?date=" + date;
			xmlHttp.open("post", url, true);
			xmlHttp.onreadystatechange = function() {
				if (xmlHttp.readyState == 4) {
					resultDiv3.innerHTML = xmlHttp.responseText;
				} else {
					resultDiv3.innerHTML += "正在注册，请稍候。。。";
				}
			}
			xmlHttp.send();
		}

		function t5() {

			var address = document.getElementById('address').value;
			var xmlHttp = new ActiveXObject("Msxml2.XMLHTTP");
			var url = "gregister3?address=" + address;
			xmlHttp.open("post", url, true);
			xmlHttp.onreadystatechange = function() {
				if (xmlHttp.readyState == 4) {
					resultDiv4.innerHTML = xmlHttp.responseText;
				} else {
					resultDiv4.innerHTML += "正在注册，请稍候。。。";
				}
			}
			xmlHttp.send();
		}

		function t6() {

			var sum = document.getElementById('sum').value;
			var xmlHttp = new ActiveXObject("Msxml2.XMLHTTP");
			var url = "gregister4?sum=" + sum;
			xmlHttp.open("post", url, true);
			xmlHttp.onreadystatechange = function() {
				if (xmlHttp.readyState == 4) {
					resultDiv5.innerHTML = xmlHttp.responseText;
				} else {
					resultDiv5.innerHTML += "正在注册，请稍候。。。";
				}
			}
			xmlHttp.send();
		}
		function t7() {

			var price = document.getElementById('price').value;
			var xmlHttp = new ActiveXObject("Msxml2.XMLHTTP");
			var url = "gregister6?price=" + price;
			xmlHttp.open("post", url, true);
			xmlHttp.onreadystatechange = function() {
				if (xmlHttp.readyState == 4) {
					resultDiv6.innerHTML = xmlHttp.responseText;
				} else {
					resultDiv6.innerHTML += "正在注册，请稍候。。。";
				}
			}
			xmlHttp.send();
		} 
	</script>
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
					<li><a style="border-left: 0px solid !important;"
							class="title-menu-left"><span>订单管理</span> <i
								data-toggle="tooltip" class="entypo-cog pull-right config-wrap"></i>
						</a></li>
						<s:if test="#session.exituser.getIdentity()==1">
							<li><a class="tooltip-tip ajax-load"
								href="findAllOrder">
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
						<li><a href="#" title="Sample page 1">商品管理 </a></li>
						<li><i class="fa fa-lg fa-angle-right"></i></li>
						<li><a href="#" title="Sample page 1">修改商品 </a></li>
					</ul>
				</ul>
				<div class="content-wrap">
					<!-- PROFILE -->
					<div style="margin: -20px 15px;" class="nest" id="Blank_PageClose">
						<div class="title-alt">
							<h6>修改商品</h6>
						</div>
						<div class="body-nest" id="Blank_Page_Content">
							<div class="row">
								<!-- edit form column -->
								<div class="col-md-9 ">
									<!--personal-info  -->
									<h3>商品信息如下</h3>
									<s:form name="goods" action="upGoodsAction"
										class="form-horizontal" theme="simple">
										<div class="form-group">
											<label class="col-lg-3 control-label">商品编号:</label>
											<div class="col-lg-8">
												<input id="gid" name="goods.gid" class="form-control"
													onblur="t1()" value="${param['gid']}" type="text">
											</div>
											<div id="resultDiv"></div>
										</div>
										<div class="form-group">
											<label class="col-lg-3 control-label">商品名称:</label>
											<div class="col-lg-8">
												<input id="name" name="goods.name" class="form-control"
													value="${param['name']}" type="text" onblur="t2()">
											</div>
											<div id="resultDiv1"></div>
										</div>
										<div class="form-group">
											<label class="col-lg-3 control-label">商品信息:</label>
											<div class="col-lg-8">
												<input id="info" name="goods.info" class="form-control"
													value="${param['info']}" type="text" onblur="t3()">
											</div>
											<div id="resultDiv2"></div>
										</div>
										<div class="form-group">
											<label class="col-lg-3 control-label">生产日期:</label>
											<div class="col-lg-8">
												<input id="date" name="goods.date" class="form-control"
													value="${param['date']}" type="text" onblur="t4()">
											</div>
											<div id="resultDiv3"></div>
										</div>
										<div class="form-group">
											<label class="col-lg-3 control-label">产地:</label>
											<div class="col-lg-8">
												<input id="address" name="goods.address"
													class="form-control" value="${param['address']}"
													type="text" onblur="t5()">
											</div>
											<div id="resultDiv4"></div>
										</div>
										<div class="form-group">
											<label class="col-lg-3 control-label">商品总数量:</label>
											<div class="col-lg-8">
												<input id="sum" name="goods.sum" class="form-control"
													value="${param['sum']}" type="text" onblur="t6()">
											</div>
											<div id="resultDiv5"></div>
										</div>
										<div class="form-group">
											<label class="col-lg-3 control-label">商品价格:</label>
											<div class="col-lg-8">
												<input id="price" name="goods.price" class="form-control"
													value="${param['price']}" type="text" onblur="t7()">
											</div>
											<div id="resultDiv6"></div>
										</div>
										<div class="form-group">
											<label class="col-lg-3 control-label">商品类别:</label>
											<div class="col-lg-8">
												<select name="goods.category" class="form-control">
													<option value="安全保障">安全保障</option>
													<option value="车内电子">车内电子</option>
													<option value="车内饰品">车内饰品</option>
													<option value="美容清洗">美容清洗</option>
													<option value="维修保养">维修保养</option>
												</select>
											</div>
										</div>
										<div class="form-group">
											<label class="col-lg-3 control-label">商品状态:</label>
											<div class="col-lg-8">
												<select name="goods.flag" class="form-control">
													<option value="0">缺货</option>
													<option value="1">有货</option>
												</select>
											</div>
										</div>
										<!-- 	<div class="form-group">
											<label class="col-lg-3 control-label">主展示图:</label>
											<div class="col-lg-8">
												<input type="file" name="file1" class="form-control">
											</div>
										</div>
											<div class="form-group">
											<label class="col-lg-3 control-label">辅展示图1:</label>
											<div class="col-lg-8">
												<input type="file" name="file1" class="form-control">
											</div>
										</div>
											<div class="form-group">
											<label class="col-lg-3 control-label">辅展示图2:</label>
											<div class="col-lg-8">
												<input type="file" name="file1" class="form-control">
											</div>
										</div> -->
										<div class="form-group">
											<div class="col-md-8">
												<input class="btn btn-primary" onclick="ts()" value="保存"
													type="submit"> <span></span> <input
													class="btn btn-default" value="取消" type="reset">
											</div>
										</div>
									</s:form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- MAIN EFFECT -->

	<script type="text/javascript" src="assets/js/preloader.js"></script>
	<script type="text/javascript" src="assets/js/bootstrap.js"></script>
	<script type="text/javascript" src="assets/js/app.js"></script>
	<script type="text/javascript" src="assets/js/load.js"></script>
	<script type="text/javascript" src="assets/js/main.js"></script>
</body>
</html>
