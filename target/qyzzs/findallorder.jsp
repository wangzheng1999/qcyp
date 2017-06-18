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
<title>中北汽车用品</title>
<script type="text/javascript" src="assets/js/jquery.js"></script>
<link rel="stylesheet" href="assets/css/style.css">
<link rel="stylesheet" href="assets/css/loader-style.css">
<link rel="stylesheet" href="assets/css/bootstrap.css">
<link href="assets/js/footable/css/footable.core.css?v=2-0-1"
	rel="stylesheet" type="text/css">
<link href="assets/js/footable/css/footable.standalone.css"
	rel="stylesheet" type="text/css">
<link href="assets/js/footable/css/footable-demos.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet"
	href="assets/js/dataTable/lib/jquery.dataTables/css/DT_bootstrap.css">
<link rel="stylesheet"
	href="assets/js/dataTable/css/datatables.responsive.css">
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
				<!--/ TITLE -->

				<!-- BREADCRUMB -->
				<ul id="breadcrumb">
					<li><span class="entypo-home"></span></li>
					<li><i class="fa fa-lg fa-angle-right"></i></li>
					<li><a href="#" title="Sample page 1">订单管理</a></li>
					<li><i class="fa fa-lg fa-angle-right"></i></li>
					<li><a href="#" title="Sample page 1">查看订单</a></li>
					<li class="pull-right"></li>
				</ul>
				<!-- END OF BREADCRUMB -->
				<div class="content-wrap">
					<div class="row">
						<div class="col-sm-12">
							<div class="nest" id="FootableClose">
								<div class="title-alt">
									<h6>订单列表</h6>
								</div>
								<div class="body-nest" id="Footable">
									<!-- 	<div class="row" style="margin-bottom: 10px;">
										<div class="col-sm-4">
											<form action="findGoodsLikeKey" method="post">
												<div class="input-group">
													<input name="key" type="text" class="form-control">
													<div class="input-group-btn">
														<input type="submit" value="查询" class="btn btn-info">
													</div>
												</div>
											</form>
										</div> -->
								</div>
								<table class="table-striped footable-res footable metro-blue"
									data-page-size="10">
									<thead>
										<tr>
											<th>订单编号</th>
											<th>商品名称</th>
											<th>商品单价</th>
											<th>商品数量</th>
											<th>收货地址</th>
											<th>订单创建日期</th>
											<th>订单状态</th>
											<th>操作</th>
										</tr>
									</thead>
									<tbody>
										<s:iterator value="dinDans">
											<tr>
												<td><s:property value="did" /></td>
												<td><s:property value="name" /></td>
												<td><s:property value="money" /></td>
												<td><s:property value="num" /></td>
												<td><s:property value="address" /></td>
												<td><s:property value="date" /></td>
												<td><s:property value="status" /></td>
												<td><s:if test="#session.exituser.getIdentity()==1">
														<s:if test="status=='待发货'">
															<a href="upOrderStatus?status='已发货'"> <span
																class="status-metro status-active">确认发货</span>
															</a>
														</s:if>
														<s:else>
															<span class="status-metro status-active disabled">确认发货</span>
														</s:else>
													</s:if> <s:else>
														<s:if test="status=='已发货'">
															<a href="upOrderStatus?status='确认收货'"> <span
																class="status-metro status-active">确认收货</span>
															</a>
														</s:if>
														<s:else>
															<span class="status-metro status-active disabled">确认发货</span>
														</s:else>
													</s:else></td>
											</tr>
										</s:iterator>
									</tbody>
									<tfoot>
										<tr>
											<td colspan="5">
												<div class="pagination pagination-centered"></div>
											</td>
										</tr>
									</tfoot>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- /END OF CONTENT -->
		<!-- FOOTER -->
		<!-- / END OF FOOTER -->
		<!--  END OF PAPER WRAP -->
		<!-- RIGHT SLIDER CONTENT -->
		<!-- END OF RIGHT SLIDER CONTENT-->
		<!-- MAIN EFFECT -->
		<script type="text/javascript" src="assets/js/preloader.js"></script>
		<script type="text/javascript" src="assets/js/bootstrap.js"></script>
		<script type="text/javascript" src="assets/js/app.js"></script>
		<script type="text/javascript" src="assets/js/load.js"></script>
		<script type="text/javascript" src="assets/js/main.js"></script>
		<!-- /MAIN EFFECT -->
		<!-- GAGE -->
		<script type="text/javascript" src="assets/js/toggle_close.js"></script>
		<script src="assets/js/footable/js/footable.js?v=2-0-1"
			type="text/javascript"></script>
		<script src="assets/js/footable/js/footable.sort.js?v=2-0-1"
			type="text/javascript"></script>
		<script src="assets/js/footable/js/footable.filter.js?v=2-0-1"
			type="text/javascript"></script>
		<script src="assets/js/footable/js/footable.paginate.js?v=2-0-1"
			type="text/javascript"></script>
		<script src="assets/js/footable/js/footable.paginate.js?v=2-0-1"
			type="text/javascript"></script>





		<script type="text/javascript">
				$(function() {
					$('.footable-res').footable();
				});
			</script>
		<script type="text/javascript">
				$(function() {
					$('#footable-res2')
							.footable()
							.bind(
									'footable_filtering',
									function(e) {
										var selected = $('.filter-status')
												.find(':selected').text();
										if (selected && selected.length > 0) {
											e.filter += (e.filter && e.filter.length > 0) ? ' '
													+ selected
													: selected;
											e.clear = !e.filter;
										}
									});

					$('.clear-filter').click(function(e) {
						e.preventDefault();
						$('.filter-status').val('');
						$('table.demo').trigger('footable_clear_filter');
					});

					$('.filter-status').change(function(e) {
						e.preventDefault();
						$('table.demo').trigger('footable_filter', {
							filter : $('#filter').val()
						});
					});

					$('.filter-api').click(
							function(e) {
								e.preventDefault();

								//get the footable filter object
								var footableFilter = $('table').data(
										'footable-filter');

								alert('about to filter table by "tech"');
								//filter by 'tech'
								footableFilter.filter('tech');

								//clear the filter
								if (confirm('clear filter now?')) {
									footableFilter.clearFilter();
								}
							});
				});
			</script>
</body>

</html>
