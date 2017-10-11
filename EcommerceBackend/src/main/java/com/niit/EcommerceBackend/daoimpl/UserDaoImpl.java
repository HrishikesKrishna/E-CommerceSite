package com.niit.EcommerceBackend.daoimpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.EcommerceBackend.dao.UserDao;
import com.niit.EcommerceBackend.models.User;

@Repository("UserDaoImpl")
public class UserDaoImpl implements UserDao {
@Autowired
SessionFactory sessionFactory;

@Autowired
public UserDaoImpl(SessionFactory sessionFactory)
{
	this.sessionFactory=sessionFactory;
}

	public UserDaoImpl() {
	
}

	public void saveUser(User u) {
		// TODO Auto-generated method stub
		Session ssn=sessionFactory.openSession();
		Transaction t=ssn.getTransaction();
		t.begin();
		ssn.save(u);
		t.commit();
		ssn.close();
		
	}





}
