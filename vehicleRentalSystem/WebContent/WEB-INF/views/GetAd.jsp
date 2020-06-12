<%@ page import="vehicleRental.model.Ad"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Get Ad</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
	
<script src=https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js></script>
<script src=https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js></script>	

<style>
body {
	font-family: Arial, Helvetica, sans-serif;
	background-image: url('1.png');
	
	
}
input[type=text], select{
	width: 100%;
	padding: 12px;
	border: 2px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
	margin-top: 8px;
	margin-bottom: 16px;
	resize: vertical;
	
	
}
input[type=text], textarea {
	width: 100%;
	padding: 12px;
	border: 2px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
	margin-top: 8px;
	margin-bottom: 16px;
	resize: vertical;
	font-size: 25px;
	
}

.form_content {
	margin-top: 100px;
	margin-left: 400px;
}

td {
	color: white;
}
label{
fonr-size:100px;
font-weight:bold;
color:black;
}
</style>

</head>

<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark static-top">
	<div class="container">
		<a class="navbar-brand" href="AdminHome.jsp"> ONLINE CAR RENT SYSTEM</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarResponsive" aria-controls="navbarResponsive"
			aria-expanded="false" aria-label="Toggle navigation">
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
	<div class="container">
		<div class="row">

			<%
				Ad ad = (Ad) request.getAttribute("ad");
			%>

			<div class="container">
	
		<form method="POST" action="UpdateAdServlet" name="myForm" onsubmit="return validateForm()">
		<label for="category">Category:</label> <select id="category"
			name="category" value="<%= ad.getCategory()%>" required >
			
			<option value="Offer">Offer</option>
			<option value="Notice">Notice</option>
			<option value="Discount">Discount</option>
		</select> 
		
						
		<label for="description">Description:</label>
		<input type="text" class="form-control" name="description" value="<%=ad.getDescription()%>" />
						
		<label for="date">Date :</label>
		<input class="form-control" type="date"  class="form-control" name="date" value="<%=ad.getDate()%>" required>
		
	    <label for="company">Company Name:</label>
	    <input type="text" class="form-control" name="company" value="<%=ad.getCompany()%>" id="company" required>
	    
	    <label for="email">Email Address:</label>
	    <input type="text" class="form-control" name="email" value="<%=ad.getEmail()%>"id="email" required>
	    
	    <label for="mobile">Mobile:</label>
	    <input type="text" class="form-control" name="mobile" value="<%=ad.getMobile()%>"id="mobile" required>
	    
	  <input type="hidden" name="adID" value="<%=ad.getAdId()%>" /> <input type="submit" class="btn btn-success" value="Update Ad" class="update-button" />
	               

		</form>
		<script>
			function validateForm() {
				var mob = document.forms["myForm"]["mobile"].value;
				var mail = document.forms["myForm"]["email"].value;
				
				
				var pattern_mob = /^[0-9]{10}$/g;
				var pattern_mail = /^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;

				 if (!mob.match(pattern_mob)) {

					swal("Opps!!!", "Please Enter Valid Mobile Number!", "warning");
					return false;
				}else if (!mail.match(pattern_mail)){
					swal("Opps!!!", "Please Enter Valid Email Address!", "warning");
					return false;
				}else
					swal("AD", "Updated Successfully!!!", "success");
			}
		</script>
		
							<form method="POST" action="DeleteAdServlet">
								<input type="hidden" name="adId" value="<%=ad.getAdId()%>" /> <input
									type="submit" class="btn btn-danger" value="Delete Ad"
									class="delete-button" />
							</form>
						
		
	</div>
		
		</div>
	</div>
	
</body>
</html>