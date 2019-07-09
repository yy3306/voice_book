package dao.impl;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import dao.prototype.IAlbumDao;
import entity.Album;
import entity.User;
@Repository
public class AlbumDaoSpringImpl    implements  IAlbumDao {
    @Autowired
    private  JdbcTemplate    jt;
	private  DataSource      ds;
	@Override
	public void saveOrUpdate(Album album) {
		
		if(album.getId()==0){
			jt.update("insert into   t_album (name,user_id,introduction,audienceSex,audienceCrowd"
					+ ",isCompleted,isFree,catagory_id,cover,subscribeNumber,isComment,isPublic,authorInf) values(?,"
					+ "?,?,?,?,?,?,?,?,?,?,?)",new Object[]{album.getName(),album.getUser_id(),album.getIntroduction(),
					album.getAudienceSex(),album.getAudienceCrowd(),album.getIsCompleted(),album.getIsFree(),album.getCatagory_id(),
					album.getCover(),album.getSubscibeNumber(),album.getIsComment(),album.getIsPublic(),album.getAuthorInf()});		
		}else{
			jt.update("update   t_album set name=?,user_id=?,introduction=?,audienceSex=?,audienceCrowd=?"
					+ ",isCompleted=?,isFree=?,catagory_id=?,cover=?,subscribeNumber=?,isComment=?,isPublic=?,authorInf=?,pvs=?",new Object[]{album.getName(),album.getUser_id(),album.getIntroduction(),
					album.getAudienceSex(),album.getAudienceCrowd(),album.getIsCompleted(),album.getIsFree(),album.getCatagory_id(),
					album.getCover(),album.getSubscibeNumber(),album.getIsComment(),album.getIsPublic(),album.getAuthorInf(),album.getPvs()});	
		}
	}

	@Override
	public void delete(int id) {
		
		jt.update("delete  from  t_album  where  id =?",new  Object[]{id});
	}

	@Override
	public Album findById(int id) {
		
		return  jt.queryForObject("SELECT * FROM t_album WHERE id=?", new Object[]{id}, new BeanPropertyRowMapper<Album>(Album.class));
	}

	@Override
	public List<Album> findAllByUserId(int userId) {
		
		return jt.query("select  * from  t_album  where  user_id=?",new  Object[]{userId}, new  BeanPropertyRowMapper<Album>(Album.class));
	}

	@Override
	public List<Album> findAllByCatagory(int catagoryId) {
		
		return jt.query("select  * from  t_album  where  catagory_id=?",new  Object[]{catagoryId}, new  BeanPropertyRowMapper<Album>(Album.class));
	}
	@Override
	public long countByUserId(int userId) {
		
		return jt.queryForObject("select count(0) from t_album where  user_id=?",
				new Object[]{userId},java.lang.Long.class);
	}

	@Override
	public List<Album> listAlbums() {
		String sql ="select  * from  t_album ";
		return jt.query(sql, new BeanPropertyRowMapper<Album>(Album.class));
	}

}
