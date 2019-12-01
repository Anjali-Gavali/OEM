package com.anjali.oem.service;

public interface SecurityService {

	String findLoggedInUsername();

    void autoLogin(String username, String password);
}