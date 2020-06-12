<%@ page import="vehicleRental.model.Inquiries" %>
<%@ page import="vehicleRental.service.inquiriesServices" %>
<%@ page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search Results</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

		<script type="text/javascript">
            function btnUpdate() {
            	//DBYesNo.infoBox("Proceed to update?", "Admin Consent");
                document.acForm.action = "accident_update_one";
                acForm.submit();
            }
            
            function btnDelete() {
                document.acForm.action = "inquiries_delete";
                acForm.submit();
            }
        </script>

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
	                <td>Category</td>
	                <td>Vehicle Subject</td>
	                <td>Message</td>
	            </tr>
	        </thead>
	         <% 
	         	String searchText = String.valueOf((request.getAttribute("searchText")));
		        inquiriesServices as = new inquiriesServices();
		        ArrayList<Inquiries> accArray = as.searchInquiries(searchText);
		        
				for(Inquiries acc : accArray){
					if(accArray.isEmpty()){
						String noRes = "No results found! Try again.";
					}
			%>
	        
	        <tbody>
	            <tr>
	                <td><%= acc.getId() %></td>                                                                           
	                <td><%= acc.getCategory() %></td>
	                <td><%= acc.getSubject() %></td>
	                <td><%= acc.getMessage() %></td>
	                <td><button class="btn btn-outline-success my-20 my-sm-20" value="<%= acc.getId() %>" name="dId" onclick="btnDelete();">DELETE</button></td>
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