package service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.prototype.IUserDao;
import entity.User;
import service.prototype.IUserService;

@Service
public class UserServiceImpl implements IUserService {
	
	@Autowired
	private IUserDao userDao;

	@Override
	public void createUser(User user) {
		userDao.add(user);
		
	}

	@Override
	public User findByUserName(String userName) {
		User user = new User();
		user=userDao.findByUserName(userName);
		return user;
	}

}
