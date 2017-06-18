<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>中北汽车用品</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Nuevo Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="applijegleryion/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<script src="js/jquery-1.11.1.min.js"></script>
<!-- start menu -->
<link href="css/megamenu.css" rel="stylesheet" type="text/css"
	media="all" />
<script type="text/javascript" src="js/megamenu.js"></script>
<script>
	$(document).ready(function() {
		$(".megamenu").megamenu();
	});
</script>
<script src="js/menu_jquery.js"></script>
<script src="js/simpleCart.min.js">
	
</script>
<!--web-fonts-->
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,300italic,600,700'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Roboto+Slab:300,400,700'
	rel='stylesheet' type='text/css'>
<!--//web-fonts-->
<script src="js/scripts.js" type="text/javascript"></script>
<script src="js/modernizr.custom.js"></script>
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<!--/script-->
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 900);
		});
	});
</script>
</head>
<body>
	<!--start-home-->
	<div class="top_bg" id="home">
		<div class="container">
			<div class="header_top">
				<div class="top_right">
					<ul>
						<s:if test="#session.exituser==null">
							<li><a href="login.jsp">登录</a></li>
							<li><a href="reg.jsp">注册</a></li>
						</s:if>
						<s:else>
							<li><a href="users.jsp"><span
									class="glyphicon glyphicon-user"></span>${sessionScope.exituser.getName()}</a></li>
							<li><a href="exitAction">注销</a></li>
						</s:else>
					</ul>
				</div>
				<div class="top_left">
					<h6>
						<span></span> 联系 电话 : 0351 3190216
					</h6>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--header-->
	<div class="header_bg">
		<div class="container">
			<div class="header">
				<div class="head-t">
					<div class="logo">
						<a href="index.jsp"><h1>
								中北<span>汽车用品</span>
							</h1> </a>
					</div>
					<div class="header_right">
						<div class="cart box_1">
							<a href="checkout.jsp">
								<div class="total"></div> <i
								class="glyphicon glyphicon-shopping-cart"></i>
								<div class="clearfix">购物车</div>
							</a>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
				<!--start-header-menu-->
				<ul class="megamenu skyblue">
					<li class="active grid"><a class="color1" href="index.jsp">主页</a></li>
					<li class="grid"><a class="color2"
						href="findGoodsByKWord?key=维修保养">维修保养</a>
					<li class="grid"><a class="color2"
						href="findGoodsByKWord?key=车载电器">车载电器</a>
					<li class="grid"><a class="color2"
						href="findGoodsByKWord?key=汽车装饰">汽车装饰</a>
					<li class="grid"><a class="color2"
						href="findGoodsByKWord?key=美容清洗">美容清洗</a>
					<li class="grid"><a class="color2"
						href="findGoodsByKWord?key=安全保障">安全保障</a>
				</ul>
			</div>
		</div>
	</div>
	<!--start-content-->
	<!--start-banner-->
	<div class="banner">
		<div class="container">
			<div class="banner-grids">
				<div class="col-md-6 jocket">
					<div class="jock-img">
						<img src="images/goods/车载电器/车载充电器2.jpg" class="img-responsive"
							alt="">
					</div>
					<div class="jock-text">
						<h3 class="b-tittle">车载充电器</h3>
						<a class="collection" href="findGoodsByGid?gid=10">立即购买 <i
							class="glyphicon glyphicon-arrow-right"></i></a>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="col-md-6 shoe">
					<div class="shoe-img">
						<img src="images/goods/美容清洗/便携式汽车水枪清洗机2.jpg"
							class="img-responsive" width="100%">
					</div>
					<div class="shoe-text">
						<h3 class="b-tittle">便携式汽车水枪清洗机</h3>
						<a class="collection" href="findGoodsByGid?gid=37">立即购买<i
							class="glyphicon glyphicon-arrow-right"></i></a>
					</div>
					<div class="clearfix"></div>
					<div class="bottom-bags">
						<div class="col-md-6 pack">
							<div class="bag-text">
								<h3 class="b-tittle">高清倒车影像</h3>
								<a class="collection" href="findGoodsByGid?gid=15">立即购买<i
									class="glyphicon glyphicon-arrow-right"></i></a>
							</div>
							<div class="bag-img">
								<img src="images/goods/车载电器/高清倒车影像.jpg" width="100%">
							</div>
							<div class="clearfix"></div>

						</div>
						<div class="col-md-6 glass">
							<div class="glass-text">
								<h3 class="b-tittle">汽车头枕</h3>
								<a class="collection" href="findGoodsByGid?gid=25">立即购买 <i
									class="glyphicon glyphicon-arrow-right"></i></a>
							</div>
							<div class="glass-img">
								<img src="images/goods/汽车装饰/汽车头枕.jpg" class="img-responsive" alt="">
							</div>
							<div class="clearfix"></div>

						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--start-bottom-->
	<!--start-image-cursuals-->
	<div class="scroll-slider">
		<div class="container">
			<div class="nbs-flexisel-container">
				<div class="nbs-flexisel-inner">
					<ul class="flexiselDemo3 nbs-flexisel-ul"
						style="left: -253.6px; display: block;">
						<li onClick="location.href='#';" class="nbs-flexisel-item"
							style="width: 253.6px;"><img src="images/c3.png" alt="" /></li>
						<li onClick="location.href='#';" class="nbs-flexisel-item"
							style="width: 253.6px;"><img src="images/c4.png" alt="" /></li>
						<li onClick="location.href='#';" class="nbs-flexisel-item"
							style="width: 253.6px;"><img src="images/c1.png" alt="" /></li>
						<li onClick="location.href='#';" class="nbs-flexisel-item"
							style="width: 253.6px;"><img src="images/c2.png" alt="" /></li>
						<li onClick="location.href='#';" class="nbs-flexisel-item"
							style="width: 253.6px;"><img src="images/c3.png" alt="" /></li>
						<li onClick="location.href='#';" class="nbs-flexisel-item"
							style="width: 253.6px;"><img src="images/c4.png" alt="" /></li>
						<li onClick="location.href='#';" class="nbs-flexisel-item"
							style="width: 253.6px;"><img src="images/c1.png" alt="" /></li>
						<li onClick="location.href='#';" class="nbs-flexisel-item"
							style="width: 253.6px;"><img src="images/c2.png" alt="" /></li>
					</ul>
					<div class="nbs-flexisel-nav-left" style="top: 21.5px;"></div>
					<div class="nbs-flexisel-nav-right" style="top: 21.5px;"></div>
				</div>
			</div>
			<div class="clearfix"></div>
			<!--start-image-->
			<script type="text/javascript" src="js/jquery.flexisel.js"></script>
			<!--//end-->
			<script type="text/javascript">
				$(window).load(function() {
					$(".flexiselDemo3").flexisel({
						visibleItems : 5,
						animationSpeed : 1000,
						autoPlay : true,
						autoPlaySpeed : 3000,
						pauseOnHover : true,
						enableResponsiveBreakpoints : true,
						responsiveBreakpoints : {
							portrait : {
								changePoint : 480,
								visibleItems : 2
							},
							landscape : {
								changePoint : 640,
								visibleItems : 3
							},
							tablet : {
								changePoint : 768,
								visibleItems : 3
							}
						}
					});
				});
			</script>
			<!---->
		</div>
	</div>
	<!--//end-bottom-->
	<!--start-footer-->
	<!--/start-copyright-->
	<div class="copy">
		<div class="container">
			<p>&copy;2014-2017 中北大学 版权所有</p>
		</div>
	</div>
	<!--//end-copyright-->
	<!--end-footer-->
	<!--//end-content-->
	<!--start-smooth-scrolling-->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
			var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
			};
			 */

			$().UItoTop({
				easingType : 'easeOutQuart'
			});

		});
	</script>
</body>
</html>