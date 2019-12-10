package com.anjali.oem.service;

import com.anjali.oem.model.User;

public interface UserService {

	 void save(User user);

	    User findByUsername(String username);
	    
	    
	}