<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="vehicleRental.model.Users"%>
<%@page import="vehicleRental.service.UserServices"%>

<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ads Search</title>

<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<style>
h1{
	text-align: center;
	font-weight: bold;
}


</style>

</head>
<body>
	
	<h1>Search Results of Customers</h1>

	<div class="container">
		<form name="acForm" method="post">
		<table class="table table-hover">
	    	<thead>
	            <tr>
	                <td>ID</td>
	                <td>Username</td>
	                <td>E mail</td>
	               <td>Full name</td>
	               <td>Phone number</td>
	               <td>NIC</td>
	               <td>address</td>
	            </tr>
	        </thead>
	         <% 
	         	String searchText = String.valueOf((request.getAttribute("searchText")));
		        UserServices as = new UserServices();
		        ArrayList<Users> userArray = as.searchclients(searchText);
		        
				for(Users user : userArray){
			%>
	        
	        <tbody>
	            <tr>
	                <td><%= user.getUserID() %></td>                                                                           
	                <td><%= user.getUsername() %></td>
	                <td><%= user.getEmail()%></td>
	           		 <td><%= user.getName()%></td>
	           		 <td><%= user.getPhoneNum()%></td>
	           		 <td><%= user.getNIC()%></td>	
	           		 <td><%= user.getAddress()%></td>           		 
	                
	                
	                
	                
	                <%-- <td><button class="btn btn-outline-success my-20 my-sm-20" value="<%= ad.getAdId() %>" name="id" onclick="callServlet();">DELETE</button></td>
	                <td><button class="btn btn-outline-success my-20 my-sm-20" value="<%= ad.getAdId() %>" name="getId" onclick="callServletOne();">UPDATE</button></td> --%>
	             <td> 
				
				
				 
				 </td>	
	            </tr>
	        </tbody>
	        
	        <%
			}
			%>
	        
		</table>
		</form>
	</div>
	
	
	
</body>
</html>