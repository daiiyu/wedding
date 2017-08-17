<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>结婚旅行攻略</title>
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

<h1 align="center">欢迎进入重邮结婚旅行攻略</h1><br>
<div class="contDetails">
			<p style="text-indent: 2em;">﻿泰国这个优雅而有韵味的国度，吸引很多人驻足。现在旅行结婚成为小年轻们的喜欢的结婚形式，有很多小情侣们都跑到泰国旅行结婚。接下来为你介绍泰国旅行结婚攻略：</p>
			<p style="text-indent: 2em;">泰国旅行结婚攻略1：清迈</p><p style="text-indent: 2em;">清迈大学很漂亮，还有孔子学院，在校区内的其中一个景色更是迷人，相机是拍不出来，各种热带树木在其中，藤条、树干交织在一起。过了清迈大学上素贴山就是双龙寺了。清迈的物价非常便宜，比曼谷便宜好多，美食也很多，尤其是清迈的粉儿，非常棒。</p>
			<p style="text-indent: 2em;"><br/></p><p style="text-align: center"><img src="https://i.dxlfile.com/info/upload/2017_03_02/2017030213363656365.jpg" style=""/></p><p style="text-align: center">&nbsp;<br/></p>
			<p style="text-indent: 2em;">泰国旅行结婚攻略2：拜县</p><p style="text-indent: 2em;">&nbsp;到了拜县，很感叹拜县的度假小镇气息。真是非常漂亮的东南亚小镇，很有感觉。迷你的小吧，还有就是美丽的田园风光。 &nbsp; &nbsp;</p><p style="text-indent: 2em;"><br/></p><p style="text-align:center"><img src="https://i.dxlfile.com/info/upload/2017_03_02/2017030213363644451.jpg" style="text-align: center; white-space: normal;"/></p>
			<p style="text-indent: 2em;">&nbsp;</p>
			<p style="text-indent: 2em;">&nbsp;泰国旅行结婚攻略3：曼谷&nbsp;</p><p style="text-indent: 2em;">大皇宫挺恢弘的，金碧辉煌很震撼，但没有想象中的好。船行驶在河上，河的岸边是一些卖工艺品及小吃水果的小商铺，有的当地人开小船在水上卖。包船开的很慢，可以尽情享受海上风情。</p><p style="text-indent: 2em;"><br/></p><p style="text-align:center"><img src="https://i.dxlfile.com/info/upload/2017_03_02/2017030213363732707.jpg" style="text-align: center; white-space: normal;"/></p><p><br/></p>
			<p style="text-indent: 2em;">泰国旅行结婚攻略，希望你有一个浪漫的旅行！ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><p><br/></p>
		</div>
		<div class="share">
		</div>
						<div class="clearfix clear"></div>

</body>
</html>