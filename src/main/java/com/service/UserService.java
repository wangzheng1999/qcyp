package com.service;

import com.domain.User;

public interface UserService {

	boolean create(User user);

	boolean update(User user);

	User findIdandPassword(User user);

}
