<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>固定套餐订单详情</title>
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
			}, 1300);
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
<style type="text/css">
td
{
  border:3px;
}
</style>
<script>
function submit(){
	window.location.href="${pageContext.request.contextPath}/pay.do"
}
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

<table align="center" style="font-size:15px;border:3px;">
  <tr>
  <td >订单编号</td><td colspan="2">&nbsp;&nbsp;</td><td >${requestScope.result.getO_id()}</td>
  </tr>
  <tr>
  <td >主持人</td><td colspan="2">&nbsp;&nbsp;</td><td >${requestScope.result.getH_name()}</td>
  </tr>
  <tr>
  <td >摄影师</td><td colspan="2">&nbsp;&nbsp;</td><td >${requestScope.result.getCa_name()}</td>
  </tr>
  <tr>
  <td >主婚车</td><td colspan="2">&nbsp;&nbsp;</td><td >${requestScope.result.getMc_name()}</td>
  </tr>
  <tr>
  <td >迎宾车队</td><td colspan="2">&nbsp;&nbsp;</td><td >${requestScope.result.getUc_name()}</td>
  </tr>
  <tr>
  <td >婚纱</td><td colspan="2">&nbsp;&nbsp;</td><td >${requestScope.result.getWg_style()}</td>
  </tr>
  <tr>
  <td >鲜花</td><td colspan="2">&nbsp;&nbsp;</td><td >${requestScope.result.getF_name()}</td>
  </tr>
  <tr>
  <td >总价格</td><td colspan="2">&nbsp;&nbsp;</td><td >${requestScope.result.getPrice()}￥</td>
  </tr>
  <tr>
  <td >支付状态</td><td colspan="2">&nbsp;&nbsp;</td><td >${requestScope.result.getStatus()}</td>
  </tr>
  
   
</table>
<br>
 <div class="col-md-12 column">
       <button type="button" class="btn btn-lg btn-block" onclick="submit()">确定（去付款）</button>
    </div>
 
</body>
</html>