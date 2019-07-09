package service.prototype;

import java.util.List;

import entity.Audio;
import entity.Chapter;

public interface IChapterService {
	void   saveChapter(Chapter chapter,String  uuid);
	void   saveAudio(Audio audio);
	 List<Chapter>  findChapters(int  albumId);
     List<Chapter>  findOrderPn(int  albumId);
     List<Chapter>  findPages(int offset,int pagesize);
	  Chapter    findById(int id);
	  long    pvsumByUserId(int userId);
	  long    pvsumByAlbumId(int albumId);
	  List<Chapter>  findrelachapters(int albumId,int chapterId);
	  
} 
