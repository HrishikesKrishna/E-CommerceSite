package com.niit.EcommerceBackend.models;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
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
	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	private int id;
	
	
	
	
	@Column(name="dType",nullable=false)
	private String dType;
	 
	@Column(name="title",nullable=false)
	private String title;
	
	@Column(name="SHORT_DESCRIPTION",nullable=false)
	private String shortDescrption;
	
	@Column(name="format",nullable=false)
	private String format;

	
	@ManyToOne
	@JoinColumn(name="S_ID")
	Supplier suppier;
	
	@ManyToOne
	@JoinColumn(name="C_ID")
	Category category;
	
	
	public Supplier getSuppier() {
		return suppier;
	}


	public void setSuppier(Supplier suppier) {
		this.suppier = suppier;
	}


	public Category getCategory() {
		return category;
	}


	public void setCategory(Category category) {
		this.category = category;
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
