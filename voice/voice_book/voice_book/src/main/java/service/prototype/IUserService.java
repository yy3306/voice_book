package service.prototype;

import entity.User;

public interface IUserService {
	void createUser(User user);
	User findByUserName(String userName);
	
}
