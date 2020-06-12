<%@ page import="vehicleRental.model.Accidents" %>
<%@ page import="vehicleRental.service.accidentServices" %>
<%@ page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search Results</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
	
	<h1>Search results : <%=request.getAttribute("searchText") %></h1>

	<div class="container">
		<button class="btn btn-outline-success my-2 my-sm-8" onclick="window.location.href = 'accidentDetailsAdd.jsp';">Get Report</button>
		<form name="acForm" method="post">
		<table class="table table-hover">
	    	<thead>
	            <tr>
	                <td>ID</td>
	                <td>Date</td>
	                <td>Vehicle Number</td>
	                <td>Estimated Amount</td>
	            </tr>
	        </thead>
	         <% 
	         	String searchText = String.valueOf((request.getAttribute("searchText")));
		        accidentServices as = new accidentServices();
		        ArrayList<Accidents> accArray = as.searchAccidents(searchText);
		        
				for(Accidents acc : accArray){
					if(accArray.isEmpty()){
						String noRes = "No results found! Try again.";
					}
			%>
	        
	        <tbody>
	            <tr>
	                <td><%= acc.getId() %></td>                                                                           
	                <td><%= acc.getDate() %></td>
	                <td><%= acc.getvNum() %></td>
	                <td><%= acc.getAmount() %></td>
	                <td><button class="btn btn-outline-success my-20 my-sm-20" value="<%= acc.getId() %>" name="id" onclick="callServlet();">DELETE</button></td>
	                <td><button class="btn btn-outline-success my-20 my-sm-20" value="<%= acc.getId() %>" name="getId" onclick="callServletOne();">UPDATE</button></td>
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