package service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.prototype.IPersonDao;
import entity.Person;
import service.prototype.IPersonService;

@Service
public class PersonServiceImpl implements IPersonService {
	@Autowired
	private IPersonDao personDao;

	@Override
	public void addInfo(Person person) {
		personDao.add(person);
		
	}

	@Override
	public Person findByUserId(int userId) {
		
		Person person =personDao.findByUserId(userId);
		return person;
	}

	@Override
	public void update(Person person) {
		
		personDao.update(person);
	}

	@Override
	public void setHeader(Person person) {
		personDao.setHeader(person);
		
	}

}
