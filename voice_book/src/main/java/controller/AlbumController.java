package controller;


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
import entity.dto.PersonDTO;
import service.prototype.IAlbumService;
import service.prototype.IAudioService;
import service.prototype.IChapterService;
import service.prototype.IPersonService;
import util.DateUtil;

@Controller
public class AlbumController {
       @Autowired 
       private   IAlbumService albumService;
       @Autowired 
       private   IPersonService  personService;
       @Autowired 
       private   IChapterService  chapterService;
       @Autowired 
       private   IAudioService  audioService;
       @RequestMapping("/showAlbum")
       public ModelAndView   showAlbum(HttpServletRequest request){
    	  
    	   int   albumId=0;
    	  if(request.getParameter("albumId")!=null){
    		  albumId=Integer.parseInt(request.getParameter("albumId"));
    	  }
    	  
    	  
    	   Album album = albumService.findAlbum(albumId);
    	   int  userId=album.getUser_id();
    	
    	   
    	   
    	   //查找某人所有的专辑
           List<Album>   albums = albumService.findAllDcon(userId,albumId);
          
           request.setAttribute("albums", albums);
           //章节
    	   List<Chapter>  chapters = chapterService.findChapters(albumId);
    	   //推荐章节
    	   List<Chapter>  recommendchapters = chapterService.findOrderPn(albumId);
           
           if(!chapters.isEmpty())
           { 
        	   long pvsum = chapterService.pvsumByAlbumId(albumId);
           request.setAttribute("pvsum", pvsum);
           }
    	  
    	   
    	 	 //查找作者信息
           PersonDTO author = albumService.personDto(userId);
           System.out.println(recommendchapters);
    	   request.setAttribute("album", album);
    	   request.setAttribute("recommendchapters", recommendchapters);
     System.out.println(chapters);
    	   request.setAttribute("chapters", chapters);
    	  
    	   request.setAttribute("author", author);
    	   ModelAndView  mv = new  ModelAndView();
    
    	  
    	   mv.setViewName("voice/showAlbum");
    	   return  mv;
       }  
       @RequestMapping("/showAlbum/showChapter")
       public ModelAndView   showChapter(HttpServletRequest request,HttpSession session){
    	   ModelAndView  mv = new  ModelAndView();
    	   int   albumId=Integer.parseInt(request.getParameter("albumId"));
     	  
    	   Album album = albumService.findAlbum(albumId);
               int  userId=album.getUser_id();
          
              
    	   //查找章节
    	   int   chapterId=Integer.parseInt(request.getParameter("chapterId"));
    	   Chapter  chapter = chapterService.findById(chapterId);
    	              
    	              long pvsum = chapterService.pvsumByAlbumId(albumId);
    	              //查找作者信息
    	              PersonDTO author = albumService.personDto(userId);
    	       	   System.out.println(author);
    	   Date   updateTime=chapter.getUploadTime();
      	  String  formatparse="yyyy-MM-dd HH:mm:ss";
      	      Date Dateparse = DateUtil.parseDate(formatparse, DateUtil.formatDate(updateTime, formatparse));
      	    String newTime  =DateUtil.formatDate(Dateparse, formatparse);
      	   //相关声音 
      	  List<Chapter> relaChapters = chapterService.findrelachapters(albumId,chapterId);
      	  
      	  	Audio audio=audioService.findById(chapter.getAudioId());
      	
      	   request.setAttribute("relaChapters", relaChapters);
      	   request.setAttribute("newtime", newTime);
    	   request.setAttribute("chapter", chapter);
    	   request.setAttribute("pvsum", pvsum);
    	   request.setAttribute("album", album);

    	   request.setAttribute("author", author);
    	   mv.addObject("audio",audio);
    	   mv.addObject("author",author);
    	   System.out.println(audio);
    	   
    	   session.getAttribute("person");
    	   session.setAttribute("chapter", chapter);
    	   mv.setViewName("voice/showChapter");
    	   
    	   return  mv;
       }  
   /*   @RequestMapping("/index")
       public ModelAndView   showIndex(HttpServletRequest request){
    	   ModelAndView  mv = new  ModelAndView();
    	   List<Album> albums =  albumService.findAllAlbum(); 
    	   request.setAttribute("albums", albums);
	   		mv.setViewName("voice/homepage");
    	   return  mv;
       }   */  
       
       
}
