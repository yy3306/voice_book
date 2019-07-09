package dao.prototype;

import java.util.List;

import entity.Album;

public interface IAlbumDao {
        void   saveOrUpdate(Album   album);
        void   delete(int  id);
        Album   findById(int id );
        List<Album>  findAllByUserId(int  userId);
        List<Album>  findAllByCatagory(int  catagoryId);
        long countByUserId(int userId);
       //查询所有专辑
        List<Album>  listAlbums();
        
}
