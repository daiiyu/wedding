<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>重邮婚庆首页</title>
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
								<li><a href="logout.do">${sessionScope.username}/注销</a></li>
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


					
					<div class="content">
						<div class="sonjoe">
						<div class="container">
						<div class="col-md-8 sonjoe-grid">
						<div class="sonjoe1">
						<div class="son1">
						<img src="images/img7.jpg" class="img-responsive" alt="" />
						</div>
						<div class="son2">
						<h3>公司概述</h3>
						<p>重邮婚庆有限责任公司（以下简称重邮婚庆），创立于2017年8月，公司拥有强大的主持、摄影、化妆、场景布置团队，公司资源雄厚，经验丰富，
								致力于为新人打造完美的婚礼盛典！</p>
						</div>
						<div class="clearfix"></div>
						</div>
						</div>
						<div class="col-md-4 sonjoe-grid1">
						<a href="free.do">我要结婚</a>
						</div>
						</div>
						</div>
						<div class="pictures-section">
						<div class="container">
						<h4>January 2017</h4>
						<div class="pictures-grids">
						<div class="pic-grid1">
						<div class="col-md-3 pic-grid">
<a href="images/img8.jpg" class="swipebox"><img src="images/img8.jpg" class="img-responsive" alt="" /></a>
						</div>
							<div class="col-md-3 pic-grid">
<a href="images/img9.jpg" class="swipebox"><img src="images/img9.jpg" class="img-responsive" alt="" /></a>
						</div>
							<div class="col-md-3 pic-grid">
<a href="images/img10.jpg" class="swipebox"><img src="images/img10.jpg" class="img-responsive" alt="" /></a>
						</div>
							<div class="col-md-3 pic-grid">
<a href="images/img11.jpg" class="swipebox"><img src="images/img11.jpg" class="img-responsive" alt="" /></a>
						</div>
						<div class="clearfix"></div>
						</div>
						<div class="pic-grid2">
						<div class="col-md-3 pic-grid">
<a href="images/img12.jpg" class="swipebox"><img src="images/img12.jpg" class="img-responsive" alt="" /></a>
						</div>
							<div class="col-md-3 pic-grid">
<a href="images/img13.jpg" class="swipebox"><img src="images/img13.jpg" class="img-responsive" alt="" /></a>
						</div>
							<div class="col-md-3 pic-grid">
<a href="images/img14.jpg" class="swipebox"><img src="images/img14.jpg" class="img-responsive" alt="" /></a>
						</div>
							<div class="col-md-3 pic-grid">
<a href="images/img15.jpg" class="swipebox"><img src="images/img15.jpg" class="img-responsive" alt="" /></a>
						</div>
						<div class="clearfix"></div>
						</div>
						<div class="clearfix"></div>
						</div>
						</div>
						</div>
                        <div class="copyrights">Collect from <a href="http://www.cssmoban.com/" >免费网站模板</a></div>
						<div class="pict-section">
						<div class="container">
						<h4>December 2017
                        </h4>
						<div class="screen-shots">
					<!--sreen-gallery-cursual-->
						<div class="sreen-gallery-cursual">
							<!-- start content_slider -->
						       <div id="owl-demo" class="owl-carousel">
					                <div class="item">
					                	<div class="item-grid">
					                		<div class="item-pic">
					                			<img src="images/img16.jpg" class="img-responsive" alt="" />
					                		</div>
					                	</div>
					                </div>
					                <div class="item">
					                	<div class="item-grid">
					                		<div class="item-pic">
					                			<img src="images/img17.jpg" class="img-responsive" alt="" />
                                               </div>
					                		</div>
					                </div>
					                 <div class="item">
					                	<div class="item-grid">
					                		<div class="item-pic">
					                			<img src="images/img18.jpg" class="img-responsive" alt="" />
                                               </div>
					                		</div>
					                	</div>
					               <div class="item">
					                	<div class="item-grid">
					                		<div class="item-pic">
					                		<img src="images/img19.jpg" class="img-responsive" alt="" />
                                               </div>
					                		</div>
					                	</div>
					                 <div class="item">
					                	<div class="item-grid">
					                		<div class="item-pic">
					                		<img src="images/img16.jpg" class="img-responsive" alt="" />
                                               </div>
					                		</div>
					                	</div>
					                 <div class="item">
					                	<div class="item-grid">
					                		<div class="item-pic">
					                			<img src="images/img17.jpg" class="img-responsive" alt="" />
                                               </div>
					                		</div>
					                	</div>
					               <div class="item">
					                	<div class="item-grid">
					                		<div class="item-pic">
					                			<img src="images/img18.jpg" class="img-responsive" alt="" />
                                               </div>
					                		</div>
					                	</div>
					                 <div class="item">
					                	<div class="item-grid">
					                		<div class="item-pic">
					                			<img src="images/img19.jpg" class="img-responsive" alt="" />
                                               </div>
					                		</div>
					                	</div>
										<div class="item">
					                	<div class="item-grid">
					                		<div class="item-pic">
					                			<img src="images/img16.jpg" class="img-responsive" alt="" />
					                		</div>
					                	</div>
					                </div>
					                <div class="item">
					                	<div class="item-grid">
					                		<div class="item-pic">
					                			<img src="images/img17.jpg" class="img-responsive" alt="" />
                                               </div>
					                		</div>
					                </div>
					                 <div class="item">
					                	<div class="item-grid">
					                		<div class="item-pic">
					                			<img src="images/img18.jpg" class="img-responsive" alt="" />
                                               </div>
					                		</div>
					                	</div>
					               <div class="item">
					                	<div class="item-grid">
					                		<div class="item-pic">
					                			<img src="images/img19.jpg" class="img-responsive" alt="" />
                                               </div>
					                		</div>
					                	</div>
					               </div>
				              </div>
						<!--//sreen-gallery-cursual-->
					</div>
				
				<!-- requried-jsfiles-for owl -->
							<link href="css/owl.carousel.css" rel="stylesheet">
							    <script src="js/owl.carousel.js"></script>
							        <script>
							    $(document).ready(function() {
							      $("#owl-demo").owlCarousel({
							        items :4,
							        lazyLoad : true,
							        autoPlay : true,
							        navigation : false,
							        navigationText :  false,
							        pagination : true,
							      });
							    });
							    </script>
							  <!-- //requried-jsfiles-for owl -->
							  </div>
			</div>
			<div class="google-map">
			</div>
				</div>
				<p>
  </p><div class="sui-btn-group">
<a href="${pageContext.request.contextPath}/wk.do" style="font-size:30px;color:red;margin-left:400px;">结婚旅行攻略</a>
  <h5>友情链接</h5>
    <button class="sui-btn"><a href="https://www.baidu.com/">百度一下</a></button>
    <button class="sui-btn"><a href="https://www.taobao.com/">淘宝</a></button>
    <button class="sui-btn"><a href="https://www.chongqing.daoxila.com/">到喜啦</a></button>
    <button class="sui-btn"><a href="https://www.baidu.com/">重庆婚纱摄影</a></button>
    <button class="sui-btn"><a href="https://www.baidu.com/">重庆房产</a></button>
    <button class="sui-btn"><a href="https://www.baidu.com/">重庆装修网</a></button>
    <button class="sui-btn"><a href="https://www.baidu.com/">钻戒定制</a></button>
    <button class="sui-btn"><a href="https://www.baidu.com/">重庆旅行</a></button>
  </div>
<p></p>
				<div class="footer-section">
					<div class="container">
						<div class="footer-top">
					<p> <a href="http://www.edu.ruanko.com/" target="_blank" title="软酷网">婚庆管理</a> - 软酷网 <a href="http://www.edu.ruanko.com/" title="重邮婚庆" target="_blank">重邮婚庆</a></p>
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
							
							$().UItoTop({ easingType: 'easeOutQuart' });
							
						});
					</script>
				<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>


					</div>
					</div>

						


   	
	</body>
</html>