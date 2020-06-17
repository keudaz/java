<%@ page import="vehicleRental.model.Maintain"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Get Maintain</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>

<style>
body {
	background-image: url('1.png');
	background-position:top;
	/* background-color: #34495E;  */
}

.form_content {
	margin-top: 100px;
	margin-left: 400px;
}

td {
	color: white;
}
</style>

</head>

<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark static-top">
	<div class="container">
		<a class="navbar-brand" href="#">Online Car Rent System</a>
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
			Maintain maintain = (Maintain) request.getAttribute("maintain");
			%>

			<div class="form_content">

				<form method="POST" name="myForm" action="UpdateMainServlet" onsubmit="return validateForm()">
					<table>
						<tr>
							<td>Maintain ID</td>
							<td><input type="text" class="form-control" required="" name="manId "
								disabled="disabled" value="<%=maintain.getManId()%>" /></td>
						</tr>
						
						<tr>
							<td>Vehicle No</td>
							<td><input type="text" class="form-control"
								required="" name="vno" value="<%=maintain.getVno()%>" /></td>
								
						</tr>
						
						<tr>	
							<td>Date</td>
							<td><input type="date" class="form-control"
								required="" name="date" value="<%=maintain.getDate()%>" /></td>
								
						</tr>
						<tr>
							<td>Details</td>
							<td><input type="text" class="form-control"
								required="" name="details" value="<%=maintain.getDetails()%>" /></td>
						</tr>
						
						<tr>
							<td>Cost</td>
							<td><input type="text" class="form-control"
								required="" name="cost" value="<%=maintain.getCost()%>" /></td>
						</tr>

						<tr>
							<td colspan="2"><input type="hidden" name="manId"
								value="<%=maintain.getManId()%>" /> 
								<input type="submit" class="btn btn-success" value="Update maintain" class="update-button" />
								
								</td>
						</tr>
						
					</table>
				</form>

				<table>
					<tr>
						<td colspan="2">
							<form method="POST" action="DeleteMainServlet">
								<input type="hidden" name="manId" value="<%=maintain.getManId()%>" /> <input
									type="submit" class="btn btn-danger" value="Delete Maintain"
									class="delete-button" />
							</form>
						</td>
					</tr>
				</table>


				<script>
					function validateForm() {

						var y = document.forms["myForm"]["nic"].value;
						var x = document.forms["myForm"]["cvv"].value;
						var z = document.forms["myForm"]["card"].value;

						/* var str = "nic"; */
						var patt1 = /^[0-9]{9}[vVxX]$/g;
						var patt2 = /^[0-9]{3}$/g;
						var patt3 = /^[0-9]{8}$/g;

						if (y == "") {
							alert("Field can not be empty !!! ");
							return false;
						} else if (!y.match(patt1)) {

							alert("Invalid nic number !!! ");
							return false;
						} else if (!x.match(patt2)) {
							alert("Invalid CVV number !!!");
							return false;
						}else if(!z .match(patt3)){
							  alert("Invalid card number !!!");
							  return false;
						  }
					}
				</script>


			</div>
			
			
			
		</div>
	</div>
	</div>
</body>
</html>