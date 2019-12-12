package com.anjali.oem.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.anjali.oem.model.Request;
import com.anjali.oem.model.User;
import com.anjali.oem.repository.UserIssueRepository;

@Service
public class UserIssueServiceImpl implements UserIssueService{

	@Autowired
    private UserIssueRepository userRepository;
	
	 @Override
	    public Request findByUsername(String username) {
	        return userRepository.findByUsername(username);
	    }
	    
	
	@Override
	public void save(Request user) {
		userRepository.save(user);
	}

}
