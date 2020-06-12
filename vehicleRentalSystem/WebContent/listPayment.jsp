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
<script src="assets/js/sweetalert.min.js"></script>

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

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
	    	<span class="navbar-toggler-icon"></span>
	    </button>
    	<a class="navbar-brand" href="#"></a>
  
    	<div class="collapse navbar-collapse" id="navbarTogglerDemo03">
      		<ul class="navbar-nav mr-auto mt-2 mt-lg-0">
		        <li class="nav-item active">
		        	<a class="nav-link" href="customerHome.jsp">Home</a>
		        </li>
		         <li class="nav-item active">
		          	<a class="nav-link active" href="home.jsp">About Us</a>
		        </li>
		        <li class="nav-item active">
		          	<a class="nav-link" href="reservation1.jsp">Reservation</a>
		        </li>
		        <li class="nav-item active">
		          	<a class="nav-link active" href="AddAd.jsp">Add</a>
		        </li>
		       <li class="nav-item active">
		          	<a class="nav-link active" href="AddNotifi.jsp">Notifications</a>
		        </li>
		        <li class="nav-item active">
		          	<a class="nav-link active" href="inquiryForm.jsp">Inquiries</a>
		        </li>
		        <li class="nav-item active">
		          	<a class="nav-link active" href="Payment.jsp">Payment</a><span class="sr-only">(current)</span></a>
		        </li>
      		</ul>

     		<h4  style="color:white;">	Welcome ${name} </h4>
		
			<button class="btn btn-outline-success my-2 my-sm-8" type="submit">
				<a href="logout.jsp">Sign
					out</a>
			</button>
			
			
		</div>
	</nav>


  <!-- Page Content -->
  
<div class="form-group">
	<form class="form-inline" name="search " action="payment_search" method="POST">
		<input class="form-control" name="paySearch" placeholder="Search By ID..."></input>
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
                <th><input class="btn btn-outline-primary" type="button" onclick="location.href='Payment.jsp';" value="Add New" /></th>
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
				 <input type="submit"  class="btn btn-secondary" value= "Manage" class="select-button" /> 
				 </form>
				 
				 </td>
				 <td>
				 	<form method="POST" action="UpdatePaymentReservation" id="selectPaymentMethod">
				<input type="hidden" id="selectPaymentMethodId" name="PayId" value="<%=payment.getPayId()%>"/>
				 <input type="button" class="btn btn-secondary" value= "Select" class="select-button" onclick="selectPaymentMethod(<%=payment.getPayId()%>)"/> 
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
<script type="text/javascript">
	function selectPaymentMethod(id) {
	
	    swal({
	        title: "Are You Sure?",
	        text: "You want to proceed this payment",
	        icon: "warning",
	        buttons: true,
	        dangerMode: false,
	    })
	        .then((willDelete) => {
	            if (willDelete) {
	            	document.getElementById("selectPaymentMethodId").value = id;
	            	document.getElementById("selectPaymentMethod").submit();
	            }
	        });
	
	}
</script>
</html>