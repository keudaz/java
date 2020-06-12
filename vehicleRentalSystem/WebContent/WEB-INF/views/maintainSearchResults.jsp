<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="vehicleRental.model.Maintain"%>
<%@page import="vehicleRental.service.MaintainServiceImpl"%>
<%@page import="vehicleRental.service.MaintainService"%>
<%@ page import="java.util.ArrayList" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<title>Maintain Search</title>
</head>
<body>
	
	<h1>Search results</h1>

	<div class="container">
		<button class="btn btn-outline-success my-2 my-sm-8" onclick="window.location.href = 'accidentDetailsAdd.jsp';">Get Report</button>
		<form name="acForm" method="post">
		<table class="table table-hover">
	    	<thead>
					<tr>
						<th>Maintain ID</th>
                		<th>Vehicle NO</th>
               			 <th>Date</th>
               			 <th>Details</th>
               			 <th>Cost</th>
					</tr>
				</thead>
	         <%
	         	String searchText = String.valueOf((request.getAttribute("searchText")));
	         MaintainService as = new MaintainServiceImpl();
	         	ArrayList<Maintain> accArray = as.searchMaintain(searchText);

	         	for (Maintain acc : accArray) {
	         %>
	        
	        <tbody>
	            <tr>
	            <td> <%=acc.getManId() %> </td>
				<td> <%=acc.getVno() %> </td>
				<td> <%=acc.getDate() %> </td>
				<td> <%=acc.getDetails() %> </td>
				<td> <%=acc.getCost() %> </td>
	                <td> 
				
				<form method="POST" action="GetMaintainByIdServlet">
				<input type="hidden" name="ManId" value="<%=acc.getManId()%>"/>
				 <input type="submit"  class="btn btn-secondary" value= "Select Maintain" class="select-button" /> 
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