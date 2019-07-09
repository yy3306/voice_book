package dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import dao.prototype.IChapterDao;
import entity.Chapter;
@Repository
public class ChapterDaoJdbcImpl   implements  IChapterDao{
      @Autowired
     private  JdbcTemplate  jt;
	@Override
	public List<Chapter> findbyAlbumId(int  albumId) {
		
		return jt.query("select  * from   t_chapter  where album_id=?", 
				new Object[]{albumId},new  BeanPropertyRowMapper<Chapter>(Chapter.class));
	}

	@Override
	public List<Chapter> findOrderPn(int  albumId) {
		
		 return jt.query("select  * from   t_chapter  where album_id=?  order by playNumber desc limit 3", 
				new Object[]{albumId},new  BeanPropertyRowMapper<Chapter>(Chapter.class));
	}

	@Override
	public List<Chapter> findPages(int offset, int pagesize) {
		
		return null;
	}

	@Override
	public Chapter findById(int id) {
		
		 return jt.queryForObject("select  * from   t_chapter  where id=?", 
					new Object[]{id},new  BeanPropertyRowMapper<Chapter>(Chapter.class));
	}

	@Override
	public long pvsumByUserId(int userId) {
		
		return jt.queryForObject("select count(playNumber) from t_chapter where  user_id=?",
				new Object[]{userId},java.lang.Long.class);
	}

	@Override
	public long pvsumByAlbumId(int albumId) {
		
		return jt.queryForObject("select sum(playNumber) from t_chapter where  album_id=?",
				new Object[]{albumId},java.lang.Long.class);
	}

	@Override
	public void add(Chapter chapter) {
		
		jt.update("insert  into  t_chapter(name,album_id,playNumber,audio_id,duration,order,uploadTime,user_id,chapterInfo)  values(?,?,?,?,?,?,?,?,?)",
				new Object[]{chapter.getName(),chapter.getAlbum_id(),chapter.getPlayNumber(),chapter.getAudioId(),
						chapter.getDuration(),chapter.getOrder(),chapter.getUploadTime(),chapter.getUserId(),chapter.getChapterInfo()});
	}

	@Override
	public int countsByAlbumId(int albumId) {
		
		return jt.queryForObject("select count(0) from t_chapter where  album_id=?",
				new Object[]{albumId},java.lang.Integer.class);
	}

}
