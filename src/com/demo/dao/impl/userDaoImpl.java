package com.demo.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import com.demo.dao.userDao;
import com.demo.entities.User;

public class userDaoImpl extends HibernateDaoSupport implements userDao {

	
	@Override
	public User find(User user) {
		User firstuser = new User();
		String hql = "from User u where u.username ='"+user.getUsername()+"' and u.password ='"+user.getPassword()+"'";
		List<User> userList = (List<User>) this.getHibernateTemplate().find(hql);
		if(userList.size()>0){
			firstuser = userList.get(0);
		}
		return firstuser;
	}

	@Override
	public void save(User user) {
		this.getHibernateTemplate().save(user);
	}

}
