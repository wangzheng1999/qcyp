package com.action;

import com.domain.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.service.*;

public class UserAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 3954317569871963915L;
	private User user;
	private String EOFR;
	private UserService userService;

	public String getEOFR() {
		return EOFR;
	}

	public void setEOFR(String eOFR) {
		EOFR = eOFR;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	// 登录
	public String login() {
		User exituser = userService.findIdandPassword(user);
		if (exituser == null) {
			// 登录失败
			EOFR = "EOFR";
			return INPUT;
		} else {
			// 登录成功
			ActionContext.getContext().getSession().put("exituser", exituser);
			return SUCCESS;
		}
	}

	// 注册
	public String reg() {
		if (userService.create(user)) {
//			this.user = this.userService.findIdandPassword(user);
			return SUCCESS;
		} else
			return INPUT;
	}

	// 注销
	public String exit() {
		ActionContext.getContext().getSession().remove("exituser");
		return SUCCESS;
	}

	// 更新个人信息
	public String update() {
		userService.update(user);
		User exituser = userService.findIdandPassword(user);
		ActionContext.getContext().getSession().put("exituser", exituser);
		return SUCCESS;
	}
	
}
