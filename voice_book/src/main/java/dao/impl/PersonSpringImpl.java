package dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import dao.prototype.IPersonDao;
import entity.Person;


@Repository
@Component
public class PersonSpringImpl implements IPersonDao {
	
	@Autowired
	private JdbcTemplate jt ;

	@Override
	public void add(Person person) {
		String sql ="insert into t_person(nickname,registTime,phoneNum,user_id) values(?,?,?,?)";
		jt.update(sql, new Object[]{person.getNickName(),person.getRegistTime(),person.getPhoneNum(),person.getUserId()});
		
	}

	@Override
	public List<Person> findAll() {
		
		return null;
	}

	@Override
	public Person findByUserId(int userId) {
		String sql="select * from t_person where user_id=?";
		Person person =null;
		try {
			person = jt.queryForObject(sql, new BeanPropertyRowMapper<Person>(Person.class),new Object[]{userId});
		} catch (EmptyResultDataAccessException e) {
			
			e.printStackTrace();
		}
		
		return person;
	}

	@Override
	public void update(Person person) {
		String sql ="update  t_person set anchorInfo=?,realName=?,sex=?,birth=?,signature=? where id ="+person.getId();
		jt.update(sql, new Object[]{person.getAnchorInfo(),person.getRealName(),person.getSex(),person.getBirth(),person.getSignature()});
		
	}

	@Override
	public void setHeader(Person person) {
		String sql ="update  t_person set header=? where id ="+person.getId();
		jt.update(sql, new Object[]{person.getHeader()});
		
	}



}
