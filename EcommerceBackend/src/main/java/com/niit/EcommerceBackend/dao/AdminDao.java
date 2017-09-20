package com.niit.EcommerceBackend.dao;

import java.util.List;

import com.niit.EcommerceBackend.models.Admin;

public interface AdminDao {
	void updateProductById();
	List<Admin> getAllProducts();
	
	
	
	
	Admin getProductById();

}
