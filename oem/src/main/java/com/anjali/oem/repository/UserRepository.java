package com.anjali.oem.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.anjali.oem.model.User;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByUsername(String username);

}