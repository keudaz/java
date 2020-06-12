<%@ page import="vehicleRental.model.Notifi"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Get Notifi</title>

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
	background-image: url('aaa.jpg');
	background-size: cover;
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
		<a class="navbar-brand" href="customerHome.jsp">Home</a>
		<a class="navbar-brand" href="AddNotifi.jsp">Notifications</a>
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
				Notifi notifi = (Notifi) request.getAttribute("notifi");
			%>

			<div class="form_content">

				<form method="POST" action="UpdateNotifiServlet">
					<table>
						<tr>
							<td>Notification ID</td>
							<td><input type="text" class="form-control" name="notifiID"
								disabled="disabled" value="<%=notifi.getNotifiId()%>"/></td>
						</tr>
						<td><br><br></td>
						<tr>
							<td>Description</td>
							<td><input type="text" class="form-control"
								name="description" value="<%=notifi.getDescription()%> required" /></td>


						</tr>
                        <td><br><br></td>
						<tr>
							<td colspan="2"><input type="hidden" name="notifiID"
								value="<%=notifi.getNotifiId()%>" /> <input type="submit"
								class="btn btn-success" value="Update Notification"
								class="update-button" /></td>
						</tr>
					</table>
				</form>

				<table>
					<tr>
						<td colspan="2">
							<form method="POST" action="DeleteNotifiServlet">
								<input type="hidden" name="notifiId"
									value="<%=notifi.getNotifiId()%>" /> <input type="submit"
									class="btn btn-danger" value="Delete Notification"
									class="delete-button" />
							</form>
						</td>
					</tr>
				</table>

			</div>
		</div>
	</div>
	
</body>
</html>