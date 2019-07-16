package test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


import config.TestConfig;
import entity.User;
import mapper.UserMapper;



@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes=TestConfig.class)
public class TestDemo {
	

	@Autowired
	private UserMapper userMapper;
	
	@Test
	public void testAdd() {
		User user = new User();
		user.setUsername("王五");
		user.setPassword("123");
		userMapper.save(user);
	}

}
