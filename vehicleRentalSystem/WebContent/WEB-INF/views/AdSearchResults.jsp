<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="vehicleRental.model.Ad"%>
<%@page import="vehicleRental.service.AdServicesImpl"%>
<%@page import="vehicleRental.service.AdServices"%>
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
	
	<h1>Search Results of Advertisement</h1>

	<div class="container">
		<form name="acForm" method="post">
		<table class="table table-hover">
	    	<thead>
	            <tr>
	                <td>ID</td>
	                <td>Category</td>
	                <td>Description</td>
	                <td>Date</td>
	                <td>Company</td>
	                <td>Email</td>
	                <td>Mobile</td>
	            </tr>
	        </thead>
	         <% 
	         	String searchText = String.valueOf((request.getAttribute("searchText")));
		        AdServices as = new AdServicesImpl();
		        ArrayList<Ad> adArray = as.searchAds(searchText);
		        
				for(Ad ad : adArray){
			%>
	        
	        <tbody>
	            <tr>
	                <td><%= ad.getAdId() %></td>                                                                           
	                <td><%= ad.getCategory() %></td>
	                <td><%= ad.getDescription()%></td>
	                <td><%= ad.getDate()%></td>
	                <td><%= ad.getCompany()%></td>
	                <td><%= ad.getEmail()%></td>
	                <td><%= ad.getMobile()%></td>
	                
	                <%-- <td><button class="btn btn-outline-success my-20 my-sm-20" value="<%= ad.getAdId() %>" name="id" onclick="callServlet();">DELETE</button></td>
	                <td><button class="btn btn-outline-success my-20 my-sm-20" value="<%= ad.getAdId() %>" name="getId" onclick="callServletOne();">UPDATE</button></td> --%>
	             <td> 
				
				<form method="POST" action="GetAdByIdServlet">
				<input type="hidden" name="adID" value="<%=ad.getAdId()%>"/>
				 <input type="submit"  class="btn btn-secondary" value= "Select Ad" class="select-button" /> 
				 </form>
				 
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