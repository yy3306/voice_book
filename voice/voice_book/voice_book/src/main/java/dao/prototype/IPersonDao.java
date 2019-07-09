package dao.prototype;

import java.util.List;

import entity.Person;

public interface IPersonDao {
	//添加信息
	void add(Person person);
	
	//根据id查询
	Person findByUserId(int userId);
	
	//修改信息
	void update(Person person);
	//设置头像
	void setHeader(Person person);
	
	List<Person> findAll();

}
