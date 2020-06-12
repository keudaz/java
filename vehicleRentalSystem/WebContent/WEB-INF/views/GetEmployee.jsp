<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
 <%@page import="vehicleRental.model.Employee"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>




<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
 <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
 
 
 <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

<link rel="stylesheet"   type="text/css"  href="main.css"> 

<style>

body{
	/*background-color: #1c477b;*/
}


.form_content {
	margin-top: 200px;
	margin-left:450px;
}

h1{
	margin-left: 440px;
	margin-top:50px;
	color:white;
	
	
	}

</style>

</head>
<body>




<!------------------------------------ Navigation ------------------------------------------------->

<nav class="navbar navbar-expand-lg navbar-dark bg-dark   fixed-top">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <a class="navbar-brand" href="#">Navbar</a>
  
    <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
      <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
        <li class="nav-item active">
          <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Link</a>
        </li>
        <li class="nav-item">
          <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
        </li>
      </ul>

        
        
        <h4  style="color:white;">	Welcome ${name} </h4>
		<button class="btn btn-outline-success my-2 my-sm-8" type="submit">
			<a href="http://localhost:8080/vehicleRentalSystem/logout.jsp">Sign
				out</a>
		</button>
        
    </div>
  </nav>
  
  
  

<!---------------------------- End of the Navigation--------------------------------------------- -->













<div class="container">
    <div class="row">
	
      	<%
		Employee employee = (Employee) request.getAttribute("employee");
		%>


<div class="form_content">

	<form method="POST" action="UpdateEmployee">
		<table>
			<tr>
				<td>Employee ID</td>
				<td><input type="text"  class="form-control"  name="employeeID" disabled="disabled"
					value="<%=employee.getEmpId()%>" /></td>
			</tr>
			<tr>
				<td>Employee Name</td>
				<td><input type="text" class="form-control"  name="employeeName"
					value="<%=employee.getName()%>" /></td>
			</tr>
			<tr>
				<td>Email</td>
				<td><input type="text" class="form-control"   name="email"
					value="<%=employee.getEmail()%>" /></td>
			</tr>
			
				<tr>
				<td>Phone Number</td>
				<td><input type="text" class="form-control"   name="phonenum"
					value="<%=employee.getPhoneNum()%>" /></td>
			</tr>
			
			
			
			
			
			<tr>
				<td>NIC</td>
				<td><input type="text" class="form-control"   name="nic"
					value="<%=employee.getNIC()%>" /></td>
			</tr>
			
			
			
			
			<tr>
				<td>Address</td>
				<td><input type="text" class="form-control"  name="address"
					value="<%=employee.getAddress()%>" /></td>
			</tr>
			<tr>
				<td>Designation</td>
				<td><input type="text"  class="form-control"  name="designation"
					value="<%=employee.getDesignation()%>" /></td>
			</tr>
			
			
			
			
				<td colspan="2"><input type="hidden" name="employeeID"
					value="<%=employee.getEmpId()%>" /> 
					<input type="submit" class="btn btn-success"value="Update Employee" class="update-button"/></td>
			</tr>
		</table>
	</form>
	
	
	
	
		<table>
		<tr>
			<td colspan="2">
				<form method="POST" action="DeleteEmployee">
				
					<input type="hidden" name="employeeID"
						value="<%=employee.getEmpId()%>" /> <input type="submit" class="btn btn-danger"
						value="Delete Employee" class="delete-button"/>
				</form>
			</td>
		</tr>
	</table>
	

</body>
</html>