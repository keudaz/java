<%@page import="vehicleRental.service.*"%>
<%@page import="vehicleRental.model.*"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
 <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
 
 
 
 <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

<!-- ------for footer -->
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<style>
.card {
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
  transition: 0.3s;
  width: 30%;
 
 
  
}

.card:hover {
  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
}

.container {
  padding: 2px 6px;
 
}
h4{
font-size:30px;
font-weight:bold;
color:red;
}
</style>

</head>
<body>
<h2></h2>
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
          <a class="nav-link" href="home.jsp">About Us</a>
        </li>
        <li class="nav-item active">
          <a class="nav-link" href="reservation1.jsp">Reservation<span class="sr-only">(current)</span></a>
        </li>
          <li class="nav-item active">
          <a class="nav-link" href="AddAd.jsp">Add</a>
        </li>
        <li class="nav-item active">
          <a class="nav-link" href="AddNotifi.jsp">Notifications</a>
        </li>
        <li class="nav-item active">
          <a class="nav-link " href="inquiryForm.jsp" >Inquiries</a>
        </li>
      </ul>

        
        
        <button class="btn btn-outline-success my-2 my-sm-8" type="submit"  ><a href="login.jsp">Sign In</a></button>
        <button class="btn btn-outline-success my-2 my-sm-8" type="submit" ><a href="register.jsp">Sign up</a></button>
        
        
    </div>
  </nav>
  
  
  

<!---------------------------- End of the Navigation--------------------------------------------- -->






<div class="w3-card-4 w3-margin" style="width:98%" id="home">
  
  <div class="w3-row">
    <div class="w3-third w3-center">
     
      <h3 style="color:red;">Select Your Vehicle Category</h3>
      
    
      <div class="card" style="width:190%">
        <div class="container">
  <h2 style="color:blak;">Create Reservation</h2>
  
  <ul class="nav nav-tabs">
    <li class="nav-item">
      <a class="nav-link " href="reservation1.jsp">Reservation</a>
    </li>
    <li class="nav-item">
      <a class="nav-link active" href="selectVehicle.jsp">Vehicles</a>
    </li>
     <li class="nav-item">
       <a class="nav-link " href="extras.jsp">Extras</a>
    </li>
   
    <li class="nav-item">
      <a class="nav-link disabled" href="charges.jsp">Pay</a>
    </li>
  </ul>
</div>
        
      
</div>


<%
	VehicleService list = new VehicleService();
	ArrayList<Vehicle> arrayList123 = list.getAvailableVehicleList();
	
	for (Vehicle vehicleList : arrayList123) {
		int price=0;
		int bag=0;
		int charge=0;
		
		if(vehicleList.getSeats()==1){
			price=1000;
			bag=1;
			charge=30;
		}else if(vehicleList.getSeats()==2){
			price=2000;
			bag=1;
			charge=30;
		}else if(vehicleList.getSeats()==3){
			price=3000;
			bag=2;
			charge=40;
		}else if(vehicleList.getSeats()==4){
			price=4000;
			bag=2;
			charge=40;
		}else if(vehicleList.getSeats()==5){
			price=5000;
			bag=3;
			charge=50;
		}else if(vehicleList.getSeats()==6){
			price=6000;
			bag=3;
			charge=50;
		}else if(vehicleList.getSeats()>6){
			price=7000;
			bag=4;
			charge=80;
		}
		
%>

<div class="card" style="width:190%">
  <img src="<%=vehicleList.getImage() %>" alt="Avatar" style="width:90%">
  <div class="container">
    <h4><b><%=vehicleList.getModel() %> / Color: <%=vehicleList.getColor() %></b></h4> 
     
       <p>Price for model : Rs <%=price %>/=</p> 
      <p>person :<%=vehicleList.getSeats() %></p> 
       <p>Bags : <%=bag %></p>
       <p>Charges : <%=charge %> rs/km</p>
  
    <div class="w3-container">
    <form name="myForm" method="POST" action="UpdateVehiReservation" >
    <input type="hidden" name="vehicleId" value="<%=vehicleList.getVehicleId() %>" />
    <input type="hidden" name="price" value="<%=price %>" />
    <input type="hidden" name="charge" value="<%=charge %>" />
    <input type="hidden" name="vtype" value="<%=vehicleList.getVehicleType() %>" />
    
<br><br>
      
      <button  class="w3-button w3-black" type="submit" >Select</button>
    </form>
  
</div>
  </div>
</div>

<%
	}
%>

    </div>
    
     
    <div class="w3-third w3-center" style="margin-left:450px" >
     
      
      <div class="card" style="width:110%">
  <img src="cars.png" alt="Avatar" style="width:100%">
  <div class="container">
    <h4><b>Your Reservation</b></h4> 
   
   <div class="w3-container">
  <h2>Reservation details</h2>

  <table  class="w3-table-all w3-hoverable">
    <thead>
      
   
		<%
			
		ReservationService reservationService = new ReservationService();
			ArrayList <Reservation> arrayList=reservationService.viewReservations();
            

		for(Reservation reservation:arrayList){
		%>
		
		<tr>
				<td>Reservation No		
			<td><%=reservation.getRno() %></td>
		</tr>
		<tr>	
				<td>Name
			<td><%=reservation.getName() %></td>
		</tr>	
		<tr>
				<td>Pick Up Location
			<td><%=reservation.getLocation() %></td>
		</tr>	
		<tr>	
				<td>Date
			<td><%=reservation.getDate() %></td>
		</tr>
		<tr>	
				<td>Time
			<td><%=reservation.getTime() %></td>
		</tr>
		<tr>
				<td>Drop Off Location
			<td><%=reservation.getDlocation() %></td>
		</tr>	
		<tr>	
				<td>Date
			<td><%=reservation.getDdate() %></td>
		</tr>
		<tr>	
				<td>Time
			<td><%=reservation.getDtime() %></td>
		</tr>
		<tr>	
				<td>Distance
			<td><%=reservation.getDistance() %>km</td>
		</tr>	
					
			
			
		
		<%
			}
		%>	
 
   
  </table>
</div>

   
   
  </div>
</div>
    </div>
    
    
       <div class="w3-third w3-center" style="margin-left:450px" >
     
      
      <div class="card" style="width:110%">
       <h2><b>Customer Views</b></h2> 
  <img src="feedback.gif" alt="Avatar" style="width:100%">
  <div class="container">
    <h4><b>Customer Views</b></h4> 
   
   <div class="w3-container">
  <h2></h2>

  <table  class="w3-table-all w3-hoverable">
    <thead>
      <tr class="w3-hover-text-green">
      
           
			
   
      </tr>
   
		<%
			
		FeedbackService feedbackService = new FeedbackService();
			ArrayList <Feedback> arrayList1=feedbackService.viewfeedback();

			for(Feedback feedback:arrayList1){
		%>
		
		<tr class="w3-hover-text-green">
			<td><%=feedback.getName() %></td>
			<td><%=feedback.getMsg() %></td>
			
		
			
			
			
			
		</tr>
		<%
			}
		%>	
 
   
  </table>
</div>

   
   
  </div>
</div>

 <div id="map" style="width:100%;height:800px;"></div>
    </div>
    
   
   
    
    
     
      
    
    
    
    
    
    
    
    
   
  </div>
  
 <footer class="w3-center w3-black w3-padding-64 w3-opacity w3-hover-opacity-off">
  <a href="#home" class="w3-button w3-light-grey"><i class="fa fa-arrow-up w3-margin-right"></i>To the top</a>
  <div class="w3-xlarge w3-section">
    <i class="fa fa-facebook-official w3-hover-opacity"></i>
    <i class="fa fa-instagram w3-hover-opacity"></i>
    <i class="fa fa-snapchat w3-hover-opacity"></i>
    <i class="fa fa-pinterest-p w3-hover-opacity"></i>
    <i class="fa fa-twitter w3-hover-opacity"></i>
    <i class="fa fa-linkedin w3-hover-opacity"></i>
  </div>
  <p>Powered by e-journey</p>
</footer>
  
  
</div>


</body>
</html>