package com.dao;

import com.domain.User;

public interface UserDAO {

	User findIdandPassword(User user);

	boolean create(User user);
	
	boolean update(User user);
	
}
