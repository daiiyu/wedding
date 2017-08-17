package com.wedding.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.wedding.model.Flower;
import com.wedding.model.MainCar;
import com.wedding.service.UserService;

/**
 * Servlet implementation class maincarServlet
 */
public class maincarServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public maincarServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ApplicationContext ac=new ClassPathXmlApplicationContext("bean.xml");
		UserService userService=  (UserService) ac.getBean("userService");//获取所需要的bean
		String maincarname=request.getParameter("maincarname");//获取前端所选择的司仪姓名
		//对数据库进行查询
	    MainCar ca=new MainCar();
	    ca.setMc_name(maincarname);
	    ca=userService.findMainCarByName(ca);
	   int hostprice=ca.getMc_price();
	     String hostintroduce=ca.getMc_introduce();
	     StringBuilder result = new StringBuilder();  
			result.append("{").append("\"price\":"+hostprice).append(",").append("\"introduce\":\""+hostintroduce+"\"").append("}"); //构建json串
	     response.setContentType("text/html");
	    response.setCharacterEncoding("UTF-8");
	     response.getWriter().print(result);
	}

}
