package com.niit.EcommerceBackend.daoimpl;


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


}
