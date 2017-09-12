package com.niit.EcommerceFrontEmd.controller;


	
	 
	import org.springframework.stereotype.Controller;
	import org.springframework.ui.Model;
	import org.springframework.web.bind.annotation.PathVariable;
	import org.springframework.web.bind.annotation.RequestMapping;
	import org.springframework.web.bind.annotation.RequestParam;
	import org.springframework.web.servlet.ModelAndView;
	 
	@Controller
	public class HelloWorldcontroller{
		String message ="Welcome to Spring MVC!";
	 
		@RequestMapping("/hello")
		public ModelAndView showMessage(
				@RequestParam(value ="name", required =false, defaultValue="World")String name){
			System.out.println("in controller");
	 
			ModelAndView mv =new ModelAndView("HelloWorld");
			mv.addObject("message", message);
			mv.addObject("name", name);
			return mv;
		}
		@RequestMapping("/")
		public String index()
		{
			return "index";
	}

}
