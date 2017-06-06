package com.demo.dao;

import com.demo.entities.User;

public interface userDao {
	public User find(User user);
	public void save(User user);
}
