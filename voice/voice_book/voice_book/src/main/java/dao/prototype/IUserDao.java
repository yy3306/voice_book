package dao.prototype;

import java.util.List;

import entity.User;

public interface IUserDao {
	void add(User user);
	void delete(int id);
	void update(User user);
	//查询所有
	List<User> findAll();
	//根据id查询
	User findById(int id);
	//根据账号查询
	User findByUserName(String userName);
	//分页查询
	List<User> findByPage(int offSet,int pageSize);

}
