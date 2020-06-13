<%@page import="vehicleRental.model.Reservation"%>
<%@page import="java.util.ArrayList"%>
<%@page import="vehicleRental.service.ReservationService"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript" src="js/javas.js"> </script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<title>Charges</title>
<style>

body {
	font-family: Arial, Helvetica, sans-serif;
	background-image: url('1.png');
	
}

* {
   
	box-sizing: border-box;
}

input[type=text], select{
	width: 100%;
	padding: 1px;
	border: 5px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
	margin-top: 8px;
	margin-bottom: 16px;
	resize: vertical;
	font-size: 15px;
	
}
input[type=text],[type=date], textarea {
	width: 100%;
	padding: 2px;
	border: 2px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
	margin-top: 3px;
	margin-bottom: 5px;
	resize: vertical;
	font-size: 18px;
	
}


input[type=button] {
	background-color: #008CBA;
	color: white;
	padding: 12px 20px;
	border-radius: 4px;
	cursor: pointer;
	font-size: 18px;
	position:absolute;  
    transition: .5s ease;
    
}


input[type=button]:hover {
	background-color: #45a049;
}

.container {

  
    
	border-radius: 25px;
	background-color:white;
	padding: 75px;
	width: 50%;
	left: 400px;


	
}
h1,h3,label{
	text-align: center;
	color:white;
}
h1{
font-size:50px;
font-weight:bold;
color:white;
}
</style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
	    	<span class="navbar-toggler-icon"></span>
	    </button>
    	<a class="navbar-brand" href="#"></a>
  
    	<div class="collapse navbar-collapse" id="navbarTogglerDemo03">
      		<ul class="navbar-nav mr-auto mt-2 mt-lg-0">
		        <li class="nav-item active">
		        	<a class="nav-link" href="customerHome.jsp">Home</a>
		        </li>
		         <li class="nav-item active">
		          	<a class="nav-link active" href="home.jsp">About Us</a>
		        </li>
		        <li class="nav-item active">
		          	<a class="nav-link" href="reservation1.jsp">Reservation</a><span class="sr-only">(current)</span></a>
		        </li>
		        <li class="nav-item active">
		          	<a class="nav-link active" href="AddAd.jsp">Add</a>
		        </li>
		       <li class="nav-item active">
		          	<a class="nav-link active" href="AddNotifi.jsp">Notifications</a>
		        </li>
		        <li class="nav-item active">
		          	<a class="nav-link active" href="inquiryForm.jsp">Inquiries</a>
		        </li>
      		</ul>

     		<h4  style="color:white;">	Welcome ${name} </h4>
		
			<button class="btn btn-outline-success my-2 my-sm-8" type="submit">
				<a href="logout.jsp">Sign
					out</a>
			</button>
			
			
		</div>
	</nav>

	<h1>Charges</h1>

	<div class="container" >
		<table  class="w3-table-all w3-hoverable">
     
		<%
			
		ReservationService reservationService = new ReservationService();
			ArrayList <Reservation> arrayList=reservationService.oneReservation();

			for(Reservation reservation:arrayList){
		%>
		
		<tr>
			<td>Reservation No</td>		
			<td><%=reservation.getRno() %></td>
		</tr>
		<tr>	
			<td>Name</td>
			<td><%=reservation.getName() %></td>
		</tr>	
		<tr>
			<td>Pick Up Location</td>
			<td><%=reservation.getLocation() %></td>
		</tr>	
		<tr>	
			<td>Date</td>
			<td><%=reservation.getDate() %></td>
		</tr>
		<tr>	
			<td>Time</td>
			<td><%=reservation.getTime() %></td>
		</tr>
		<tr>
			<td>Drop Off Location</td>
			<td><%=reservation.getDlocation() %></td>
		</tr>	
		<tr>	
			<td>Date</td>
			<td><%=reservation.getDdate() %></td>
		</tr>
		<tr>	
			<td>Time</td>
			<td><%=reservation.getDtime() %></td>
		</tr>	
		<tr>	
			<td>Distance</td>
			<td><%=reservation.getDistance() %> km</td>
		</tr>
		<tr>	
			<td>Vehicle Type</td>
			<td><%=reservation.getVtype() %></td>
		</tr>
		<tr>	
			<td>Vehicle Rent</td>
			<td><%=reservation.getPrice() %> rs</td>
		</tr>
		<tr>	
			<td>Driver Name</td>
			<td><%=reservation.getDname() %></td>
		</tr>
		<tr>	
			<td>Driver Phone Number</td>
			<td><%=reservation.getDphone() %></td>
		</tr>
		<tr>	
			<td>Charge</td>
			<td><%=reservation.getCharge() %> rs/km</td>
		</tr>
		<tr>	
			<td>Trip Charge</td>
			<td><%=reservation.getDistance() %> * <%=reservation.getCharge() %> = <%=reservation.getDistance() * reservation.getCharge() %> rs</td>
		</tr>
		<tr>
			<td>Total</td>
			<td><%=reservation.getPrice() %> + <%=reservation.getDistance() * reservation.getCharge() %> = <%=reservation.getPrice() + reservation.getDistance() * reservation.getCharge() %> rs</td>
		</tr>
					
		<%
			}
		%>	
 
   
  </table>
  <br>
  <input class="btn btn-outline-primary" type="button" onclick="location.href='#';" value="Pay on Cash" />
  <br><br><br>
	<input class="btn btn-outline-primary" type="button" onclick="location.href='paypal.jsp';" value="Pay online" />
	</div>	
		
		
		
		
		
		
		
	

</body>
</html>