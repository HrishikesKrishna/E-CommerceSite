package com.niit.EcommerceFrontEmd.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.EcommerceBackend.dao.CategoryDao;
import com.niit.EcommerceBackend.dao.SupplierDao;
import com.niit.EcommerceBackend.models.Category;
import com.niit.EcommerceBackend.models.Supplier;

@Controller
public class Admincontroller {
	
	@Autowired
	CategoryDao cdao;
	
	@Autowired
	SupplierDao sdao;
	
	@RequestMapping("/admin")
	public ModelAndView admin()
	{
		ModelAndView mv=new ModelAndView("Admin");
		List<Category> cd=(List<Category>)cdao.getAllCategories();
		List<Supplier> ss=(List<Supplier>)sdao.getAllSupplier();
		mv.addObject("catd",cd);
		mv.addObject("cat", cd);
		mv.addObject("sup", ss);
		return mv;
}

}
