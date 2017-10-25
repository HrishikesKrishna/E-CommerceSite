package com.niit.EcommerceFrontEmd.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.EcommerceBackend.dao.CartDao;
import com.niit.EcommerceBackend.dao.CategoryDao;
import com.niit.EcommerceBackend.dao.OrderDao;
import com.niit.EcommerceBackend.dao.ProductDao;
import com.niit.EcommerceBackend.models.Cart;
import com.niit.EcommerceBackend.models.Category;
import com.niit.EcommerceBackend.models.Order;
import com.niit.EcommerceBackend.models.Product;



@Controller
public class CartController {

	@Autowired 
	ProductDao pdao;
	
	@Autowired
	CategoryDao cdao;
	
	@Autowired
	CartDao cartdao;
	
	@Autowired
	OrderDao orddao;
	
	@RequestMapping(value="/user/cart")
	public ModelAndView cart()
	{
		String usrname=SecurityContextHolder.getContext().getAuthentication().getName();
		
		
		ModelAndView mv=new ModelAndView("Cart");
		List<Cart> li=(List<Cart>)cartdao.getCartByUser(usrname);
		mv.addObject("locart",li);
		int subtotal=0;
		for(Cart c:li)
		{
			int sum=c.getPrice()*c.getQty();
			subtotal=subtotal+sum;
		
		}
		double gst=subtotal*0.01;
		List<Category> lc=(List<Category>)cdao.getAllCategories();
		mv.addObject("sb", subtotal);
		mv.addObject("catd", lc);
		mv.addObject("gst", gst);
		
		return mv;
	}
	
	@RequestMapping(value="/user/addcart",method=RequestMethod.POST)
	public ModelAndView addcar(@RequestParam("qty")int qty,@RequestParam("pid")int pid)
	{
		String usrname=SecurityContextHolder.getContext().getAuthentication().getName();
		Cart cart=new Cart();
		int flag=0,cartid=0;
		List<Cart> ct=cartdao.getCartByUser(usrname);//for setting user name into cart creating list ct
		for(Cart c:ct)
		{
			Product p=c.getPid();/*possibly to check whether the product added to cart is already present in cart*/
			if(p.getId()==pid)//checks whether product id in cart is equal,goes to else
			{
				flag=1;
				cartid=c.getId();
			}
		}
		if(flag==1)//flag will become 1 if product is already present 
		{
			Cart c=cartdao.getCartById(cartid);
			int qy=c.getQty();
			qy=qy+1;
			cartdao.updateQuantity(cartid, qy);
		}
		else
		{
			cart.setUname(usrname);
			cart.setQty(qty);
			Product p=new Product();
			p=cartdao.getprobyid(pid);
			cart.setPrice(p.getPrice());
			cart.setPid(p);
			cartdao.addToCart(cart);
		}
		ModelAndView mv=new ModelAndView("redirect:/user/cart");
		
		
		return mv;
		
		  
	}
	@RequestMapping("/user/deletecart")
	public ModelAndView cartdel(@RequestParam("caid")int caid)
	{
		cartdao.deleteCart(caid);
		ModelAndView mv=new ModelAndView("redirect:/user/cart");
		
	
		return mv;
	}
	@RequestMapping("/user/cs")
	public ModelAndView cspg()
	{
		ModelAndView mv=new ModelAndView("ProductCatalogue");
		return mv;
	}
	
	
	@RequestMapping(value="/user/placeorder",method=RequestMethod.POST)
	public ModelAndView placeord(@RequestParam("name")String name,@RequestParam("housename")String hname,@RequestParam("streetname")String sname,@RequestParam("postcode")int pcode,@RequestParam("email")String email,@RequestParam("phoneno")long pno)
	{
		System.out.println();
		Order o=new Order();
		o.setSname(sname);
		o.setHname(hname);
		o.setEmail(email);
		o.setMobno(pno);
		o.setPin(pcode);
		o.setName(name);
		orddao.saveOrder(o);
		ModelAndView mv=new ModelAndView("Payment");
		
		return mv;
	}
	@RequestMapping("/user/checkout")
	public ModelAndView ckot(@RequestParam("tp")double tp)
	{
		ModelAndView mv=new ModelAndView("Order");
		mv.addObject("tp", tp);
		return mv;
	}
	@RequestMapping("/user/thanku")
	public ModelAndView tku()
	{
		ModelAndView mv=new ModelAndView("Thankyou");
		return mv;
	}
}
