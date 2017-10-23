package com.niit.EcommerceFrontEmd.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.EcommerceBackend.dao.SupplierDao;
import com.niit.EcommerceBackend.models.Supplier;

@Controller
public class SupplierController {

	@Autowired
	SupplierDao sdao;


	@RequestMapping("/admin/adds")
	public ModelAndView sup(@RequestParam("supname") String suppliername,@RequestParam("sadr") String supplieraddress) {
		System.out.println("Controller");
		System.out.println(suppliername+supplieraddress);
		Supplier s=new Supplier();
		s.setSupname(suppliername);
		s.setSadr(supplieraddress);
		sdao.saveSupplier(s);
		ModelAndView mv1= new ModelAndView("Admin");
		return mv1;
	}
	@RequestMapping("/admin/lists")
	public ModelAndView ls(){
		ModelAndView mv=new ModelAndView("SupplierList");
        List<Supplier> s=(List<Supplier>)sdao.getAllSupplier();
        mv.addObject("listos" , s);
        return mv;
	
	}
	@RequestMapping("/admin/updates")
	public ModelAndView us(@RequestParam("sid")int sid)
	{
		ModelAndView mv=new ModelAndView("SupplierUpdate");
		Supplier s=new Supplier();
		s=sdao.getsupbyid(sid);
		mv.addObject("sup", s);
		return mv;
	}
	@RequestMapping("/admin/updatesup")
	public ModelAndView usp(@RequestParam("name")String name)
	{
		Supplier s=new Supplier();
		s.setSupname(name);
		sdao.updateSupplier(s);
		ModelAndView mv=new ModelAndView("SupplierList");
		return mv;
		
	}
	@RequestMapping("/admin/deletes")
	public ModelAndView ds(@RequestParam("sid")int sid)
	{
		ModelAndView mv=new ModelAndView("SupplierList");
		sdao.deleteSupplier(sid);
		return mv;
	}
	
	
}
