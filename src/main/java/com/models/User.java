package com.models;

public class User {
	
	public String name;
	public String email;
	public String phone;
	public String address;
	
	public User(String n, String e, String p, String a) {
		this.name=n;
		this.email=e;
		this.phone=p;
		this.address=a;
	}
	
	public String getName() {
		return name;
	}
	
	public String getEmail() {
		return email;
	}
	
	public String getPhone() {
		return phone;
	}
	
	public String getAddress() {
		return address;
	}
}
