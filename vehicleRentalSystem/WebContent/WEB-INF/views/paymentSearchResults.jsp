<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="vehicleRental.model.Payment"%>
<%@page import="vehicleRental.service.PaymentServiceImpl"%>
<%@page import="vehicleRental.service.PaymentService"%>
<%@ page import="java.util.ArrayList" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>
	
	<h1>Search results</h1>

	<div class="container">
		<button class="btn btn-outline-success my-2 my-sm-8" onclick="window.location.href = 'accidentDetailsAdd.jsp';">Get Report</button>
		<form name="acForm" method="post">
		<table class="table table-hover">
	    	<thead>
					<tr>
						<th>Payment ID</th>
						<th>Date</th>
						<th>NIC</th>
						<th>CARD</th>
						<th>CVV</th>
					</tr>
				</thead>
	         <%
	         	String searchText = String.valueOf((request.getAttribute("searchText")));
	         	PaymentService as = new PaymentServiceImpl();
	         	ArrayList<Payment> accArray = as.searchPayment(searchText);

	         	for (Payment acc : accArray) {
	         %>
	        
	        <tbody>
	            <tr>
	            <td> <%=acc.getPayId() %> </td>
				<td> <%=acc.getDate() %> </td>
				<td> <%=acc.getNic() %> </td>
				<td> <%=acc.getCard() %> </td>
				<td> <%=acc.getCvv() %> </td>
	                <td> 
				
				<form method="POST" action="GetPaymentByIdServlet">
				<input type="hidden" name="PayId" value="<%=acc.getPayId()%>"/>
				 <input type="submit"  class="btn btn-secondary" value= "Select Payment" class="select-button" /> 
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