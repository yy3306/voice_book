package dao.impl;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import dao.prototype.IAudioDao;
import entity.Audio;
@Repository
public class AudioDaoJdbcImpl implements  IAudioDao{
     @Autowired     
	private  JdbcTemplate  jt;

          @Override
	public void add(Audio audio) {
		// TODO Auto-generated method stub
		jt.update("insert into  t_audio(name,path,uuid) values(?,?,?)",new Object[]{audio.getName(),audio.getPath(),audio.getUuid()});
	}

		@Override
		public Audio findByUUid(String uuid) {
		
			
			return  jt.queryForObject("select * from t_audio where uuid=?", new Object[]{uuid},new BeanPropertyRowMapper<Audio>(Audio.class));
		}

		@Override
		public Audio findById(int id) {
			
			return  jt.queryForObject("select * from t_audio where id=?", new Object[]{id},new BeanPropertyRowMapper<Audio>(Audio.class));
		}

}
