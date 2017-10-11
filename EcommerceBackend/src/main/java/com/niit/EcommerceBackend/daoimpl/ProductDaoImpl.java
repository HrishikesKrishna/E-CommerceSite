package com.niit.EcommerceBackend.daoimpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.EcommerceBackend.dao.ProductDao;
import com.niit.EcommerceBackend.models.Product;

@Repository("ProductDaoImpl")	
	public class ProductDaoImpl implements ProductDao{
@Autowired
SessionFactory sessionFactory;

public void ProductDaoImpl(SessionFactory sessionfactory){
	this.sessionFactory=sessionfactory;
}

public ProductDaoImpl() {
}

public void saveProduct(Product p){
	Session ssn=sessionFactory.openSession();
	Transaction t=ssn.getTransaction();
	t.begin();
	ssn.save(p);
	t.commit();
	ssn.close();
	
	
}

public Product getprobyid(int id) {
	Session ssn=sessionFactory.openSession();
	Transaction t=ssn.getTransaction();
	t.begin();
	Product pr=(Product)ssn.get(Product.class,id);//what is use of class and Product in bracket
	t.commit();
	ssn.close();
	return pr;
	
}

public List<Product> getAllProducts() {
	Session ssn =sessionFactory.openSession();
	Transaction t=ssn.getTransaction();
	t.begin();
	Query q=ssn.createQuery("from Product");
	List<Product> prol=(List<Product>)q.list();
	t.commit();
	ssn.close();
	
			
	return prol;
}
public void deleteProduct(int id){
	Session ssn=sessionFactory.openSession();
	Transaction t=ssn.getTransaction();
	t.begin();
	Product p=(Product)ssn.get(Product.class,id);
	ssn.delete(p);
	t.commit();
	ssn.close();
	
}

public void updateProduct(Product p) {
	// TODO Auto-generated method stub
	Session ssn=sessionFactory.openSession();
	Transaction t=ssn.getTransaction();
	t.begin();
	ssn.update(p);
	t.commit();
	ssn.close();
}



}
