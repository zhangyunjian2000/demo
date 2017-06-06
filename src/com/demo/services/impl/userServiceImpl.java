package com.demo.services.impl;

import com.demo.dao.userDao;
import com.demo.entities.User;
import com.demo.services.userService;

public class userServiceImpl implements userService {
	private userDao userDao;
	public void setUserDao(userDao userDao) {
		this.userDao = userDao;
	}
	public userDao getUserDao() {
		return userDao;
	}
	@Override
	public boolean find(User user) {
		User firstuser = this.userDao.find(user);
		if(firstuser.getUsername()!=null){
			return true;
		}else {
			return false;
		}
	}

	@Override
	public void save(User user) {
		userDao.save(user);
	}

}
