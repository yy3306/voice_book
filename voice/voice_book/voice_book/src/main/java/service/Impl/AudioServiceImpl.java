package service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import dao.prototype.IAudioDao;

import entity.Audio;
import service.prototype.IAudioService;
@Service
public class AudioServiceImpl implements IAudioService{
	@Autowired
	private IAudioDao audioDao;

	@Override
	public Audio findById(int id) {
	
		return audioDao.findById(id);
	}
	
}
