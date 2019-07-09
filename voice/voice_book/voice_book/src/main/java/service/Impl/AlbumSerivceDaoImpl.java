package service.Impl;


import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.prototype.IAlbumDao;
import dao.prototype.IChapterDao;
import dao.prototype.IPersonDao;
import entity.Album;
import entity.Person;
import entity.dto.PersonDTO;
import service.prototype.IAlbumService;

/**
 * 专辑 的业务层
 * 
 * @author zzc
 *
 */
@Service("albumService")
public class AlbumSerivceDaoImpl implements IAlbumService {
	@Autowired
	private IAlbumDao albumDao;
	@Autowired
	private IChapterDao chapterDao;
	@Autowired
	private IPersonDao personDao;
  //上传
	@Override
	public void upload(Album album) {
		
          albumDao.saveOrUpdate(album);
	}
    //下架
	@Override
	public void Shelves(int id) {
		
		 albumDao.delete(id);
	}

	@Override
	public Album findAlbum(int id) {
		
		return albumDao.findById(id);
	}

	@Override
	public List<Album> findAllByUserId(int userId) {
		
		return albumDao.findAllByUserId(userId);
	}

	@Override
	public List<Album> findAllByCatagory(int catagoryId) {
		
		return albumDao.findAllByCatagory(catagoryId);
	}
	@Override
	public PersonDTO personDto(int userId) {
		

		   long   chapterNumber=chapterDao.pvsumByUserId(userId);
			long    albumNumber=albumDao.countByUserId(userId);
			
		Person person = personDao.findByUserId(userId);
		PersonDTO   per = new  PersonDTO(person.getId(),person.getHeader(),
				person.getNickName(),albumNumber,chapterNumber,person.getFans(),person.getSignature(),person.getAnchorInfo());
		
		return per;
	}
	@Override
	public List<Album> findAllDcon(int userId,int albumId) {
		
		List<Album> albums = albumDao.findAllByUserId(userId);
		  Iterator<Album> iterator = albums.iterator();  
          while(iterator.hasNext()) {  
       	   Album album2 = iterator.next();  
              if(album2.getId()==albumId) {  
                  iterator.remove();  
              }  
          }
		return albums;
	}
	@Override
	public List<Album> findAllAlbum() {
	 List<Album> albums = new ArrayList<Album>();
	 albums=albumDao.listAlbums();
		return albums;
	}

}
