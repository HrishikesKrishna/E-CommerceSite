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
	public class HelloWorldcontroller{
		
		@Autowired
		UserDao udao;
		
		@Autowired
		CategoryDao cdao;
		
		@Autowired
		SupplierDao sdao;
		
		@Autowired
		ProductDao pdao;
		
		String message ="Welcome to Spring MVC!";
	 
		@RequestMapping("/hello")
		public ModelAndView showMessage(@RequestParam(value ="name", required =false, defaultValue="World")String name){
			System.out.println("in controller");
			ModelAndView mv =new ModelAndView("HelloWorld");
			mv.addObject("message", message);
			mv.addObject("name", name);
			return mv;
		}
		@RequestMapping("/admin")
		public ModelAndView admin()
		{
			ModelAndView mv=new ModelAndView("Admin");
			List<Category> cc=cdao.getAllCategories();
			List<Supplier> ss=sdao.getAllSupplier();
			/*System.out.println("product category");*/
			System.out.println("CATEGORIes......"+cc);
			System.out.println("Suppliers......."+ss);
			mv.addObject("cat",cc);
			mv.addObject("sup",ss);
			
			return mv;
	}
		@RequestMapping("/")
		public String Home()
				{
					return "index";
					
				}
		@RequestMapping("/index")
		public String index()
		{
			return "index";
		}
		@RequestMapping("/Cart")
		public String Cart()
		{
			return"Cart";
		}
		@RequestMapping("/Login")
		public String Login()
		{
			return "Login";
		}
		@RequestMapping("/ur")
		public ModelAndView ur(@RequestParam("name") String uname,@RequestParam("email")String umail,@RequestParam("pwd")String upass,@RequestParam("no")long umobno)
		{
			System.out.println("in controller");
			System.out.println(uname+umail+upass+umobno);
			User p=new User();
			
			p.setUname(uname);
			p.setUmail(umail);
			p.setUmobno(umobno);
			p.setUpass(upass);
			udao.saveUser(p);
			
			ModelAndView mv1=new ModelAndView("signup");
			return mv1;
		}
		
		
		
		
	
	}
		