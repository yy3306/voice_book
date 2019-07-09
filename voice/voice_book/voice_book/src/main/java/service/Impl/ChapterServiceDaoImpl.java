package service.Impl;


import java.io.File;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import org.jaudiotagger.audio.AudioFileIO;
import org.jaudiotagger.audio.mp3.MP3AudioHeader;
import org.jaudiotagger.audio.mp3.MP3File;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.prototype.IAudioDao;
import dao.prototype.IChapterDao;
import entity.Audio;
import entity.Chapter;
import service.prototype.IChapterService;
@Service
public class ChapterServiceDaoImpl  implements IChapterService{
         @Autowired
      private  IChapterDao   chapterDao;
         @Autowired
         private  IAudioDao   audioDao;
	@Override
	public List<Chapter> findChapters(int albumId) {
		
		return chapterDao.findbyAlbumId(albumId);
	}

	@Override
	public List<Chapter> findOrderPn(int albumId) {
		
		return chapterDao.findOrderPn(albumId);
	}

	@Override
	public List<Chapter> findPages(int offset, int pagesize) {
		
		return chapterDao.findPages(offset, pagesize);
	}

	@Override
	public Chapter findById(int id) {
		
		return chapterDao.findById(id);
	}

	@Override
	public long pvsumByUserId(int userId) {
	
		return chapterDao.pvsumByUserId(userId);
	}

	@Override
	public long pvsumByAlbumId(int albumId) {
	
		return chapterDao.pvsumByAlbumId(albumId);
	}

	@Override
	public List<Chapter> findrelachapters(int albumId,int chapterId) {
		
		System.out.println(albumId);
		List<Chapter> chapters = chapterDao.findbyAlbumId(albumId);
		          Iterator<Chapter> iterator = chapters.iterator();
		          while(iterator.hasNext()){
		        	  Chapter   chapter=iterator.next();  
		        	  if(chapter.getId()<chapterId-1||chapter.getId()==chapterId||chapter.getId()>=chapterId+9){
		        		  iterator.remove();
		        	  }
		        	  
		          }
		
		
		return chapters;
	}

	@Override
	public void saveChapter(Chapter chapter,String uuid) {
		
		Audio  audio = audioDao.findByUUid(uuid);
		  chapter.setUploadTime(new Date());
		  chapter.setAudioId(audio.getId());
		    int  order=chapterDao.countsByAlbumId(chapter.getAlbum_id())+1;
		    chapter.setOrder(order);
		    File file = new File(audio.getPath());
			try {
				MP3File f = (MP3File)AudioFileIO.read(file);
				MP3AudioHeader audioHeader = (MP3AudioHeader)f.getAudioHeader();
				System.out.println(audioHeader.getTrackLength());	
			} catch(Exception e) {
				e.printStackTrace();
			}

		  chapterDao.add(chapter);
	}

	@Override
	public void saveAudio(Audio audio) {
		
		audioDao.add(audio);
	}

}
