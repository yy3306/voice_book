package service.prototype;

import java.util.List;

import entity.Album;
import entity.dto.PersonDTO;

/**
 * 专辑  业务接口
 * @author zzc
 *
 */

public interface IAlbumService {
	  //上传
	   void   upload(Album   album);
	   //下架
       void   Shelves(int  id);
       //查找某张专辑
       Album   findAlbum(int id );
       //查找某用户的专辑
       List<Album>  findAllByUserId(int  userId);
       //查找某分类的专辑
       List<Album>  findAllByCatagory(int  catagoryId);
       //查看某人的专辑数量
       PersonDTO personDto(int userId);
       //查找其他的专辑
       List<Album>   findAllDcon(int  userId ,int albumId);
       //查询所有专辑
       List<Album>  findAllAlbum();
       
}
