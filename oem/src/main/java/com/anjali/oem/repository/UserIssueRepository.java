package com.anjali.oem.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.anjali.oem.model.Request;
import com.anjali.oem.model.User;

public interface UserIssueRepository extends JpaRepository<Request, Long> {
	
	 Request findByUsername(String username);

}
