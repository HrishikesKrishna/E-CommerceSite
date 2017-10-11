package com.niit.EcommerceBackend.dao;


	import java.util.List;
import com.niit.EcommerceBackend.models.Product;
	


	public interface ProductDao{
		void saveProduct(Product p);
		public void updateProduct(Product id);
		public void deleteProduct(int id);
		public Product getprobyid(int id);
		public List<Product>getAllProducts();
		
}
