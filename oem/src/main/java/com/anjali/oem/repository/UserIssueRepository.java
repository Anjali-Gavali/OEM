package com.anjali.oem.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.anjali.oem.model.Request;

public interface UserIssueRepository extends JpaRepository<Request, Long> {
	
	

}
