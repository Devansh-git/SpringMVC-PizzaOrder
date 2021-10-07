<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="com.models.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Toronto Restaurant</title>
<style>
body{
text-align:center;
background:lightblue;
}

.header{
	background : black;
	color:white;
	font-size:2rem;
}

.orderInfo{
 width :500px;
 margin-inline:auto;
 text-align:left;
 margin-top:50px;
 border: 2px solid black;
 border-radius:5px;
 padding: 10px;
 
}

.bold{
	font-weight:600;
}
</style>
</head>
<body>

	<h2 class="header"> Toronto Restaurant</h2>
	<div class="orderInfo">	
     	
     	<% User u = (User)request.getAttribute("User"); %>
     	<% Pizza p = (Pizza)request.getAttribute("Pizza"); %>
     	Welcome <%= u.getName() %>
     	
     	
     	<p> Your Order details are : </p>
     
     	
     	<ul>
     		<li>Email Address : <a href=""><%=u.getEmail() %></a> </li>
     		<li>Phone Number : <%=u.getPhone() %> </li>
     		<li>Address : <%=u.getAddress() %> </li>
     	</ul>
     	
     	<p class="bold">  Pizza Details : <p>
     	<ul style="list-style: none">
     		<li>Pizza Type: <%= p.getPizzaType() %> <li>
     		
     		<li>Pizza Size:  <%= p.getPizzaSize() %> <li>
     		
     		<li>Pizza Price: CAD <%= p.getPrice() %> <li>
     		
     		<li>Quantity:  <%= p.getQuantity() %> <li>
     		
     		<li>Coupon:  <%= request.getAttribute("coupon") %> ( <%= request.getAttribute("discount") %> %) <li>
     			
     		
     		
     		
     		<br><br>
     		
     		<li>Total :  CAD <%= p.getTotal() %><li>
     	
     	
     	</ul>
     		
     	
     	
     	
     	
     </div>
     

</body>
</html>