<%@ page import="vehicleRental.model.Accidents" %>
<%@ page import="vehicleRental.service.accidentServices" %>
<%@ page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Accident List</title>
		<script type="text/javascript">
            function btnUpdate() {
            	//DBYesNo.infoBox("Proceed to update?", "Admin Consent");
                document.acForm.action = "accident_update_one";
                acForm.submit();
            }
            
            function btnDelete() {
                document.acForm.action = "accident_delete";
                acForm.submit();
            }
        </script>
</head>
<body>

	<div class="form-group">
	<form class="form-inline" name="search" action="accident_search" method="POST">
		<input class="form-control" name="acSearch" placeholder="Search..."></input>
		<button class="btn btn-outline-success my-20 my-sm-20" type="submit" >click here</button>
	</form>
	</div>

	<div class="container">
		<button class="btn btn-outline-success my-20 my-sm-20" type="submit" ><a href="AdminHome.jsp">Go Back</a></button>
		<button class="btn btn-outline-success my-2 my-sm-8" onclick="window.location.href = 'accidentDetailsAdd.jsp';">Add New</button>
		<form name="acForm" method="post">
		<table class="table table-hover">
	    	<thead>
	            <tr>
	                <th>ID</th>
	                <th>Date</th>
	                <th>Vehicle Number</th>
	                <th>Estimated Amount</th>
	            </tr>
	        </thead>
	         <% 
		        accidentServices as = new accidentServices();
		        ArrayList<Accidents> accArray = as.displayAccidents();
		        
				for(Accidents acc : accArray){
			%>
	        
	        <tbody>
	            <tr>
	                <td><%= acc.getId() %>
	                <td id="uDate"><%= acc.getDate() %><input type="hidden" name="uDate" value="<%= acc.getDate() %>"> </td>
	                <td id="uVNum"><%= acc.getvNum() %><input type="hidden" name="uVNum" value="<%= acc.getvNum() %>"> </td>
	                <td id="uAmount"><%= acc.getAmount() %><input type="hidden" name="uAmount" value="<%= acc.getAmount() %>"> </td>
	                
	            <%/* 
	            	request.setAttribute("uId",acc.getId());
	            	request.setAttribute("uDate",acc.getDate());
	            	request.setAttribute("uVNum",acc.getvNum());
	            	request.setAttribute("uAmount",acc.getAmount());
	            */%>
	            
	            <%/*
	            	System.out.println("ad: "+acc.getId());
		            System.out.println("ad: "+acc.getDate());
		            System.out.println("ad: "+acc.getvNum());
		            System.out.println("ad: "+acc.getAmount());
		            System.out.println("================");
	            */%>
	                
	                <td><button class="btn btn-outline-success my-20 my-sm-20" value="<%= acc.getId() %>" name="dId" onclick="btnDelete();">DELETE</button></td>
	                <td><button class="btn btn-outline-success my-20 my-sm-20" value="<%= acc.getId() %>" name="uId" onclick="btnUpdate();">UPDATE</button></td>
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