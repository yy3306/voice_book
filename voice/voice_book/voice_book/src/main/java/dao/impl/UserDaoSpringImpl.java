package dao.impl;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import dao.prototype.IUserDao;
import entity.User;

@Repository
@Component
public class UserDaoSpringImpl implements IUserDao{
	@Autowired
	private JdbcTemplate jt ;

	@Override
	public void add(User user) {
		String sql ="insert into t_user(username,password,id) values(?,?,?)";
		jt.update(sql, new Object[]{user.getUsername(),user.getPassword(),user.getId()});
		
	}

	@Override
	public void delete(int id) {
		
		
	}

	@Override
	public void update(User user) {
		
		
	}

	@Override
	public List<User> findAll() {
		String sql="select * from t_user";
		return jt.query(sql, new BeanPropertyRowMapper<User>(User.class));
	}

	@Override
	public User findById(int id) {
		User user = new User();
		String sql ="select * from t_user where id=?";
		user = jt.queryForObject(sql, new BeanPropertyRowMapper<User>(User.class),new Object[]{id});
		
		return user;
	}

	@Override
	public User findByUserName(String userName) {
		String sql="select * from t_user where userName=?";
		User u =null;
		try {
			u = jt.queryForObject(sql, new BeanPropertyRowMapper<User>(User.class),new Object[]{userName});
		} catch (EmptyResultDataAccessException e) {
			
			e.printStackTrace();
		}
		
		return u;
		/*return jt.queryForObject("select * from t_user where userName=?", new Object[]{userName},new  BeanPropertyRowMapper<User>(User.class));*/
	}

	@Override
	public List<User> findByPage(int offSet, int pageSize) {
	
		return null;
	}

}
