<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE HTML>
<html>
<head>
<title>Events</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="http://g.alicdn.com/sj/dpl/1.5.1/css/sui.min.css" rel="stylesheet">
  <script type="text/javascript" src="http://g.alicdn.com/sj/lib/jquery/dist/jquery.min.js"></script>
  <script type="text/javascript" src="http://g.alicdn.com/sj/dpl/1.5.1/js/sui.min.js"></script>
<meta name="keywords" content="Love hearts  Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

<script src="js/jquery-1.11.1.min.js"></script>
 <!---- start-smoth-scrolling---->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
 <script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
			});
		});
	</script>
<!---End-smoth-scrolling---->
<link rel="stylesheet" href="css/swipebox.css">
			<script src="js/jquery.swipebox.min.js"></script> 
			    <script type="text/javascript">
					jQuery(function($) {
						$(".swipebox").swipebox();
					});
				</script>
<script>
  function submit1(){
	  var host="孟非";
	  var camera="邹代宇";
	  var maincar="奔驰";
	  var ucar="奥迪";
	  var gown="鱼尾型";
	  var flower="白玫瑰";
	  var price="19999";
	  window.location.href="${pageContext.request.contextPath}/fixProcess.do?host="+ encodeURI(encodeURI(host))+"&camera="+ encodeURI(encodeURI(camera))+"&gown="+encodeURI(encodeURI(gown))+
		 "&flower="+encodeURI(encodeURI(flower))+"&maincar="+encodeURI(encodeURI(maincar))+"&ucar="+encodeURI(encodeURI(ucar))+"&price="+encodeURI(encodeURI(price));
  }
  function submit2(){
	  var host="张立波";
	  var camera="吕欢欢";
	  var maincar="宝马";
	  var ucar="别克";
	  var gown="抹胸型";
	  var flower="蓝色妖姬";
	  var price="18999";
	  window.location.href="${pageContext.request.contextPath}/fixProcess.do?host="+ encodeURI(encodeURI(host))+"&camera="+ encodeURI(encodeURI(camera))+"&gown="+encodeURI(encodeURI(gown))+
		 "&flower="+encodeURI(encodeURI(flower))+"&maincar="+encodeURI(encodeURI(maincar))+"&ucar="+encodeURI(encodeURI(ucar))+"&price="+encodeURI(encodeURI(price));
  }
  function submit3(){
	  var host="何炅";
	  var camera="唐晨";
	  var maincar="劳斯莱斯";
	  var ucar="雷克萨斯";
	  var gown="蓬裙型";
	  var flower="红玫瑰";
	  var price="10999";
	  window.location.href="${pageContext.request.contextPath}/fixProcess.do?host="+ encodeURI(encodeURI(host))+"&camera="+ encodeURI(encodeURI(camera))+"&gown="+encodeURI(encodeURI(gown))+
		 "&flower="+encodeURI(encodeURI(flower))+"&maincar="+encodeURI(encodeURI(maincar))+"&ucar="+encodeURI(encodeURI(ucar))+"&price="+encodeURI(encodeURI(price));
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
		<span class="menu"><img src="images/nav.png" alt=""/> </span>

   <ul>
   	<li><a href="index.do">首页</a></li>
    <li><a href="free.do">婚庆预定</a></li>
  	<li><a href="personal_page.do">个人中心</a></li>
	<li><a href="service_page.do">服务中心</a></li>
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
    </div>
    </div>
    </div>
    </div>
    <div class="choose">
    <style>
    .sui-nav{
    	padding-left: 430px;
    }
    </style>
 
<div class="sui-navbar">
  <div class="navbar-inner">
    <ul class="sui-nav">
      <li  class="active"><a href="#"><h1>固定套餐入口</h1></a></li>
      <li> <a href="free.do"><h1>自由搭配入口</h1></a></li>
      
    </ul>
  </div>
</div>
    </div>
    <div>
    <table class="sui-table table-primary">
  <thead>
    <tr>
      <th>＃</th>
      <th>A套餐</th>
      <th>B套餐</th>
      <th>C套餐</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>司仪</td>
      <td id="mengfei">孟非</td>
      <td id="zhanglibo">张立波</td>
      <td id="hejiong">何炅</td>
    </tr>
    <tr>
      <td>摄影师</td>
      <td id="zoudaiyu">邹代宇</td>
      <td id="lvhuanhuan">吕欢欢</td>
      <td id="tangchen">唐晨</td>
    </tr>
    <tr>
      <td>主婚车</td>
      <td>奔驰</td>
      <td>宝马</td>
      <td>劳斯莱斯</td>
    </tr>
    <tr>
      <td>随婚车</td>
      <td>奥迪</td>
      <td>别克</td>
      <td>雷克萨斯</td>
    </tr>
    <tr>
      <td>婚纱</td>
      <td>鱼尾型</td>
      <td>抹胸型</td>
      <td>蓬裙型</td>
    </tr>
      <tr>
      <td>鲜花</td>
      <td>白玫瑰</td>
      <td>蓝色妖姬</td>
      <td>红玫瑰</td>
    </tr>
    <tr>
      <td>总价</td>
      <td>19999.00</td>
      <td>18999.00</td>
      <td>10999.00</td>
    </tr>
      <tr>
      <td></td>
      <td><button onclick="submit1()">提交</button></td>
      <td><button onclick="submit2()">提交</button></td>
      <td><button onclick="submit3()">提交</button></td>
    </tr>
  </tbody>
</table>
    </div>
</body>
</html>