package com.niit.EcommerceBackend.daoimpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.EcommerceBackend.dao.CartDao;
import com.niit.EcommerceBackend.models.Cart;
import com.niit.EcommerceBackend.models.Product;

@Repository("CartDaoImpl")
public class CartDaoImpl implements CartDao{
	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Autowired
	public CartDaoImpl(SessionFactory sessionFactory) {
		this.sessionFactory=sessionFactory;
	}

	public Product getprobyid(int id) {
		// TODO Auto-generated method stub
		Session ssn=sessionFactory.openSession();
		Transaction t=ssn.getTransaction();
		t.begin();
		Product p=(Product)ssn.get(Product.class, id);
		t.commit();
		ssn.close();
		
		return p;
	}

	public void addToCart(Cart c) {
		// TODO Auto-generated method stub
		Session ssn=sessionFactory.openSession();
		Transaction t=ssn.getTransaction();
		t.begin();
		ssn.save(c);
		t.commit();
		ssn.close();
		
	}

	public List<Cart> getCartByUser(String username) {
		// TODO Auto-generated method stub
		Session ssn=sessionFactory.openSession();
		Transaction t=ssn.getTransaction();
		t.begin();
		Query q=ssn.createQuery("from Cart where username='"+username+"'");//check in table CART column USERNAME where value is username if not mapped dont use column name as username,use class attribute 
		//give multiple quotes for a query involving string
		List<Cart> ct=(List<Cart>)q.list();
		t.commit();
		ssn.close();
		return ct;
	
	}

	public Cart getCartById(int id) {
		// TODO Auto-generated method stub
		Session ssn=sessionFactory.openSession();
		Transaction t=ssn.getTransaction();
		t.begin();
		Cart c=(Cart)ssn.get(Cart.class,id);
		t.commit();
		ssn.close();
		return c;
				
		
	}

	public void updateCart(Cart id) {
		// TODO Auto-generated method stub
		Session ssn=sessionFactory.openSession();
		Transaction t=ssn.getTransaction();
		t.begin();
		ssn.update(id);
		t.commit();
		ssn.close();
	}

	public void deleteCart(int id) {
		// TODO Auto-generated method stub pass id as cart object
		Session ssn=sessionFactory.openSession();
		Transaction t=ssn.getTransaction();
		t.begin();
		Cart c =(Cart)ssn.get(Cart.class, id);
		ssn.delete(c);
		t.commit();
		ssn.close();
	}

	public void updateQuantity(int cartid, int qty) {
		// TODO Auto-generated method stub
		Session ssn=sessionFactory.openSession();
		Transaction t=ssn.getTransaction();
		t.begin();
		Query q=ssn.createQuery("update Cart set quantity="+qty+"where id="+cartid);
		q.executeUpdate();
		t.commit();
		ssn.close();
		
	}
	

}
