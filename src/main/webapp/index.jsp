<html>
<head>
<title> Toronto Restaurant</title>
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

.personalInfo{
	border : 2px solid black;
	border-radius : 5px;
	width : 500px;
	margin-left:auto;
	margin-right:auto;
	margin-top : 40px;
	text-align: center;
}

.orderInfo{
	border : 2px solid black;
	border-radius : 5px;
	width : 500px;
	margin-left:auto;
	margin-right:auto;
	margin-top : 40px;
	text-align: center;
	padding:40px;
	padding-top:20px;
}

.orderBtn{
	padding:10px;
	font-size:1rem;
	
	
}


</style>
</head>

<body>
	
	
	<h2 class="header"> Toronto Restaurant</h2>
		<form action="checkout">
		<div class="personalInfo">
			<h3> Personal Information</h3>
			
			
			<label for="name">Name : </label>
			<input name="name" type="text"> <br><br>
			
			<label for="email">Email : </label>
			<input name="email" type="email"> <br><br>
			
			<label for="phone">Phone : </label>
			<input name="phone" type="tel"> <br><br>
			
			<label for="address">Address : </label>
			<input name="address" type="text"> <br><br>			
		
		</div >
			
		
		<div class="orderInfo">
			<h3>Order Info</h3>
			<label for="pizzaType">Choose a Pizza:</label>
			 <select name="pizza">
			    <option value="Vegi">Vegi Pizza</option>
			    <option value="Pepperoni">Pepperoni</option>
			    <option value="Cheese">Cheese</option>
			    <option value="Double Cheese">Double Cheese</option>
			 </select>
			 
			 <label for="pizzaSize">Choose a Size</label>
			 <select name="size">
			 	<option value="Small">Small</option>
			 	<option value="Medium">Medium</option>
			 	<option value="Large">Large</option>
			 </select>	<br><br>
			 
			 <label for="quantity">Quantity : </label>
			 <input type="number" name="quantity"><br><br>
			
			<label for="coupon">Discount Coupon : </label>
			<input type="text" name="coupon">
		</div>
		
		
		
		
		<br><br>
		<input class="orderBtn" type="submit" value="order">
	
	
	</form>
	
</body>
</html>
