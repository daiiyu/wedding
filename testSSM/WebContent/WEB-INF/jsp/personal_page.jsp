<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>个人中心</title>
<link href="<%=request.getContextPath()%>/css/bootstrap.css"
	rel="stylesheet" type="text/css" media="all">
<link href="<%=request.getContextPath()%>/css/style.css"
	rel="stylesheet" type="text/css" media="all" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="http://g.alicdn.com/sj/dpl/1.5.1/css/sui.min.css"
	rel="stylesheet">
<script type="text/javascript"
	src="http://g.alicdn.com/sj/lib/jquery/dist/jquery.min.js"></script>
<script type="text/javascript"
	src="http://g.alicdn.com/sj/dpl/1.5.1/js/sui.min.js"></script>
<!---- start-smoth-scrolling---->
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/move-top.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/easing.js"></script>

<!-- requried-jsfiles-for owl -->
<link href="<%=request.getContextPath()%>/css/owl.carousel.css"
	rel="stylesheet">
<script src="<%=request.getContextPath()%>/js/owl.carousel.js"></script>

<meta name="keywords"
	content="Love hearts Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript">
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 


</script>
<!-- <link href='http://fonts.useso.com/css?family=Poiret+One'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.useso.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
	rel='stylesheet' type='text/css'> -->
<script src="js/jquery-1.11.1.min.js"></script>
<!---- start-smoth-scrolling---->
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/move-top.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/easing.js"></script>

<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 1200);
		});
	});
</script>
<!---End-smoth-scrolling---->
<link rel="stylesheet" href="css/swipebox.css">
<script src="<%=request.getContextPath()%>/js/jquery.swipebox.min.js"></script>
<script type="text/javascript">
	jQuery(function($) {
		$(".swipebox").swipebox();
	});
</script>



</head>
<body>
	<div class="header" id="home">
		<div class="container">
			<div class="header-top">
				<div class="logo">
					<a href="index.html">重邮婚庆</a>
				</div>
				<div class="top-menu">
					<span class="menu"><img src="images/nav.png" alt="" /> </span>

					<ul>
						<li><a href="index.do">首页</a></li>
						<li><a href="free.do">婚庆预定</a></li>
						<li><a
							href="${pageContext.request.contextPath}/personal_page.do">个人中心</a></li>
						<li><a
							href="${pageContext.request.contextPath}/service_page.do">服务中心</a></li>
						
						<c:choose>
							<c:when test="${!empty sessionScope.username}">
								<li><a href="logout.do">${sessionScope.username}注销</a></li>
							</c:when>
							<c:otherwise>
								<li><a
									href="${pageContext.request.contextPath}/login_page.do">注册/登录</a></li>
							</c:otherwise>
						</c:choose>

					</ul>
					<!-- script for menu -->

					<script>
						$("span.menu").click(function() {
							$(".top-menu ul").slideToggle("slow", function() {
							});
						});
					</script>
					<!-- //script for menu -->
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!-- above is menubar -->


	<div id="Navigation">
		<div class="container clear_float">
			<div class="fl">
				<a href="#">个人中心</a>
			</div>
			<div class="fr">
				<a class="it" href="#">会员</a> <a class="it" href="#">我的婚庆</a> <a
					class="it" href="#">我的收藏</a> <a class="it" href="#">注销</a>
			</div>
		</div>
	</div>
	<div id="Middle">
		<div class="container clear_float">
			<div class="col_3 left">
				<hr>
				<div>
					<b>账号信息</b>
				</div>
				<div class="l_1">
					<ul>
						<li><a href="">查看我的订单</a></li>
						
				
					</ul>
				</div>
			</div>
			<div class="col_7 right">
				<div class="r_1">
					<a
						href="###########################################################3">个人信息</a>
				</div>
				<div class="r_2 clear_float">
					<div class="col_2 fl r_h">
						<div class="r_2_1">

							<img src="images/ad.jpg" class="img-responsive" alt="" />
							<div>
								<a
									href="#######################################################"
									class="file">更换头像</a>
								<hr>
							</div>
						</div>

						<center>
							<div class="col_8 r_2_2 fl">
								<form
									action="<%=request.getContextPath()%>/modifyUserInfo.do"
									method="post" onsubmit="return checkForm()">
									<div class="height">
										<div class="col_2">用户名</div>
										<div class="col_4">
											<input id="nameId" name="username" class="text" type="text"
												value="">
										</div>
										<div class="col_4" id="error1"></div>
									</div>


									<div class="height">
										<div class="col_2">年龄</div>
										<div class="col_4" id="error4"></div>
										<input id="uage" name="uage" class="text" type="text" value="">
									</div>
									<div class="height">
										<div class="col_2">联系电话/手机</div>
										<div class="col_4">
											<input id="utel" name="utel" class="text" type="text"
												value="">
										</div>
										<div class="col_4" id="error5"></div>
									</div>
									
									<div class="height1">
										<div class="col_2">性别</div>
										<div class="col_8">
											<input id="man" type="radio" value="男" name="usex" />男 <input
												id="woman" type="radio" value="女" name="usex" />女
										</div>
									</div>
									

									<div class="height1">
										<div class="col_2">新密码</div>
										<div class="col_8">
											<input id="woman" type="password" name="password" />
										</div>
									
										<div class="height">
											<div class="col_2"></div>
											<div class="col_4">
												<input id="submit" type="submit" value="确认修改">
											</div>
											<div class="col_4"></div>
										</div>

									</div>
								</form>

							</div>
						</center>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="js/1.js"></script>


	<div class="footer-section">
		<div class="container">
			<div class="footer-top">
				<p>
					<a href="http://www.edu.ruanko.com/" target="_blank" title="软酷网">婚庆管理</a>
					- 软酷网 <a href="http://www.edu.ruanko.com/" title="重邮婚庆"
						target="_blank">重邮婚庆</a>
				</p>
			</div>
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
			<a class="scroll" href="#home" id="toTop" style="display: block;">
				<span id="toTopHover" style="opacity: 1;"> </span>
			</a>

		</div>
	</div>
</body>
</html>