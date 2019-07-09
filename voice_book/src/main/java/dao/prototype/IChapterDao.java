package dao.prototype;

import java.util.List;

import entity.Chapter;

public interface IChapterDao {
	  void   add(Chapter  chapter);
      List<Chapter>  findbyAlbumId(int  albumId);
      List<Chapter>  findOrderPn(int  albumId);
      List<Chapter>  findPages(int offset,int pagesize);
      Chapter   findById(int id);
      long  pvsumByUserId(int userId);
      long  pvsumByAlbumId(int albumId);
      int  countsByAlbumId(int  albumId);
}
