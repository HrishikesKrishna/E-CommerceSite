package com.niit.EcommerceBackend.dao;

import java.util.ArrayList;
import java.util.List;

import com.niit.EcommerceBackend.models.Category;

public interface CategoryDao {
 void saveCategory(Category c);
 public void updateCategory(Category c);
 public void deleteCategory(int id);
 public Category getcatbyid(int id);
 public List<Category>getAllCategories();
}


