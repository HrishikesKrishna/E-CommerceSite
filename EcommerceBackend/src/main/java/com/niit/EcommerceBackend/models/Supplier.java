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
@Table(name="Suppplier")
public class Supplier implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;

	@Column(name="dType",nullable=false)
	private String dType;
	 
	@Column(name="title",nullable=false)
	private String title;

	@Column(name="SHORT_DESCRIPTION",nullable=false)
	private String shortDescrption;

	@Column(name="format",nullable=false)
	private String format;
	
	@OneToMany(targetEntity=Product.class,mappedBy="suppier",cascade=CascadeType.ALL,fetch=FetchType.EAGER)
	private Set<Product> prod;
	
	
	
	public Set<Product> getProd() {
		return prod;
	}

	public void setProd(Set<Product> prod) {
		this.prod = prod;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getdType() {
		return dType;
	}

	public void setdType(String dType) {
		this.dType = dType;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}


	public String getShortDescrption() {
		return shortDescrption;
	}

	public void setShortDescrption(String shortDescrption) {
		this.shortDescrption = shortDescrption;
	}

	public String getFormat() {
		return format;
	}

	public void setFormat(String format) {
		this.format = format;
	}




}
