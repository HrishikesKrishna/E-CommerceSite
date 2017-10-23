package com.niit.EcommerceFrontEmd.controller;


	
	 
import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.niit.EcommerceBackend.dao.CategoryDao;
import com.niit.EcommerceBackend.dao.ProductDao;
import com.niit.EcommerceBackend.dao.SupplierDao;
import com.niit.EcommerceBackend.dao.UserDao;
import com.niit.EcommerceBackend.models.Category;
import com.niit.EcommerceBackend.models.Product;
import com.niit.EcommerceBackend.models.Supplier;
import com.niit.EcommerceBackend.models.User;
	 
	@SuppressWarnings("unused")
	@Controller
	public class HomeController{
		
		@Autowired
		UserDao udao;
		
		@Autowired
		CategoryDao cdao;
		
		@Autowired
		SupplierDao sdao;
		
		@Autowired
		ProductDao pdao;
		
		String message ="Welcome to Spring MVC!";
	 
		@RequestMapping("/")
		public ModelAndView Home()
				{
					ModelAndView mv=new ModelAndView("index");
					List<Category> cd=(List<Category>)cdao.getAllCategories();
					mv.addObject("catd", cd);
					return mv;
					
				}
		
		@RequestMapping("/user")
		public ModelAndView Homi()
				{
					ModelAndView mv=new ModelAndView("index");
					List<Category> cd=(List<Category>)cdao.getAllCategories();
					mv.addObject("catd", cd);
					return mv;
					
				}
		
		@RequestMapping("/admin")
		public ModelAndView Homm()
				{
					ModelAndView mv=new ModelAndView("index");
					List<Category> cd=(List<Category>)cdao.getAllCategories();
					mv.addObject("catd", cd);
					return mv;
					
				}
		
		@RequestMapping("/hello")
		public ModelAndView showMessage(@RequestParam(value ="name", required =false, defaultValue="World")String name){
			System.out.println("in controller");
			ModelAndView mv =new ModelAndView("HelloWorld");
			mv.addObject("message", message);
			mv.addObject("name", name);
			return mv;
		}
		
		
		@RequestMapping("/login")
		public ModelAndView Login()
		{
			ModelAndView mv=new ModelAndView("Login");
			List<Category> cd=(List<Category>)cdao.getAllCategories();
			mv.addObject("catd", cd);
			return mv;
		}
		
		@RequestMapping("/signup")
		public ModelAndView sgup()
		{
			ModelAndView mv=new ModelAndView("Signup");
			List<Category> cd=(List<Category>)cdao.getAllCategories();
			mv.addObject("catd", cd);
			return mv;
		}
		
		@RequestMapping("/errorlogin")
		public ModelAndView erlg()
		{
			ModelAndView mv=new ModelAndView("Errorpage");
			return mv;
		}
		
		
		
		
	
	}
		