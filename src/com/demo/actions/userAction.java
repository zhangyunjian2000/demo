package com.demo.actions;

import com.demo.entities.User;
import com.demo.services.userService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class userAction extends ActionSupport implements ModelDriven<User>{

	private static final long serialVersionUID = 1L;
	
	private userService userService;
	public void setUserService(userService userService) {
		this.userService = userService;
	}
	public userService getUserService() {
		return userService;
	}
	
	public String login(){
		boolean flag = userService.find(user);
		if(flag){
			return SUCCESS;
		}else {
			return INPUT;
		}
	}
	
	public String register(){
		userService.save(user);
		return "register";
	}
	
	private User user;
	@Override
	public User getModel() {
		if(user==null){
			user = new User();
		}
		return user;
	}
	


}
