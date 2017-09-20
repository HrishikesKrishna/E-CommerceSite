package com.niit.EcommerceBackend.dao;


	import java.util.List;
import com.niit.EcommerceBackend.models.Product;
	


	public interface ProductDao{
		void updateProductById();
		List<Product> getAllProducts();
		
		
		
		
		Product getProductById();
}
