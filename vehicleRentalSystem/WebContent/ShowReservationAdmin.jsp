
<%@page import="vehicleRental.model.Reservation"%>
<%@page import="java.util.ArrayList"%>
<%@page import="vehicleRental.service.ReservationService"%>  



<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
 <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
 
 
 
 <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>



<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
 
</head>
<body style="background-image: url('1.png')">
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <a class="navbar-brand" href="#"></a>
  
    <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
      <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
        <li class="nav-item active">
          <a class="nav-link" href="AdminHome.jsp">Admin <span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item active">
          <a class="nav-link" href="customerHome.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="home.jsp" >About Us</a>
        </li>
      </ul>

        
        
        <button class="btn btn-outline-success my-2 my-sm-8" type="submit"  ><a href="login.jsp">Sign In</a></button>
        <button class="btn btn-outline-success my-2 my-sm-8" type="submit" ><a href="register.jsp">Sign up</a></button>
        
        
    </div>
  </nav>
  
  
  

<!---------------------------- End of the Navigation--------------------------------------------- -->






<div class="w3-container">
  <h2>Reservation details</h2>

  <table  class="w3-table-all w3-hoverable">
    <thead>
      <tr class="w3-hover-text-green">
      
             <th>Reservation No</th>
			<th>Name</th>
			
			<th>Pick Up Location</th>
			<th>pick Up Date</th>
			<th>Pick Up Time</th>
			
			
			<th>Drop Off Location</th>
			<th>Drop Off Date</th>
			
			<th>Drop Off Time</th>
			<th>Vehicle Type</th>
			
   
      </tr>
   
		<%
			
		ReservationService reservationService = new ReservationService();
			ArrayList <Reservation> arrayList=reservationService.viewReservations2();

			for(Reservation reservation:arrayList){
		%>
		
		<tr class="w3-hover-text-green">
			<td><%=reservation.getRno() %></td>
			<td><%=reservation.getName() %></td>
			
		
			<td><%=reservation.getLocation() %></td>
			<td><%=reservation.getDate() %></td>
			<td><%=reservation.getTime() %></td>
			<td><%=reservation.getDlocation() %></td>
			<td><%=reservation.getDate() %></td>
			<td><%=reservation.getDtime() %></td>
			<td><%=reservation.getVtype() %></td>
			
			  <td> <a class="nav-link " href="AdminHome.jsp">Assign Vehicle</a></td>
			
		</tr>
		<%
			}
		%>	
 
   
  </table>
</div>




</body>
</html>