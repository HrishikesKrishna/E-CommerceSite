package com.niit.EcommerceBackend.dao;

import java.util.List;

import com.niit.EcommerceBackend.models.Supplier;

public interface SupplierDao {
	void updateProductById();
	List<Supplier> getAllProducts();
	
	
	
	
	Supplier getProductById();
}
