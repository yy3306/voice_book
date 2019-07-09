package controller;


import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import entity.Album;
import entity.Audio;
import entity.Chapter;
import entity.Comment;
import entity.Person;
import entity.dto.PersonDTO;
import service.prototype.IAlbumService;
import service.prototype.IAudioService;
import service.prototype.IChapterService;
import service.prototype.ICommentService;
import service.prototype.IPersonService;
import util.DateUtil;

@Controller
public class CommentController {
       @Autowired 
       private   ICommentService commentService;
       @Autowired 
       private   IChapterService  chapterService;
       @Autowired 
       private   IAudioService  audioService;
       @Autowired 
       private   IAlbumService albumService;
       @Autowired 
       private   IPersonService  personService;
       @RequestMapping("/showAlbum/comment")
       public ModelAndView   Commnet(HttpServletRequest request,HttpSession session) throws UnsupportedEncodingException{
    	   request.setCharacterEncoding("UTF-8");  
    	   ModelAndView  mv = new  ModelAndView();
    	   String content = new String( request.getParameter("content").getBytes("ISO-8859-1"),"UTF-8");	
    	   //String timeNow =request.getParameter("timeNow");
    	   Person person =(Person)session.getAttribute("person");
    	   Chapter chapter2 =(Chapter)session.getAttribute("chapter");
    	   Comment comment = new Comment();
    	   
    	   comment.setUserId(person.getUserId());
    	   comment.setChapterId(chapter2.getId());
    	   comment.setContent(content);
    	   comment.setCommentTime(new Date());
    	   
    	  System.out.println(comment);
    	  commentService.addComment(comment);
    	  	  
    	   mv.setViewName("voice/showChapter");
    	   return  mv;
       }  
       @RequestMapping("/reply")
       public ModelAndView   Reply(HttpServletRequest request,HttpSession session){
    	   ModelAndView  mv = new  ModelAndView();
    	  
    	   mv.setViewName("voice/showChapter");
    	   
    	   return  mv;
       }  
  
       
       
}
