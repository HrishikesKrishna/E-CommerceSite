package com.niit.EcommerceFrontEmd.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.EcommerceBackend.dao.CategoryDao;
import com.niit.EcommerceBackend.dao.UserDao;
import com.niit.EcommerceBackend.models.Category;
import com.niit.EcommerceBackend.models.User;

@Controller
public class UserController {
	
	@Autowired
	CategoryDao cdao;
	
	@Autowired
	UserDao udao;
	
	@RequestMapping("/register")
	public ModelAndView reg(@RequestParam("name")String name,@RequestParam("email")String email,@RequestParam("psw")String psw){
		
		
		User u=new User();
		u.setName(name);
		u.setEmail(email);
		u.setPass(psw);
		u.setRole("ROLE_USER");
		udao.saveUser(u);
		ModelAndView mv=new ModelAndView("Login");
		List<Category> cd=(List<Category>)cdao.getAllCategories();
		mv.addObject("catd", cd);
		return mv;
	}
	
	
	
}
