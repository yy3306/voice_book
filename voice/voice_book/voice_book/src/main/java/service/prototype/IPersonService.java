package service.prototype;

import entity.Person;
import entity.User;

public interface IPersonService {
	void addInfo(Person person);
	Person findByUserId(int userId);
	
	//修改信息
	void update(Person person); 
	//设置头像
	void setHeader(Person person);
}
