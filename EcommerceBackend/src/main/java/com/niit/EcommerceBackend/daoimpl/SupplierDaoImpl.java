package com.niit.EcommerceBackend.daoimpl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.EcommerceBackend.dao.SupplierDao;
import com.niit.EcommerceBackend.models.Category;
import com.niit.EcommerceBackend.models.Supplier;
@SuppressWarnings("unused")
@Repository("SupplierDaoImpl")

	public class SupplierDaoImpl implements SupplierDao{

@Autowired
SessionFactory sessionFactory;
@Autowired
public SupplierDaoImpl(SessionFactory sessionFactory)
{
	this.sessionFactory=sessionFactory;
}

public SupplierDaoImpl() {
	
}

public void saveSupplier(Supplier s)
{
	Session ssn=sessionFactory.openSession();
	Transaction t=ssn.beginTransaction();
	ssn.save(s);
	t.commit();
	ssn.close();
}
public Supplier getsupbyid(int id)
{
	Session ssn=sessionFactory.openSession();
	Transaction t=ssn.getTransaction();
	t.begin();
	Supplier cy=(Supplier)ssn.get(Supplier.class,id);
	t.commit();
	ssn.close();
	return cy;
}

public ArrayList<Supplier> getAllSupplier() {
	System.out.println("impl reaching");
	Session ssn=sessionFactory.openSession();
	Transaction t=ssn.getTransaction();
	t.begin();
	Query q=ssn.createQuery("from Supplier");//if not using header file org.hibernate ,also can type org.hibernate.Query q
	ArrayList<Supplier> cat=(ArrayList<Supplier>)q.list();
	System.out.println("retrieved");
	
	t.commit();
	ssn.close();
	
		return cat;
}
public void deleteSupplier(int id){
	Session ssn=sessionFactory.openSession();
	Transaction t=ssn.getTransaction();
	t.begin();
	Supplier s=(Supplier)ssn.get(Supplier.class,id);
	ssn.delete(s);
	t.commit();
	ssn.close();
	
}

public void updateSupplier(Supplier id) {
	// TODO Auto-generated method stub
	Session ssn=sessionFactory.openSession();
	Transaction t=ssn.getTransaction();
	t.begin();
	ssn.update(id);
	t.commit();
	ssn.close();
	
}
	}

