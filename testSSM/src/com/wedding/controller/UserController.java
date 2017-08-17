package com.wedding.controller;


import java.io.UnsupportedEncodingException;
import java.util.Iterator;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.servlet.ModelAndView;

import com.wedding.dao.FreeOrderDao;
import com.wedding.dao.UserDao;
import com.wedding.model.Camera;
import com.wedding.model.Flower;
import com.wedding.model.FreeOrder;
import com.wedding.model.Host;
import com.wedding.model.MainCar;
import com.wedding.model.Manager;
import com.wedding.model.User;
import com.wedding.model.UsherCar;
import com.wedding.model.WeddingGown;
import com.wedding.service.UserService;
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
@Controller
public class UserController {
	 @Autowired
	 private UserDao userDao;
	  @Autowired
	  private FreeOrderDao freeOrderDao;
	  @Autowired
		private UserInfoService userInfoService;

		@Autowired
		private  HttpServletRequest request;
		HttpSession session;
		  //首页
	     @RequestMapping(value="index.do",method={RequestMethod.GET,RequestMethod.POST})
	     public String welcome() {//首页跳转
	    	 
	    	 return "index";
	    /*	 try{
	    		if(session.getAttribute("username")!=null) {
		    		 return "index";
	    		}else {  return "index";}
	    	 }catch(NullPointerException n) {
	    		 session.setAttribute("username",null);
		    	 return "index";
	    	 }*/
	    	 
	    	 
	     }
	     @RequestMapping(value="wk.do",method={RequestMethod.GET,RequestMethod.POST})
	     public String weddingKnowledge() {//首页跳转
	    	 return "weddingKnowledge";
	     }
	
		  //跳转到固定套餐界面
	     @RequestMapping(value="fix.do",method={RequestMethod.GET,RequestMethod.POST})
	     public String fix() {
	    	 try {
	    		 session.getAttribute("username");
	    	 }catch(Exception n) {
	    		 return "login_page";
	    	 }
	    	 return "fix";
	     }
	 
		
		
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
		 try {
	        	session.getAttribute("username");
	        }catch(Exception n) {
	        	return "login_page";
	        }
		return "service_page";
	}
	@RequestMapping(value="/personal_page.do",method= {RequestMethod.GET})
	public String personalpage() {
	        try {
	        	session.getAttribute("username");
	        }catch(Exception n) {
	        	return "login_page";
	        }
		return "personal_page";
	}

		// 注册
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
				modelAndView.setViewName("register_fail");
				modelAndView.addObject("msg", msg + "pass:" + usr.getPassword() + "reppass:" + repassword);
				break;
			}
			default: {
				String msg = "注册成功";
				System.out.println(
						msg + " username:" + usr.getUsername() + " pass:" + usr.getPassword() + "  reppass:" + repassword);
				modelAndView.setViewName("register_success");
				modelAndView.addObject("msg",usr.getUsername());
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
			
			
			 session =request.getSession();
			
			User user= new User();
			user.setUsername(username);
			user.setPassword(password);
			user = userInfoService.findlogin(user);
			
			
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
        //验证用户信息
		@RequestMapping(value="modifyUserInfo.do",method= {RequestMethod.POST,RequestMethod.GET})
		ModelAndView modifyUserInfo(@ModelAttribute("form") User usr) {
			ModelAndView modelAndView=new ModelAndView();
              
			Integer userid=(Integer)request.getSession().getAttribute("userid");
			if(userid!=null) {
				usr.setUserid(userid.intValue());
			}
			boolean result = userInfoService.modifyUserInfo(usr);

			modelAndView.setViewName("personal_page");
			return modelAndView;
		}
	  
	
     @RequestMapping(value="free.do",method={RequestMethod.GET,RequestMethod.POST})
     public ModelAndView free() {//进入自由搭配页面
    	 ModelAndView m=new ModelAndView();
    	 try {
    	      session.getAttribute("username");    	    		
    		 List<Host>it=freeOrderDao.findHostAll();
        	 List<Camera> ca=freeOrderDao.findCameraAll();
        	 List<WeddingGown> we=freeOrderDao.findWeddingGownAll();
        	  List<UsherCar> uc=freeOrderDao.findUsherCarAll();
        	  List<MainCar> ma=freeOrderDao.findMainCarAll();
        	  List<Flower> fl=freeOrderDao.findFlowerAll();

        	 m.setViewName("free");
        	 m.addObject("host",it);
        	 m.addObject("camera", ca);
        	 m.addObject("weddingGown", we);
        	 m.addObject("usherCar", uc);
        	 m.addObject("mainCar", ma);
        	 m.addObject("flower", fl);
    	 }catch(Exception n) {
    		 m.setViewName("login_page");
    	 }
    	
        return m;
     }
     //处理自由搭配订单
     @RequestMapping(value="freeProcess.do",method={RequestMethod.GET,RequestMethod.POST})
     public ModelAndView  freeProcess( HttpServletRequest request) throws UnsupportedEncodingException{
     ModelAndView m=new ModelAndView();
     String host = java.net.URLDecoder.decode(request.getParameter("host"),"UTF-8");//需要抛异常
     String camera=java.net.URLDecoder.decode(request.getParameter("camera"),"UTF-8");
     String gown=java.net.URLDecoder.decode(request.getParameter("gown"),"UTF-8");
     String flower=java.net.URLDecoder.decode(request.getParameter("flower"),"UTF-8");
     String maincar=java.net.URLDecoder.decode(request.getParameter("maincar"),"UTF-8");
     String ucar=java.net.URLDecoder.decode(request.getParameter("ucar"),"UTF-8");
    String ucarcount=java.net.URLDecoder.decode(request.getParameter("ucarcount"),"UTF-8");
     System.out.println(host+camera+gown+flower+maincar+ucar+ucarcount);
     Host h=new Host();
   h.setH_name(host);
   int hostprice=freeOrderDao.findHost(h).getH_price();
   Camera c=new Camera();
   c.setCa_name(camera);
   int cameraprice=freeOrderDao.findCamera(c).getCa_price();
   WeddingGown wg=new WeddingGown();
   wg.setWg_style(gown);
   int wgprice=freeOrderDao.findWeddingGown(wg).getWg_price();
   Flower f=new Flower();
   f.setF_name(flower);
   int flowerprice=freeOrderDao.findFlower(f).getF_price();
   MainCar ca= new MainCar();
   ca.setMc_name(maincar);
   int maincarprice=freeOrderDao.findMainCar(ca).getMc_price();
   UsherCar uc=new UsherCar();
   uc.setUc_name(ucar);
   int ucarprice=freeOrderDao.findUsherCar(uc).getUc_price()*Integer.parseInt(ucarcount);
  
    int price=cameraprice+wgprice+flowerprice+maincarprice+hostprice+ucarprice;
  
   FreeOrder fo=new FreeOrder();
   fo.setCa_name(camera);
   fo.setF_name(flower);
   fo.setH_name(host);
   fo.setMc_name(maincar);
   fo.setUc_name(ucar);
   fo.setWg_style(gown);
   fo.setPrice(price);
   fo.setUsername((String)session.getAttribute("username"));
   System.out.println("订单总价格为"+price);
   freeOrderDao.AddFreeOrder(fo);
   fo=freeOrderDao.findFreeOrder(fo);
     m.addObject("result",fo);
     m.setViewName("showOrder");
     return m;
     }
     @RequestMapping(value="fixProcess.do",method={RequestMethod.GET,RequestMethod.POST})
     public ModelAndView fixProcess( HttpServletRequest request) throws UnsupportedEncodingException{
    	 ModelAndView m=new ModelAndView();
         String host = java.net.URLDecoder.decode(request.getParameter("host"),"UTF-8");//需要抛异常
         String camera=java.net.URLDecoder.decode(request.getParameter("camera"),"UTF-8");
         String gown=java.net.URLDecoder.decode(request.getParameter("gown"),"UTF-8");
         String flower=java.net.URLDecoder.decode(request.getParameter("flower"),"UTF-8");
         String maincar=java.net.URLDecoder.decode(request.getParameter("maincar"),"UTF-8");
         String ucar=java.net.URLDecoder.decode(request.getParameter("ucar"),"UTF-8");

        String price=java.net.URLDecoder.decode(request.getParameter("price"),"UTF-8");
        FreeOrder fo=new FreeOrder();
        fo.setCa_name(camera);
        fo.setF_name(flower);
        fo.setH_name(host);
        fo.setMc_name(maincar);
        fo.setUc_name(ucar);
        fo.setWg_style(gown);
        fo.setPrice(Integer.parseInt(price));
        fo.setUsername((String)session.getAttribute("username"));
        freeOrderDao.AddFreeOrder(fo);
        fo=freeOrderDao.findFreeOrder(fo);
        m.addObject("result",fo);
        m.setViewName("showOrder");
        return m;
     }
     @RequestMapping(value="logout.do",method={RequestMethod.GET,RequestMethod.POST})
     public ModelAndView logout() {
    	 ModelAndView m=new ModelAndView();
    	 session.invalidate();
    	 m.setViewName("index");
    	 return m;
     }
     @RequestMapping(value="login_manage_page.do",method={RequestMethod.GET,RequestMethod.POST})
     public String manage_login() {
    	 return "login_manager_page";
     }
     @RequestMapping(value="login_manage.do",method={RequestMethod.GET,RequestMethod.POST})
     public ModelAndView manager_login() {
    	 ModelAndView m=new ModelAndView();
    	 String managername= request.getParameter("acount");
    	 String managerpw=request.getParameter("passw");
    	 Manager ma=new Manager();
    	 ma.setM_name(managername);;
    	 ma.setM_password(managerpw);   	 
          Manager man=userDao.findManagerByNameAndPassword(ma);   	   
    	 m.addObject("managername", ma.getM_name());
    	 m.setViewName("manage_page");
    	
    	 return m;
     }
     //进入用户管理界面
     @RequestMapping(value="user_manage_page.do",method={RequestMethod.GET,RequestMethod.POST})
     public ModelAndView order_manage_page() {  	
    	 ModelAndView m=new ModelAndView();
    	 m.setViewName("user_manage_page");
    	 return m;
     }
     
     //进入支付界面
     @RequestMapping(value="pay.do",method={RequestMethod.GET,RequestMethod.POST})
     public ModelAndView pay() {
    	 ModelAndView m=new ModelAndView();
    	 int s1=(int)(Math.random()*100);
    	 int s2=(int)(Math.random()*100);
    	 String s3=s1+""+s2;
    	 m.addObject("orderno", s3);
    	 m.setViewName("pay");
    	 return m;
     }
     //处理查询用户信息
     @RequestMapping(value="userinfoprocess.do",method={RequestMethod.GET,RequestMethod.POST})
     public ModelAndView userinfoprocess() {
    	 ModelAndView m=new ModelAndView();
    	 String username=request.getParameter("username");
    	 User u=new User();
    	 u.setUsername(username);
    	 u=userDao.findByname(u);
    	 try {
    	 m.addObject("userid", u.getUserid());
    	 m.addObject("username", u.getUsername());
    	 m.addObject("usersex", u.getUsex());
    	 m.addObject("usertel", u.getUtel());
    	 }
    	 catch(Exception e) {}
    	
    	 m.setViewName("user_manage_page");
    	 return m;  	 
     }
     @RequestMapping(value="userinfodelete.do",method={RequestMethod.GET,RequestMethod.POST})
     public ModelAndView userinfodelete() {
    	 ModelAndView m=new ModelAndView();
       String username=request.getParameter("username");
       User u=new User();
       u.setUsername(username);
       int userid=userDao.findByname(u).getUserid();
        try {	 
        	userDao.UserDelete(userid);
        	}
        catch(Exception e) {
        	
        }finally {
        	m.setViewName("user_manage_page");
        }
    	 return m;
     }
}
