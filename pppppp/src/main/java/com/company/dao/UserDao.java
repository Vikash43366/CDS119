package com.company.dao;


public interface UserDao {

	boolean addUser(User user);
	boolean isValidUser(String username, String password);
	boolean addProduct(product product);
    boolean addCon(contact con);
    //boolean forget(forgetpass fu);
    		
}
