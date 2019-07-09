package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import entity.Album;
import entity.Chapter;
import entity.Person;
import entity.User;
import service.prototype.IAlbumService;
import service.prototype.IChapterService;
import service.prototype.IPersonService;
import service.prototype.IUserService;

@Controller

public class UserController {
	@Autowired
	private IUserService userService;
	@Autowired
	private IPersonService personService;
	  @Autowired 
      private   IAlbumService albumService;
	  @Autowired 
      private   IChapterService  chapterService;
	
	@RequestMapping("/toadd")
	public ModelAndView toAdd(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("voice/register");
		return mv ;
	}
	
	@RequestMapping("/add")
	public ModelAndView add(User user,HttpSession session,Person person){
		
		ModelAndView mav = new ModelAndView();
		/*PrintWriter out = response.getWriter();*/
		 if (!(user.getCode().equalsIgnoreCase(session.getAttribute("code").toString()))) {  //忽略验证码大小写
			/*out.print("<script language=\"javascript\">alert('注册失败！验证码不正确');</script>");*/
			 mav.addObject("msg","验证码不正确");
	           mav.setViewName("/voice/register");
	            return mav;
			 
	        }else {
	            //user.setId(UUID.randomUUID().toString());
	           // person.setRegistTime(DateUtil.formatDate(new Date(), "yyyy-MM-dd HH:mm:ss"));       
	        	person.setRegistTime(new Date());
	            try {
	            	System.out.println(user);
	            	
	                userService.createUser(user); 
	                userService.findByUserName(user.getUsername());
	                System.out.println( userService.findByUserName(user.getUsername()));
	                person.setPhoneNum(user.getUsername());
	                user= userService.findByUserName(user.getUsername());
	                System.out.println(person);
	                person.setUserId(user.getId());
	                personService.addInfo(person);
	               
	               mav.addObject("user", user);
	                mav.addObject("msg", "注册成功了，可以去登陆了");
	                mav.setViewName("voice/login");
	                return mav;
	            } catch (Exception e) {
	            	e.printStackTrace();
	            	
	            	
	              mav.addObject("user", null);
	                mav.addObject("msg", "注册失败");
	                mav.setViewName("voice/addfailure");
	                return mav;
	            }
	        }
	

	}
	
	@RequestMapping("/tologin")
	public ModelAndView toLogin(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("voice/login");
		return mv ;
	}
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public ModelAndView check(HttpServletRequest request,HttpServletResponse response,HttpSession session) throws IOException  {
		ModelAndView mv = new ModelAndView();
		
		String userName = request.getParameter("account");
        String password = request.getParameter("password");
        
    	PrintWriter pw = response.getWriter();
    	System.out.println("login:username="+userName+",password="+password);
		 User user = userService.findByUserName(userName);	
		 	
		 session.setAttribute("user", user);
		 
		 System.out.println("login"+user);	 
		try {
			if (user!=null) {
				if (user.getPassword().equals(password)) {
					
					Person person = new Person();
					person.setUserId(user.getId());
					person=personService.findByUserId(person.getUserId());
					 session.setAttribute("person", person);
					 System.out.println("++++"+person);
					pw.write("true");
					List<Album> albums =  albumService.findAllAlbum();
					 Person person2 = new Person();
					 for (Album album : albums) {
						person2=personService.findByUserId(album.getUser_id());
						request.setAttribute("person2", person2);
					}
					
					 mv.addObject("albums",albums);
					 mv.addObject("person",person);
					
					mv.setViewName("voice/homepage");
					
				}else {
					mv.setViewName("voice/addfailure");
				} 
			}else {
				mv.setViewName("voice/addfailure");
			}
		} catch (Exception e) {
			e.printStackTrace();
			mv.setViewName("voice/addfailure");
		}
		return mv ;
	}
	
	@RequestMapping("/register-rule")
	public ModelAndView registerRule(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("voice/register-rule");
		return mv ;
	}
	@RequestMapping("/homepage")
	public ModelAndView homePage(User user,HttpSession session,Person person,HttpServletRequest request){ 
		
		ModelAndView mv = new ModelAndView();
		user = (User)session.getAttribute("user");
		System.out.println(user);
		System.out.println(person);
		 List<Album> albums =  albumService.findAllAlbum();
		 Person person2 = new Person();
		 for (Album album : albums) {
			person2=personService.findByUserId(album.getUser_id());
			request.setAttribute("person2", person2);
		}
		
		 request.setAttribute("albums", albums);
		 mv.addObject(albums);
		// mv.addObject(person2);
		mv.setViewName("voice/homepage");
		return mv ;
	}
	@RequestMapping("/my")
	public ModelAndView MY(HttpSession session){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("voice/my");
		return mv ;
	}
	@RequestMapping("/tohomepage")
	public ModelAndView tohomepage(HttpSession session,HttpServletRequest request){
		ModelAndView mv = new ModelAndView();
		session.getAttribute("user");
		
		session.getAttribute("person");
		
		 List<Album> albums =  albumService.findAllAlbum();
		 Person person2 = new Person();
		 for (Album album : albums) {
			person2=personService.findByUserId(album.getUser_id());
			request.setAttribute("person2", person2);
		}
		
		 request.setAttribute("albums", albums);
		 mv.addObject("albums", albums);
		mv.setViewName("voice/homepage");
		return mv ;
	}
	@RequestMapping("/tosetting")
	public ModelAndView personalSetting(HttpServletRequest request,HttpServletResponse response,HttpSession session,Person person) throws UnsupportedEncodingException{
		ModelAndView mv = new ModelAndView();
		request.setCharacterEncoding("UTF-8");
		//String name = new String(request.getParameter("name").getBytes("ISO-8859-1"), "UTF-8");
		person=(Person)session.getAttribute("person");
		String anchorInfo = new String(request.getParameter("personalSignature").getBytes("ISO-8859-1"),"UTF-8");
		String realName = new String( request.getParameter("realName").getBytes("ISO-8859-1"),"UTF-8");	
		String signature = new String(request.getParameter("signature").getBytes("ISO-8859-1"),"UTF-8");
		String sex = request.getParameter("gender");
		String birthYear = request.getParameter("birthYear");
		String birthMonth = request.getParameter("birthMonth");
		String birthDay = request.getParameter("birthDay");
		String birth=birthYear+"-"+birthMonth+"-"+birthDay;
		person.setAnchorInfo(anchorInfo);
		person.setRealName(realName);
		person.setSex(sex);
		person.setBirth(birth);
		person.setSignature(signature);
		System.out.println("setting"+person);
		personService.update(person);
		 session.setAttribute("person", person);
			//传入对象
	    mv.addObject("person",person);
		mv.setViewName("voice/personal-setting");
		return mv ;
	}
	@RequestMapping("/setheader")
	public ModelAndView setheader(HttpServletRequest request,HttpServletResponse response,HttpSession session,Person person) throws UnsupportedEncodingException{
		ModelAndView mv = new ModelAndView();
		request.setCharacterEncoding("UTF-8");
		session.getAttribute("user");
		
		person=(Person)session.getAttribute("person");
		String header = new String(request.getParameter("file").getBytes("ISO-8859-1"),"UTF-8");
		person.setHeader("/book/assets/imgs/"+header);
		personService.setHeader(person);
		System.out.println("setHeader"+person);
		 session.setAttribute("person", person);
		
		mv.setViewName("voice/personal-setting");
		
		//传入对象
        mv.addObject("person",person);
		
		return mv ;
	}
	@RequestMapping("/setting")
	public ModelAndView setting(HttpServletRequest request,HttpServletResponse response,HttpSession session) throws UnsupportedEncodingException{
		ModelAndView mv = new ModelAndView();
		request.setCharacterEncoding("UTF-8");
		session.getAttribute("user");
		
		session.getAttribute("person");
		
		mv.setViewName("voice/personal-setting");
		return mv ;
	}
	
	@RequestMapping("/personal")
	public ModelAndView Personal(HttpSession session,HttpServletRequest request){
		ModelAndView mv = new ModelAndView();
		User user =(User)session.getAttribute("user");
		session.getAttribute("person");
		 
 	   //查找某人所有的专辑
        List<Album>   albums = albumService.findAllByUserId(user.getId());
        System.out.println(albums);
        for (Album album : albums) {
        	 //章节
      	   List<Chapter>  chapters = chapterService.findChapters(album.getId());
      	  request.setAttribute("chapters", chapters);
		}
       
        request.setAttribute("albums", albums);
		mv.setViewName("voice/PersonalPage");
		return mv ;
	}
	@RequestMapping("/anchor")
	public ModelAndView Anchor(HttpSession session,HttpServletRequest request){
		ModelAndView mv = new ModelAndView();
		
		Person anchor =personService.findByUserId(3);
		
		System.out.println(anchor);
		 
 	   //查找某人所有的专辑
        List<Album>   albums = albumService.findAllByUserId(anchor.getUserId());
        System.out.println(albums);
        for (Album album : albums) {
        	 //章节
      	   List<Chapter>  chapters = chapterService.findChapters(album.getId());
      	  request.setAttribute("chapters", chapters);
		}
       
        request.setAttribute("albums", albums);
        mv.addObject("anchor", anchor);
		mv.setViewName("voice/PersonalPage");
		return mv ;
	}
}
