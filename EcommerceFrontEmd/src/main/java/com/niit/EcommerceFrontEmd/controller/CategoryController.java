package com.niit.EcommerceFrontEmd.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.EcommerceBackend.dao.CategoryDao;
import com.niit.EcommerceBackend.dao.ProductDao;
import com.niit.EcommerceBackend.models.Category;
import com.niit.EcommerceBackend.models.Product;

@Controller
public class CategoryController {

	@Autowired
	CategoryDao cdao;
	
	@Autowired
	ProductDao pdao;
	
	@RequestMapping("/addc")
	public ModelAndView cat(@RequestParam("Catname") String catname) {
		System.out.println("Controller");
		System.out.println(catname);
		Category c=new Category();
		c.setCatname(catname);
		cdao.saveCategory(c);
		
		ModelAndView mv1= new ModelAndView("Admin");
		ArrayList<Category> cc=(ArrayList<Category>)cdao.getAllCategories();
		mv1.addObject("cate",cc);
		return mv1;
	}
	@RequestMapping("/listc")
	public ModelAndView lc(){
		ModelAndView mv=new ModelAndView("CategoryList");
        List<Category> c=(List<Category>)cdao.getAllCategories();
        mv.addObject("listoc", c);
        return mv;
	
	}
	@RequestMapping("/updatec")
	public ModelAndView uc(@RequestParam("cid")int cid)
	{
		Category c=new Category();
		c=cdao.getcatbyid(cid);
		ModelAndView mv=new ModelAndView("CategoryUpdate");
		mv.addObject("cat",	c);
		return mv;
	}
	@RequestMapping("/updatecat")
	public ModelAndView ucat(@RequestParam("id")int id,@RequestParam("name")String cname)
	{
		Category c=new Category();
		c.setId(id);
		c.setCatname(cname);
		cdao.updateCategory(c);
		ModelAndView mv=new ModelAndView("CategoryList");
		return mv;
		
	}
	@RequestMapping("/deletec")
	public ModelAndView dc(@RequestParam("cid")int cid)
	{
		ModelAndView mv=new ModelAndView("CategoryList");
		cdao.deleteCategory(cid);
		return mv;
	}
	@RequestMapping("/selectcat")
	public ModelAndView sct(@RequestParam("cid")int cid)
	{
		ModelAndView mv=new ModelAndView("ProductCatalogue");
		List<Product> p=(List<Product>)pdao.getProbycatid(cid);
		mv.addObject("lpcd", p);
		return mv;
	}
}
