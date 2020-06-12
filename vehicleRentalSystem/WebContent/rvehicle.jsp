
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
    <a class="navbar-brand" href="#">Navbar</a>
  
    <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
      <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
        <li class="nav-item active">
          <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Link</a>
        </li>
        <li class="nav-item">
          <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
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
      
			<th>Name</th>
			
			<th>Location</th>
			<th>Date</th>
			
   
      </tr>
   
		<%
			
		ReservationService reservationService = new ReservationService();
			ArrayList <Reservation> arrayList=reservationService.viewReservations1();

			for(Reservation reservation:arrayList){
		%>
		
		<tr class="w3-hover-text-green">
			
			<td><%=reservation.getName() %></td>
			
		
			<td><%=reservation.getLocation() %></td>
			<td><%=reservation.getDate() %></td>
			
			
			
		</tr>
		<%
			}
		%>	
 
   
  </table>
</div>




</body>
</html>