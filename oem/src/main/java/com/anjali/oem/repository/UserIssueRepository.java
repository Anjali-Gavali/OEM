package com.anjali.oem.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.anjali.oem.model.User_I;

public interface UserIssueRepository extends JpaRepository<User_I, Long> {
	
	

}
