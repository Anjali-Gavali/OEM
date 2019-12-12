package com.anjali.oem.service;

import com.anjali.oem.model.Request;


public interface UserIssueService {
	
	 void save(Request user);
	 Request findByUsername(String user);
}
