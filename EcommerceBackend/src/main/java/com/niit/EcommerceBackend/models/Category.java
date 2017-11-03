package com.niit.EcommerceBackend.models;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import java.io.Serializable;
import java.util.Set;

import org.springframework.stereotype.Component;
import javax.persistence.Table;

@Entity
@Component
@Table(name="CATEGORY")

public class Category implements Serializable {
/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Id
	private int id;

@Column(name="Categoryname",nullable=false)
private String catname;


@OneToMany(targetEntity=Product.class,mappedBy="cid",fetch=FetchType.LAZY)
private Set<Product> product;


public int getId() {
	return id;
}


public void setId(int id) {
	this.id = id;
}


public String getCatname() {
	return catname;
}


public void setCatname(String catname) {
	this.catname = catname;
}


public Set<Product> getProduct() {
	return product;
}


public void setProduct(Set<Product> product) {
	this.product = product;
}


}
