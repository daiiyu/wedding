<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.wedding.service.impl.FreeServiceImpl" import="java.util.Iterator" import="com.wedding.model.Host"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%  

String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  

/* FreeServiceImpl fsi=new FreeServiceImpl();
Iterator<Host> it = fsi.findhostAll().iterator();
while(it.hasNext()) {
	  System.out.println(it.next()); } */
	
%> 
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>自由搭配</title>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<style> 
		.a{
		background: #FFE4E1;

		}
	</style>
<script>  
    function addUser(){  
        
        FreeOrderDao fod=new FreeOrderDao();
       Iterator it = fod.findHostAll().iterator();
        while(it.hasNext()) {
        	  System.ou.println(it.next());
        	}
        
        
    }  
</script> 
</head>
<body>

	<h1 align="center">自由搭配中心</h1>
 <form action="" role="form">
 	<table align="center" style="margin-bottom: 20PX;">
 	<label for="name" style="margin-left: 500px;">婚庆人员选择</label>
 		<tr>
 			<td>主持人</td>
			 	<td> <div class="form-group">
			    <select class="form-control">
			      <option>${requestScope.host.next().getH_name()}</option>
			      <option>2</option>
			      <option>3</option>
			      <option>4</option>
			      <option>5</option>
			    </select>
			    </div></td>
 			<td ><button>查看详细</button></td>
 		</tr>
 		<tr>
 			<td>摄影师</td>
 			<td><div class="form-group">
			    <select class="form-control">
			      <option>1</option>
			      <option>2</option>
			      <option>3</option>
			      <option>4</option>
			      <option>5</option>
			    </select>
			    </div></td>
 			<td><button>查看详细</button></td>
 		</tr>
 	</table>
 	
 	<table align="center" style="margin-bottom: 20PX;">
 		<label for="name" style="margin-left: 500px;">婚庆车辆选择</label>
 		<tr>
 			<td>&nbsp;&nbsp;</td>
 			<td>品牌</td>
 			<td>款式</td>
 		</tr>
 		<tr>
 			<td>主婚车</td>
 			<td><div class="form-group">
			    <select class="form-control">
			      <option>1</option>
			      <option>2</option>
			      <option>3</option>
			      <option>4</option>
			      <option>5</option>
			    </select>
			    </div></td>
			    <td><div class="form-group">
			    <select class="form-control">
			      <option>1</option>
			      <option>2</option>
			      <option>3</option>
			      <option>4</option>
			      <option>5</option>
			    </select>
			    </div></td>
 			<td><button>查看详细</button></td>
 		</tr>
 		<tr>
 			<td>迎宾车队</td>
 			<td><div class="form-group">
			    <select class="form-control">
			      <option>1</option>
			      <option>2</option>
			      <option>3</option>
			      <option>4</option>
			      <option>5</option>
			    </select>
			    </div></td>
			    <td><div class="form-group">
			    <select class="form-control">
			      <option>1</option>
			      <option>2</option>
			      <option>3</option>
			      <option>4</option>
			      <option>5</option>
			    </select>
			    </div></td>
 			<td><button>查看详细</button></td>
 		</tr>
 	</table>
 	<table align="center" style="margin-bottom: 20PX;">
 		<label for="name" style="margin-left: 500px;">婚庆用品选择</label>
 		<tr>
 			<td>婚纱</td>
 			<td><div class="form-group">
			    <select class="form-control">
			      <option>1</option>
			      <option>2</option>
			      <option>3</option>
			      <option>4</option>
			      <option>5</option>
			    </select>
			    </div></td>
 			<td><button>查看详细</button></td>
 		</tr>
 		<tr>
 			<td>鲜花</td>
 			<td><div class="form-group">
			    <select class="form-control">
			      <option>1</option>
			      <option>2</option>
			      <option>3</option>
			      <option>4</option>
			      <option>5</option>
			    </select>
			    </div></td>
 			<td><button>查看详细</button></td>
 		</tr>
 		<tr>
 			<td>礼炮</td>
 			<td><div class="form-group">
			    <select class="form-control">
			      <option>1</option>
			      <option>2</option>
			      <option>3</option>
			      <option>4</option>
			      <option>5</option>
			    </select>
			    </div></td>
 			<td><button>查看详细</button></td>
 		</tr>
 	</table>
 	<table style="margin-bottom: 20PX;">
 		<tr><label for="name" style="margin-left: 500px;">其他需求&nbsp;&nbsp;&nbsp;&nbsp;</label></tr>
 		 <tr><input type="text" id="name" placeholder="请输入其他需求" class="form-control"></tr>
 		 <tr><input type="submit" value="提交" style="margin-left: 600px;"></tr>
 	</table>
 	</form>
 <script src="js/jquery.min.js"></script>	
 <script src="js/bootstrap.min.js"></script>
</body>
</html>