package com.niit.EcommerceBackend.dao;

import java.util.List;

import com.niit.EcommerceBackend.models.User;

public interface UserDao {
	void updateProductById();
	List<User> getAllProducts();
	
	
	
	
	User getProductById();

}
