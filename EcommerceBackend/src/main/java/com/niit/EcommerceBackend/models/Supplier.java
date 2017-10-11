package com.niit.EcommerceBackend.models;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;

import java.io.Serializable;
import java.util.Set;

import org.springframework.stereotype.Component;
import javax.persistence.Table;

@Entity
@Component
@Table(name="Supplier")
public class Supplier implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Id
	private int id;

	@Column(name="Suppliername",nullable=false)
	private String supname;
	 
	@Column(name="Supplieraddress",nullable=false)
	private String sadr;

		@OneToMany(targetEntity=Product.class,mappedBy="sid",fetch=FetchType.EAGER)
	private Set<Product> product;

	
		public int getId() {
			return id;
		}

		public void setId(int id) {
			this.id = id;
		}

		public String getSupname() {
			return supname;
		}

		public void setSupname(String supname) {
			this.supname = supname;
		}

		public String getSadr() {
			return sadr;
		}

		public void setSadr(String sadr) {
			this.sadr = sadr;
		}

		public Set<Product> getProduct() {
			return product;
		}

		public void setProduct(Set<Product> product) {
			this.product = product;
		}
	



}
