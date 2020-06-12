<%@ page import="vehicleRental.service.inquiriesServices" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="vehicleRental.model.Inquiries" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Panel</title>
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

	<div class="form-group">
	<form class="form-inline" name="search" action="inquiry_search" method="POST">
		<input class="form-control my-20 my-sm-20 btn-space" name="acSearch" placeholder="Search..."></input>
		<button class="btn btn-outline-success my-20 my-sm-20 btn-space" type="submit" >click here</button>
	</form>
	</div>

	<div class="container">
		<button class="btn btn-outline-success my-20 my-sm-20 btn-space" onclick="window.location.href = 'accidentDetailsAdd.jsp';">Generate Report</button>
		<form name="acForm" method="post">
		<table class="table table-hover">
	    	<thead>
	            <tr>
	                <th>ID</th>
	                <th>Category</th>
	                <th>Subject</th>
	                <th>Message</th>
	            </tr>
	        </thead>
	         <% 
		        inquiriesServices is = new inquiriesServices();
		        ArrayList<Inquiries> inqArray = is.displayInquiries();
		        
				for(Inquiries acc : inqArray){
			%>
	        
	        <tbody>
	            <tr>
	                <td><%= acc.getId() %>
	                <td id="uDate"><%= acc.getCategory() %><input type="hidden" name="uDate" value="<%= acc.getCategory() %>"> </td>
	                <td id="uVNum"><%= acc.getSubject() %><input type="hidden" name="uVNum" value="<%= acc.getSubject() %>"> </td>
	                <td id="uAmount"><%= acc.getMessage() %><input type="hidden" name="uAmount" value="<%= acc.getMessage() %>"> </td>
	                
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