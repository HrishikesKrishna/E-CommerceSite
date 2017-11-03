package com.niit.EcommerceBackend.models;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Component
@Table(name="Products")
public class Product implements Serializable {
	
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	@Id
	private int id;
	
	
	@Column(name="name",nullable=false)
	private String name;
	
	@Column(name="SHORT_DESCRIPTION",nullable=false)
	private String sd;
	
	@Column(name="price",nullable=false)
	private int price;
	
	@Column(name="Image")
	private String image;

	@Column(name="Stock")
	private int stock;
	
	@ManyToOne
	@JoinColumn(name="S_ID",insertable=true,updatable=true,nullable=false)
	private Supplier sid;
	
	@ManyToOne
	@JoinColumn(name="C_ID",insertable=true,updatable=true,nullable=false)
	private Category cid;
	
	@OneToMany(targetEntity=Cart.class,mappedBy="pid",fetch=FetchType.LAZY)
	private Set<Cart>cart;
	
	
	public Set<Cart> getCart() {
		return cart;
	}

	public void setCart(Set<Cart> cart) {
		this.cart = cart;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSd() {
		return sd;
	}

	public void setSd(String sd) {
		this.sd = sd;
	}

	public int getPrice() {
		return price;
	}

	public 	void setPrice(int price) {
		this.price = price;
	}

	public Supplier getSid() {
		return sid;
	}

	public void setSid(Supplier sid) {
		this.sid = sid;
	}

	public Category getCid() {
		return cid;
	}

	public int getStock() {
		return stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
	}

	public void setCid(Category cid) {
		this.cid = cid;
	}

	
		
	


	

}
