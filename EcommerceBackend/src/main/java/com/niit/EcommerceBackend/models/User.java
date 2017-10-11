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
	
	
	
	
	@Column(name="Username",nullable=false)
	private String uname;
	 
	@Column(name="Useremail",nullable=false)
	private String umail;
	
	@Column(name="Userpass",nullable=false)
	private String upass;
	
	@Column(name="Usermobile",nullable=false)
	private long umobno;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getUmail() {
		return umail;
	}

	public void setUmail(String umail) {
		this.umail = umail;
	}

	public String getUpass() {
		return upass;
	}

	public void setUpass(String upass) {
		this.upass = upass;
	}

	public long getUmobno() {
		return umobno;
	}

	public void setUmobno(long umobno) {
		this.umobno = umobno;
	}

	
}
