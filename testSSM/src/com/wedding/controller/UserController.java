package com.wedding.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.wedding.model.User;
import com.wedding.service.UserInfoService;

import java.lang.Integer;
@Controller
public class UserController {

	@Autowired
	private UserInfoService userInfoService;

	@Autowired
	private  HttpServletRequest request;
	/**
	 * 
	 *	进入首页 登录后跳转首页
	 */  
//	@RequestMapping(value = "/index.do", method = { RequestMethod.GET})
//	public String index() {
//		System.out.println("##index.do");
//		return "index";
//	}
	
	
	/**
	 * 
	 *	进入首页 登录后跳转首页
	 */  
	@RequestMapping(value = "/index.do", method = { RequestMethod.GET })
	public String welcome(HttpSession session) {
		System.out.println("##index_with_login.do");
		return "index";
	}

	/**
	 * 跳转登录界面
	 *
	 * */
	@RequestMapping(value="/login_page.do", method = { RequestMethod.GET})
	public String loginPage() {
		System.out.print("login_page");
		
		return "login_page";
	}
	
	/**
	 * @Title: toPage
	 * @Description: 一级页面跳转，例如 WEB-INF/logout.jsp
	 * @param: @param
	 *             pageName1 例如 logout
	 * @param: @return
	 * @return: ModelAndView login
	 * @throws @author
	 *             MrLu
	 * @Date 2016-11-14 下午12:08:18
	 */
	@RequestMapping(value = "/register_page.do", method = { RequestMethod.GET})
	public String registerpage() {
		System.out.println("##register_page##");
		return "register_page";
	}
@RequestMapping(value="/service_page.do", method= {RequestMethod.GET})
public String servicepage() {
	System.out.println("##service_page##");
	return "service_page";
}
@RequestMapping(value="/personal_page.do",method= {RequestMethod.GET})
public String personalpage() {
	System.out.println("##personal_page##");
	return "personal_page";
}

	// 登入
	@RequestMapping(value = "/register.do", method = { RequestMethod.POST })
	public ModelAndView login(@ModelAttribute("form") User usr, 
			RedirectAttributes arrt,
			@RequestParam("confirm_password") String repassword) {
		System.out.println("##mapping register.do ");
		ModelAndView modelAndView = new ModelAndView();

		int result = userInfoService.addUser(usr, repassword);
		System.out.println("开始比较");
		switch (result) {
		case UserInfoService.USER_EXITS: {
			String msg = "用户已经存在";
			System.out.println(msg);
			System.out.println("用户已经存在");
			modelAndView.setViewName("register_fail");
			modelAndView.addObject("msg", msg + "pass:" + usr.getPassword() + "reppass:" + repassword);
			break;
		}
		case UserInfoService.USER_REPEAT_PASSWORD_NOT_MATCH: {
			String msg = "确认密码不匹配";
			System.out.println(msg);
			modelAndView.setViewName("loginfail");
			modelAndView.addObject("msg", msg + "pass:" + usr.getPassword() + "reppass:" + repassword);
			break;
		}
		default: {
			String msg = "注册成功";
			System.out.println(
					msg + " username:" + usr.getUsername() + " pass:" + usr.getPassword() + "  reppass:" + repassword);
			modelAndView.setViewName("register_success");
			modelAndView.addObject("msg",
					"username:" + usr.getUsername() + " pass:" + usr.getPassword() + "  reppass:" + repassword);
			break;
		}

		}

		return modelAndView;
	}
	
	
	/**
	 * 登录的各种操作
	 * 
	 */
	
	@RequestMapping(value="/login.do")
	ModelAndView login(@RequestParam("username")String username, 
			@RequestParam("password")String password,
			HttpServletRequest request )
	{
		
		
		HttpSession session =request.getSession();
		
		User user= new User();
		user.setUsername(username);
		user.setPassword(password);
		user = userInfoService.findlogin(user);
		
		System.out.println("##login"+"username:"+username+"password:"+password);
		
		
		ModelAndView modelAndView = new ModelAndView();
		//如果登录成功
		if(user!=null) {
			modelAndView.setViewName("index");
			//set session attribute
			session.setAttribute("username", username);
			session.setAttribute("userid", user.getUserid());
			
		}else {
			modelAndView.setViewName("login_page");
			String warning="密码错误";
			modelAndView.addObject("warning",warning);
		}
		
		return modelAndView;
	}
	
	/**
	 * 
	 */
	@RequestMapping(value="modifyUserInfo.do",method= {RequestMethod.POST,RequestMethod.GET})
	ModelAndView modifyUserInfo(@ModelAttribute("form") User usr) {
		System.out.println(usr.getPassword()+usr.getUsername()+usr.getUage()+usr.getUtel()+usr.getUsex());
		Integer userid=(Integer)request.getSession().getAttribute("userid");
		if(userid!=null) {
			usr.setUserid(userid.intValue());
		}
		boolean result = userInfoService.modifyUserInfo(usr);
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.setViewName("personal_page");
		return modelAndView;
	}
}
