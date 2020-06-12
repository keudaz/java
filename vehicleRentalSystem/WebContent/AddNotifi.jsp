<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Your Notification</title>
<script src=https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js></script>
<script src=https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js></script>
<style>
body {
	font-family: Arial, Helvetica, sans-serif;
	background-image:url('bbb.jpg');
	
}

* {
	box-sizing: border-box;

	
}

input[type=text], select, textarea {
	width: 100%;
	padding: 6px;
	border: 2px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
	margin-top: 16px;
	margin-bottom: 16px;
	resize: vertical;
	font-size: 30px;
	
}

input[type=submit] {
	background-color:#45a049;
	color: white;
	padding: 12px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	font-size: 30px;
	position:relative;  
    transition: .5s ease;
    left: 40%;  
	
}

input[type=submit]:hover {
	background-color:red;
}

.container {
width:70%;
	border-radius: 5px;
	background-color:gray;
	padding: 30px;
	border-radius: 20px;

}

h1 {
	text-align: center;
	color:white;
	font-size:40px;
	font-weight:bold;
}
label {
	font-size: 30px;
	font-weight: bold;
	color:black;
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
          <a class="nav-link" href="customerHome.jsp">Home </a>
        </li>
        <li class="nav-item active">
          <a class="nav-link" href="AddAd.jsp" >About Us </a>
        </li>
        <li class="nav-item active">
          <a class="nav-link" href="reservation1.jsp" >Reservation</a>
        </li>
        <li class="nav-item active">
          <a class="nav-link" href="AddAd.jsp" >Add</a>
        </li>
        <li class="nav-item active">
          <a class="nav-link" href="AddNotifi.jsp" >Notifications<span class="sr-only">(current)</span> </a>
        </li>
        <li class="nav-item active">
          <a class="nav-link" href="inquiryForm.jsp" >Inquiries </a>
        </li>
        
         <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
         
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Action</a>
          <a class="dropdown-item" href="#">Another action</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>
      </li>
      </ul>


    </div>
  </nav>


	<h1>Notification Form</h1>

	<div class="container">

		<form method="POST" action="AddNotifiServlet" >
		<label for="usertype">User Type:</label> <select id="usertype"
			name="usertype" required="" >
			<option placeholder="Select Option.."></option>
			<option value="Admin">Admin</option>
			<option value="Informant">Informant</option>
		
		</select> 
			<label for="description">Notification:</label>
			<textarea id="description" name="description"
				placeholder="Write custom notification .." style="height: 200px" required></textarea>

			<input type="submit" class="btn btn-primary" onclick="myFunction()" value="Send">
				<script>
		function myFunction() {
			var usertype=$("#usertype").val();
			var description=$("#description").val();
			
			if(usertype=="" || description=="" ){
			swal("Notification", "Created Failed", "error");
			}else{
				swal("Notification", "Created Successfully", "success");
			}
			
			}
		</form>

		</div>
		
		<form method="POST" action="AddNotifiServlet">
				<input type="submit" class="btn btn-primary" value="View Notifications">
			</form>
			
		
</script> 

			
		</form>

	</div>
	
	<form method="POST" action="AddNotifiServlet">
			<input type="submit" class="btn btn-primary" value="View Notifications">
		</form>
		
			

</body>
</html>