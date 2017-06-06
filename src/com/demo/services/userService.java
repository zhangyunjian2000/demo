package com.demo.services;

import com.demo.entities.User;

public interface userService {
	public boolean find(User user);
	public void save(User user);
}
