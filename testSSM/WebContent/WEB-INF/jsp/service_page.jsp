<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>首页</title>
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
								<li><a href="">${sessionScope.username}</a></li>
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
	
	

	<div class="main">
		<div class="container">
			<div class="contact">
				<div class="contact-head text-center">
					<h3>联系我们</h3>
				</div>
				<!----- contact-grids ----->
				<div class="contact-grids">
					<!-- <div class="contact-map">
							<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1578265.0941403757!2d-98.9828708842255!3d39.41170802696131!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x54eab584e432360b%3A0x1c3bb99243deb742!2sUnited+States!5e0!3m2!1sen!2sin!4v1407515822047"> </iframe>
						</div> -->
					<!----- contact-form ------>
					<div class="contact-form">
						<form>
							<div class="contact-form-row">
								<div>
									<span>名字 :</span> <input type="text" class="text" value=""
										onfocus="this.value = '';"
										onblur="if (this.value == '') {this.value = '';}">
								</div>
								<div>
									<span>邮箱 :</span> <input type="text" class="text" value=""
										onfocus="this.value = '';"
										onblur="if (this.value == '') {this.value = '';}">
								</div>
								<div>
									<span>主题 :</span> <input type="text" class="text" value=""
										onfocus="this.value = '';"
										onblur="if (this.value == '') {this.value = '';}">
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="clearfix"></div>
							<div class="contact-form-row2">
								<span>内容:</span>
								<textarea> </textarea>
							</div>
							<input type="submit" value="发送">
						</form>
					</div>
					<!----- contact-form ------>
				</div>
				<!----- contact-grids ----->
			</div>
		</div>
	</div>


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