package com.niit.EcommerceBackend.dao;

import java.util.List;

import com.niit.EcommerceBackend.models.Category;

public interface CategoryDao {
	void updateProductById();
	List<Category> getAllProducts();
	
	
	
	
	Category getProductById();
}


