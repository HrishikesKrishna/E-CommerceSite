package com.niit.EcommerceBackend.dao;

import java.util.ArrayList;
import java.util.List;


import com.niit.EcommerceBackend.models.Supplier;


public interface SupplierDao {
void saveSupplier(Supplier s);

public Supplier getsupbyid(int id);//why is return type supplier
public ArrayList<Supplier>getAllSupplier();
public void deleteSupplier(int id);
public void updateSupplier(Supplier id);
}
