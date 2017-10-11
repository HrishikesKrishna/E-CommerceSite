package com.niit.EcommerceFrontEmd.controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
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
import com.niit.EcommerceBackend.models.Category;
import com.niit.EcommerceBackend.models.Product;
import com.niit.EcommerceBackend.models.Supplier;

@Controller
public class ProductContoller {

	@Autowired
	ProductDao pdao;
	
	@Autowired
	SupplierDao sdao;
	
	@Autowired
	CategoryDao cdao;
	
	@RequestMapping("/addp")
	public ModelAndView pro(@RequestParam("name")String Productname,@RequestParam("stds")String shortdescription,@RequestParam("price") int price,@RequestParam("cat") int ci,@RequestParam("sup") int ss,@RequestParam("img") MultipartFile file )
	{
		System.out.println("Controller");
		System.out.println(Productname+shortdescription+price);
		Product p=new Product();
		p.setName(Productname);
		p.setSd(shortdescription);
		p.setPrice(price);
		String img=file.getOriginalFilename();
		p.setImage(img);
		Category ca=new Category();	
		ca=cdao.getcatbyid(ci);

		
		
		Supplier sr=new Supplier();
		sr=sdao.getsupbyid(ss);
		
		p.setCid(ca);
		p.setSid(sr);
		 String filepath ="C:/Users/USER/workspace/EcommerceFrontEmd/src/main/webapp/resources/DatabaseImages/" + file.getOriginalFilename();//to get image name
		 try {
				byte imagebyte[] = file.getBytes();
				BufferedOutputStream fos = new BufferedOutputStream(new FileOutputStream(filepath));
				fos.write(imagebyte);
				fos.close();
				} catch (IOException e) {
				e.printStackTrace();
				}
		pdao.saveProduct(p);
		
		ModelAndView mv1=new ModelAndView("Admin");
		/*ArrayList<Category> cat=(ArrayList<Category>)cdao.getAllCategories();
		mv1.addObject("cat",cat);*/
		return mv1;
		
	}
	
	
	@RequestMapping("/listp")
	public ModelAndView lp(){
		ModelAndView mv=new ModelAndView("ProductList");
		List<Product> p=(List<Product>)pdao.getAllProducts();
        mv.addObject("listop", p);
      
        return mv;
	}
	
	@RequestMapping("/updatep")
	public ModelAndView up(@RequestParam("pid")int pid)
	{
		
		List<Category> c =(List<Category>)cdao.getAllCategories();
		List<Supplier> s =(List<Supplier>)sdao.getAllSupplier();
		ModelAndView mv=new ModelAndView("ProductUpdate");
		System.out.println("Id of product............ "+pid);
		mv.addObject("catlist", c);
		mv.addObject("suplist", s);
		Product p=new Product();
		p=pdao.getprobyid(pid);
		mv.addObject("pro", p);
		
		return mv;
		
	}
	@RequestMapping("/updatepro")
	public ModelAndView upr(@RequestParam("id")int id,@RequestParam("name")String name,@RequestParam("cat")int cat,@RequestParam("sup")int sup,@RequestParam("stds")String stds,@RequestParam("price")int price){
		Product p=new Product();
		p.setId(id);
		p.setName(name);
		p.setSd(stds);
		p.setPrice(price);
		
		Category cy=new Category();
		cy=cdao.getcatbyid(cat);
		
		Supplier sp=new Supplier();
		sp=sdao.getsupbyid(sup);
		
		p.setCid(cy);
		p.setSid(sp);
		pdao.updateProduct(p);
		
		ModelAndView mv=new ModelAndView("ProductList");
		List<Product> pl=(List<Product>)pdao.getAllProducts();
        mv.addObject("listop", pl);
		return mv;
	}
	@RequestMapping("/deletep")
	public ModelAndView dp(@RequestParam("pid")int pid)
	{
		ModelAndView mv=new  ModelAndView("ProductList");
		pdao.deleteProduct(pid);
		return mv;
	}
	
	
}
