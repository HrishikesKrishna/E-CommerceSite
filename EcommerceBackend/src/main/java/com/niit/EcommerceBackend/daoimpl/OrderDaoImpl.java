package com.niit.EcommerceBackend.daoimpl;


import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.EcommerceBackend.dao.OrderDao;
import com.niit.EcommerceBackend.models.Order;

@Repository("OrderDaoImpl")
public class OrderDaoImpl implements OrderDao{

	@Autowired
	private SessionFactory sessionFactory;
	
	public void saveOrder(Order o) {
		// TODO Auto-generated method stub
		Session ssn=sessionFactory.openSession();
		Transaction t=ssn.getTransaction();
		t.begin();
		ssn.save(o);
		t.commit();
		ssn.close();
		
		
		
	}

	public Order getorderbyusername(String username) {
		// TODO Auto-generated method stub
		Session ssn=sessionFactory.openSession();
		Transaction t=ssn.getTransaction();
		t.begin();
		Query q=ssn.createQuery("from Order where email='"+username+"'");
		int size=q.list().size();
		Order or=(Order)q.list().get(size-1);
		t.commit();
		ssn.close();
		return or;
		 
		}


}
