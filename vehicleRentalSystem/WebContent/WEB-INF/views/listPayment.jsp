<%@page import="vehicleRental.model.Payment"%>
<%@page import="vehicleRental.service.PaymentServiceImpl"%>
<%@page import="vehicleRental.service.PaymentService"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List Payment</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

<style>

body{

background-image: url('1.png');
	background-size:cover;
	/* background-color: #1c477b; */
}

.form_content {
	margin: auto;
}
</style>
</head>
<body>

 <nav class="navbar navbar-expand-lg navbar-dark bg-dark static-top">
    <div class="container">
      <a class="navbar-brand" href="Home.jsp">Online Car Rent System</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item active">
      
        </ul>
      </div>
    </div>
  </nav>

  <!-- Page Content -->
  
 <div class="form-group">
	<form class="form-inline" name="search" action="payment_search" method="POST">
		<input class="form-control" name="acSearch" placeholder="Search..."></input>
		<button class="btn btn-outline-success my-20 my-sm-20" type="submit" >click here</button>
	</form>
</div>
  
  <div class="container">
  
    <div class="row">
    	<div class="form_content">
	
      			<table class="table table-striped table-dark  table-hover ">
		 
		  <tr>
                <th>Payment ID</th>
                <th>Date</th>
                <th>NIC</th>
                <th>CARD</th>
                <th>CVV</th>
            </tr>
            
            <%
            PaymentService  iPaymentService= new PaymentServiceImpl();
            
			ArrayList<Payment> arrayList = iPaymentService.getPayment();
			
			for(Payment payment : arrayList){
			%>
			 <tr>
				<td> <%=payment.getPayId() %> </td>
				<td> <%=payment.getDate() %> </td>
				<td> <%=payment.getNic() %> </td>
				<td> <%=payment.getCard() %> </td>
				<td> <%=payment.getCvv() %> </td>
				
			
				<td> 
				
				<form method="POST" action="GetPaymentByIdServlet">
				<input type="hidden" name="PayId" value="<%=payment.getPayId()%>"/>
				 <input type="submit"  class="btn btn-secondary" value= "Select Payment" class="select-button" /> 
				 </form>
				 
				 </td>	
				</tr>			
			<%	
			   }
            %>     
		</table>
		
		 
		
      </div>
    </div>
  </div>
  

</body>
</html>