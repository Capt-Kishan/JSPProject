package com.psit.dao;

import com.psit.model.User;

public interface UserDao {

	boolean isValidUser(String username, String password);

	boolean addUser(User user);

}
