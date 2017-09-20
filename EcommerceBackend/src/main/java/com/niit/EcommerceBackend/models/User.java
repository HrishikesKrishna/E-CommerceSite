package com.niit.EcommerceBackend.models;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;
@Entity
@Component
@Table(name="User")

public class User implements Serializable {
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
