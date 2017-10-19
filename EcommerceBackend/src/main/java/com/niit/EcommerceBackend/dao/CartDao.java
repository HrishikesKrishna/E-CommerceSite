package com.niit.EcommerceBackend.dao;

import java.util.List;

import com.niit.EcommerceBackend.models.Cart;
import com.niit.EcommerceBackend.models.Product;

public interface CartDao  {
	public Product getprobyid(int id);
	public void addToCart(Cart c);
	public List<Cart> getCartByUser(String username);
	public Cart getCartById(int id);
	public void updateCart(Cart id);
	public void deleteCart(int id);
	public void updateQuantity(int cartid,int qty);
	
	
}
