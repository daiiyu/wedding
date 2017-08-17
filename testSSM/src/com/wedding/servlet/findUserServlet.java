package com.wedding.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.wedding.model.User;
import com.wedding.service.UserService;


public class findUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public findUserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ApplicationContext ac=new ClassPathXmlApplicationContext("bean.xml");
		UserService userService=  (UserService) ac.getBean("userService");//获取所需要的bean
		String username=request.getParameter("username");

		User u=new User();
		u.setUsername(username);
		u=userService.findUderByname(u);
		StringBuilder result = new StringBuilder();  
		result.append("{").append("\"userid\":\""+u.getUserid()+"\"").append(",").append("\"username\":\""+u.getUsername()+"\"").append(",").append("\"usertel\":\""+u.getUtel()+"\"").append(",").append("\"usersex\":\""+u.getUsex()+"\"").append("}"); //构建json串
		 System.out.println(result);
		response.setContentType("text/html");
		  response.setCharacterEncoding("UTF-8");
		   response.getWriter().print("11111111");

	}

}
