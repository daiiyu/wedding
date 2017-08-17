package com.wedding.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.wedding.model.Host;
import com.wedding.model.WeddingGown;
import com.wedding.service.UserService;


public class gownServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public gownServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ApplicationContext ac=new ClassPathXmlApplicationContext("bean.xml");
		UserService userService=  (UserService) ac.getBean("userService");//获取所需要的bean
		String gownname=request.getParameter("gownname");//获取前端所选择的司仪姓名
		//对数据库进行查询
	    WeddingGown we=new WeddingGown();
	    we.setWg_style(gownname);
	     we=userService.findGwonByName(we);	     	     	    
	     int hostprice=we.getWg_price();
	     String hostintroduce=we.getWg_introduce();
	     StringBuilder result = new StringBuilder();  
			result.append("{").append("\"price\":"+hostprice).append(",").append("\"introduce\":\""+hostintroduce+"\"").append("}"); //构建json串
	     response.setContentType("text/html");
	    response.setCharacterEncoding("UTF-8");
	     response.getWriter().print(result);
	}

}
