package com.anjali.oem.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.anjali.oem.model.User_I;
import com.anjali.oem.repository.UserIssueRepository;


public class UserIssueServiceImpl implements UserIssueService{

	@Autowired
    private UserIssueRepository userRepository;
	
	@Override
	public void save(User_I user) {
		userRepository.save(user);
	}

}
