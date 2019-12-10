package com.anjali.oem.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.anjali.oem.model.User;

public interface UserIssueRepository extends JpaRepository<User, Long> {
	
	

}
