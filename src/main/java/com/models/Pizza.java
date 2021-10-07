package com.models;

public class Pizza {
	
	public String pizzaType;
	public String pizzaSize;
	public double price;
	public double quantity;
	public double total;
	
	
	public Pizza(String pt, String ps, double p, double q, double t) {
		this.pizzaType =pt;
		this.pizzaSize=ps;
		this.price=p;
		this.quantity=q;
		this.total=t;		
	}
	
	
	public String getPizzaType() {
		return this.pizzaType;
	}
	
	public String getPizzaSize() {
		return this.pizzaSize;
	}
	public double getPrice() {
		return this.price;
	}
	public double getQuantity() {
		return this.quantity;
	}
	public double getTotal() {
		return this.total;
	}
}
