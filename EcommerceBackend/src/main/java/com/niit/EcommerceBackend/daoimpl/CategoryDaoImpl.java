package com.niit.EcommerceBackend.daoimpl;



import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.EcommerceBackend.dao.CategoryDao;
import com.niit.EcommerceBackend.models.Category;

@Repository("CategoryDaoImpl")
public class CategoryDaoImpl implements CategoryDao {
@Autowired
SessionFactory sessionFactory;


@Autowired
public CategoryDaoImpl(SessionFactory sessionFactory) {
	
	this.sessionFactory = sessionFactory;
}

public void saveCategory(Category c)
{
	Session ssn=sessionFactory.openSession();
	Transaction t=ssn.beginTransaction();/*alternate way   Transaction t= ssn.getTransaction()->t.begin();*/
	ssn.save(c);
	t.commit();
	ssn.close();
}

public  Category getcatbyid(int id)
{
	Session ssn=sessionFactory.openSession();
	Transaction t=ssn.getTransaction();
	t.begin();
	Category cy=(Category) ssn.get(Category.class,id);
	t.commit();
	ssn.close();
	return cy;
}
public List<Category> getAllCategories(){
	System.out.println("impl reaching");
	Session ssn=sessionFactory.openSession();
	Transaction t=ssn.getTransaction();
	t.begin();
	Query q=ssn.createQuery("from Category");
	List<Category> cat=(List<Category>)ssn.createCriteria(Category.class).list();//whats with this code,why create criteria
	System.out.println("retrieved");
	System.out.println(cat);
	
	
	t.commit();
	ssn.close();
	
		return cat;		
}

public void updateCategory(Category c) {
	// TODO Auto-generated method stub
	Session ssn=sessionFactory.openSession();
	Transaction t=ssn.getTransaction();
	t.begin();
	ssn.update(c);
	t.commit();
	ssn.close();
	
	
}

public void deleteCategory(int id) {
	// TODO Auto-generated method stub
	Session ssn=sessionFactory.openSession();
	Transaction t=ssn.getTransaction();
	t.begin();
	Category c=(Category)ssn.get(Category.class,id);
	ssn.delete(c);
	t.commit();
	ssn.close();
}
}
