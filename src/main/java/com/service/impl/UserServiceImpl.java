package com.service.impl;

import org.springframework.transaction.annotation.Transactional;

import com.dao.UserDAO;
import com.domain.User;
import com.service.UserService;
@Transactional
public class UserServiceImpl implements UserService {
	private UserDAO userDAO;
	
	public UserDAO getUserDAO() {
		return userDAO;
	}

	public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}


	public boolean create(User user) {
		return userDAO.create(user);
	}

	public User findIdandPassword(User user) {
		return userDAO.findIdandPassword(user);
	}

	public boolean update(User user) {
		return userDAO.update(user);
	}

}
