<%@page import="org.springframework.web.context.request.RequestScope"
import="com.wedding.model.Host" import="java.util.*"
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
					})
				</script>
<script type="text/javascript">           	
       $(function(){//主持人信息局部刷新
    	  $("#host").click(function(){   		
    		  var val=$(this).val(); 
    		  var zhang="张立波";
    		  var meng="孟非";
    		  var he="何炅";
    		  var url="${pageContext.request.contextPath}/hostinfo";
    		  var args={"hostname":val,"time":new Date()}
    		  $.post(url,args,function(data){
    		var obj=eval('('+data+')');//解析JSON字符串
    
    		 document.getElementById("hostsex").innerHTML=obj.sex;
    		 document.getElementById("hostprice").innerHTML=obj.price;
    		 document.getElementById("hostintroduce").innerHTML=obj.introduce; 
    		  if(val==zhang){
   			   $("#hostimg").attr("src","${pageContext.request.contextPath}/images/zhoulibo.jpg");  
    		  }else if(val==meng){
    			  $("#hostimg").attr("src","${pageContext.request.contextPath}/images/mengfei.jpg");  
    		  }
    		  else{
    			  $("#hostimg").attr("src","${pageContext.request.contextPath}/images/hejiong.jpg");  
    		  }
    		  })
    	  }) 
       })
    			
</script>
<script type="text/javascript">           	
       $(function(){//摄影师信息局部刷新
    	  $("#camera").click(function(){   		
    		  var val=$(this).val();   
    		  var url="${pageContext.request.contextPath}/camerainfo";
    		  var args={"cameraname":val,"time":new Date()}
    		  $.post(url,args,function(data){
    			
    		var obj=eval('('+data+')');//解析JSON字符串
    
    		 document.getElementById("camerasex").innerHTML=obj.sex;
    		 document.getElementById("cameraprice").innerHTML=obj.price;
    		 document.getElementById("cameraintroduce").innerHTML=obj.introduce;    	   
    		  })
    	  }) 
       })
    			
</script>

<script type="text/javascript">           	
       $(function(){//婚纱信息局部刷新
    	  $("#gown").click(function(){   		
    		  var val=$(this).val();   
    		  var url="${pageContext.request.contextPath}/gowninfo";
    		  var args={"gownname":val,"time":new Date()}
    		  $.post(url,args,function(data){
    		var obj=eval('('+data+')');//解析JSON字符串
    		 document.getElementById("gownprice").innerHTML=obj.price;
    		 document.getElementById("gownintroduce").innerHTML=obj.introduce;  
    		 if(val=="抹胸型"){
     			   $("#wgimg").attr("src","${pageContext.request.contextPath}/images/moxiong.jpg");  
      		  }else if(val=="鱼尾型"){
      			  $("#wgimg").attr("src","${pageContext.request.contextPath}/images/yuwei.jpg");  
      		  }
      		  else{
      			  $("#wgimg").attr("src","${pageContext.request.contextPath}/images/lianqun.jpg");  
      		  }
    		  })
    	  }) 
       })
    			
</script>

<script type="text/javascript">           	
       $(function(){//鲜花信息局部刷新
    	  $("#flower").click(function(){   		
    		  var val=$(this).val();   
    		  var url="${pageContext.request.contextPath}/flowerinfo";
    		  var args={"flowername":val,"time":new Date()}
    		  $.post(url,args,function(data){
    		var obj=eval('('+data+')');//解析JSON字符串
    		 document.getElementById("flowerprice").innerHTML=obj.price;
    		 document.getElementById("flowerintroduce").innerHTML=obj.introduce;  
    		 if(val=="白玫瑰"){
   			   $("#flowerimg").attr("src","${pageContext.request.contextPath}/images/baimeigui.jpg");  
    		  }else if(val=="红玫瑰"){
    			  $("#flowerimg").attr("src","${pageContext.request.contextPath}/images/hongmeigui.jpg");  
    		  }
    		  else{
    			  $("#flowerimg").attr("src","${pageContext.request.contextPath}/images/lanseyaoji.jpg");  
    		  }
    		  })
    	  }) 
       })
    			
</script>
<script type="text/javascript">           	
       $(function(){//主婚车信息局部刷新
    	  $("#maincar").click(function(){   		
    		  var val=$(this).val();   
    		  var url="${pageContext.request.contextPath}/maincarinfo";
    		  var args={"maincarname":val,"time":new Date()}
    		  $.post(url,args,function(data){
    		var obj=eval('('+data+')');//解析JSON字符串
    		 document.getElementById("maincarprice").innerHTML=obj.price;
    		 document.getElementById("maincarintroduce").innerHTML=obj.introduce;    
    		 if(val=="劳斯莱斯"){
     			   $("#mcarimg").attr("src","${pageContext.request.contextPath}/images/laosilaisi.jpg");  
      		  }else if(val=="奔驰"){
      			  $("#mcarimg").attr("src","${pageContext.request.contextPath}/images/benchi.jpg");  
      		  }
      		  else{
      			  $("#mcarimg").attr("src","${pageContext.request.contextPath}/images/baoma.jpg");  
      		  }
    		  })
    	  }) 
       })
    			
</script>
<script type="text/javascript">           	
       $(function(){//迎宾车信息局部刷新
    	  $("#ucar").click(function(){   		
    		  var val=$(this).val();  
 
    		  var url="${pageContext.request.contextPath}/uCarinfo";
    		  var args={"ucarname":val,"time":new Date()}
    		  $.post(url,args,function(data){
    		var obj=eval('('+data+')');//解析JSON字符串

    		 document.getElementById("ucarprice").innerHTML=obj.price;
    		 document.getElementById("ucarintroduce").innerHTML=obj.introduce;   
    		 if(val=="宝马"){
   			   $("#ucarimg").attr("src","${pageContext.request.contextPath}/images/baoma1.jpg");  
    		  }else if(val=="奥迪"){
    			  $("#ucarimg").attr("src","${pageContext.request.contextPath}/images/aodi.jpg");  
    		  }
    		  else{
    			  $("#ucarimg").attr("src","${pageContext.request.contextPath}/images/dazhong.jpg");  
    		  }
    		  })
    	  }) 
       })
    			
</script>
<script type="text/javascript">
 function submit(){
	 var host=document.getElementById("host").value;
	 var camera=document.getElementById("camera").value;
	 var gown=document.getElementById("gown").value;
	 var flower=document.getElementById("flower").value;
	 var maincar=document.getElementById("maincar").value;
	 var ucar=document.getElementById("ucar").value;
	 var ucarcount=document.getElementById("count").value;
	 window.location.href="${pageContext.request.contextPath}/freeProcess.do?host="+ encodeURI(encodeURI(host))+"&camera="+ encodeURI(encodeURI(camera))+"&gown="+encodeURI(encodeURI(gown))+
			 "&flower="+encodeURI(encodeURI(flower))+"&maincar="+encodeURI(encodeURI(maincar))+"&ucar="+encodeURI(encodeURI(ucar))+"&ucarcount="+encodeURI(encodeURI(ucarcount));
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
    </div>
    </div>
    </div>
    </div>
    <div class="choose">
    <style >
    .sui-nav{
    	padding-left: 430px;
    }
    .peo-choose{
      padding-left: 430px;
    }
    .myCarousel{
      width: 550px;
    }
    .row clearfix{
       text-align:center;
    }

    </style>
 
<div class="sui-navbar">
  <div class="navbar-inner">
    <ul class="sui-nav">
      <li ><a href="fix.do"><h1>固定套餐入口</h1></a></li>
      <li class="active"> <a href="free.do"><h1>自由搭配入口</h1></a></li>
      
    </ul>
  </div>
</div>

<div class="container" >
  <div class="row clearfix">
  <form name="form1">
    <div class="col-md-4 column">
    <span class="label label-default" style="font-size:20px;">主持人（司仪）</span><br>
 <select id="host" name="host_name">    
<option  id="1"  >${requestScope.host.get(0).getH_name()}</option>
<option  id="2" >${requestScope.host.get(1).getH_name()}</option>
<option  id="3" >${requestScope.host.get(2).getH_name()}</option>
</select><br>



<label name="sex">性别</label><br>

<div class="form-group">
<textarea  id="hostsex" class="form-control" rows="1"></textarea>
</div>

<label name="money">价格</label><br>
<form role="form">
<div class="form-group">
<textarea  id="hostprice" class="form-control" rows="1"></textarea>
</div>
</form>


      <h2>
        个人介绍
      </h2>
    <textarea  id="hostintroduce" class="form-control" rows="1"></textarea>
     <img  src="images/yw.jpg" id="hostimg" height="180" width="220"/>
    </div>
    </form>
    <form name="form2">
    <div class="col-md-4 column">
    <span class="label label-default" style="font-size:20px;">摄影师</span><br>
 <select id="camera">
<option >${requestScope.camera.get(0).getCa_name()}</option>
<option >${requestScope.camera.get(1).getCa_name()}</option>
<option >${requestScope.camera.get(2).getCa_name()}</option>
</select><br>


</form>
<label name="sex">性别</label><br>
<form role="form">
<div class="form-group">
<textarea class="form-control" rows="1" id="camerasex"></textarea>
</div>
</form>
<label name="money">价格</label><br>
<form role="form">
<div class="form-group">
<textarea class="form-control" rows="1" id="cameraprice"></textarea>
</div>
      <h2>
        个人介绍
      </h2>
      <textarea  id="cameraintroduce" class="form-control" rows="1"></textarea>
      <img src="images/yw.jpg" height="200" width="250"/>
    </div>


    <div class="col-md-4 column">
    <span class="label label-default" style="font-size:20px;">婚纱</span><br>
 <select id="gown">
<option >${requestScope.weddingGown.get(0).getWg_style()}</option>
<option >${requestScope.weddingGown.get(1).getWg_style()}</option>
<option >${requestScope.weddingGown.get(2).getWg_style()}</option>
</select><br>

<label >价格</label><br>
<form role="form">
<div class="form-group">
<textarea class="form-control" rows="1" id="gownprice"></textarea>


      <h2>
        婚纱介绍
      </h2>
      <textarea class="form-control" rows="3" id="gownintroduce"></textarea>
      <br>
       <br>
      <img  src="images/yw.jpg" id="wgimg" height="200" width="250"/>
    </div>
    </form>
  </div>
  <div class="row clearfix">

    <form name="form4">
    <div class="col-md-4 column">
    <span class="label label-default" style="font-size:20px;">鲜花</span><br>
    <select id="flower">
<option >${requestScope.flower.get(0).getF_name()}</option>
<option >${requestScope.flower.get(1).getF_name()}</option>
<option >${requestScope.flower.get(2).getF_name()}</option>
</select><br>





<label name="money">价格</label><br>

<div class="form-group">
<textarea class="form-control" rows="1" id="flowerprice"></textarea>
</div>



      <h2>
        鲜花介绍
      </h2>
     <textarea class="form-control" rows="3" id="flowerintroduce"></textarea>
      <br>
      
     <img src="images/yw.jpg" id="flowerimg" height="200" width="250" />
    </div>
    
    </form>
   <form name="form5">
    <div class="col-md-4 column">
    <span class="label label-default" style="font-size:20px;">主婚车</span><br>
    <select id="maincar">
<option >劳斯莱斯</option>
<option >奔驰</option>
<option >宝马</option>
</select>
<br>




<label name="money">价格</label><br>
<form role="form">
<div class="form-group">
<textarea class="form-control" rows="1" id="maincarprice"></textarea>
</div>
</form>


      <h2>
        车辆介绍
      </h2>
  <textarea class="form-control" rows="3" id="maincarintroduce"></textarea>
      <br>
     <img  src="images/yw.jpg" id="mcarimg" height="200" width="250" />
    </div>
    </form>
    <form name="form1">
    <div class="col-md-4 column">
    <span class="label label-default" style="font-size:20px;">迎宾车队</span><br>
<select id="ucar">
<option >${requestScope.usherCar.get(0).getUc_name()}</option>
<option >${requestScope.usherCar.get(1).getUc_name()}</option>
<option >${requestScope.usherCar.get(2).getUc_name()}</option>
</select><br>



<label name="money">数量:</label> <input type="text" id="count"><br>

<label name="money">价格</label><br>
<form role="form">
<div class="form-group">
<textarea class="form-control" rows="1" id="ucarprice"></textarea>
</div>
</form>
      <h2>
        车辆介绍
      </h2>
     <textarea class="form-control" rows="3" id="ucarintroduce"></textarea>
     <img src="images/yw.jpg" id="ucarimg" height="200" width="250"  />
    </div>
    </form>
  <div class="row clearfix">
  <div class="col-md-12 column">
       <button type="button" class="btn btn-lg btn-block" onclick="submit()">提交</button>
    </div>
  </div>


    </div>
</body>
</html>