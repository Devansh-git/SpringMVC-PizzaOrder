package com.project;
import com.models.*;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class OrderController {
	
	
	
	@RequestMapping("/checkout")
	public ModelAndView viewOrder(HttpServletRequest request,HttpServletResponse response) {
	
	ModelAndView mv = new ModelAndView("checkout.jsp");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String phone = request.getParameter("phone");
	String address = request.getParameter("address");
	
	User user = new User(name,email,phone,address);
	
	String pizzaType = request.getParameter("pizza");
	String pizzaSize = request.getParameter("size");
	String Coupon = request.getParameter("coupon");
	double Quantity = (double)Integer.parseInt(request.getParameter("quantity"));  
	double price = getPrice(pizzaSize); 
	double quantityPrice = price*Quantity;	
	double discount = getDiscount(Coupon);
	double total = calTotal(quantityPrice,discount);

	Pizza p = new Pizza(pizzaType,pizzaSize,price,Quantity,total);
	
	mv.addObject("User",user);
	mv.addObject("Pizza",p);
	
	mv.addObject("coupon",Coupon);
	mv.addObject("discount",discount);
	
	return mv;	
		
	}
	
	public double getDiscount(String coupon) {
		if(coupon.equals("1111")) {
			return 10;
		}
		else if(coupon.equals("2222")) {
			return 30;
		}
		else {
			return 0;
		}
	}
	
	public double calTotal(double quantityPrice, double discount) {
		double total = quantityPrice - quantityPrice*(discount/100);
		return total;
	}
	
	
	
	public double getPrice(String pizzaSize) {
		if(pizzaSize.equals("Small")) {
			return 10;
		}
		else if(pizzaSize.equals("Medium"))
		{
			return 13;
		}
		else  {
			return 15;
		}
		
		
		
	}

}
