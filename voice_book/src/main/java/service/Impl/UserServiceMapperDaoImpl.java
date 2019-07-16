package service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import entity.User;
import mapper.UserMapper;
import service.prototype.IUserServiceMapper;

@Service
public class UserServiceMapperDaoImpl  implements IUserServiceMapper{

	@Autowired
	private UserMapper userMapper;
	
	@Override  //业务方法
	@Transactional  //--加标注表示该方法需要事务处理
	public void testTransactions() {
		//1.步骤一 step 1
		User user = new User();
		user.setUsername("田七");
		user.setPassword("123456");
		userMapper.save(user);
		
		//--constructor exception 构造异常
		int i= 3/0;
		
		// Step 2
		
		
	}

}
