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
<title>Add Your Ad</title>

<script src=https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js></script>
<script src=https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js></script>

<style>
body {
	font-family: Arial, Helvetica, sans-serif;
	background-image: url('1.png');
	
	
}

* {
	box-sizing:cover;
	
}

input[type=text], select{
	width: 100%;
	padding: 4px;
	border: 2px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
	margin-top: 8px;
	margin-bottom: 16px;
	resize: vertical;
	
	
}
input[type=text], textarea {
	width: 100%;
	padding: 2px;
	border: 2px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
	margin-top: 8px;
	margin-bottom: 6px;
	resize: vertical;
	font-size: 20px;
	
}

input[type=submit] {
	background-color:#008CBA;
	color: white;
	padding: 12px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	font-size: 30px;
	position:absolute;  
    transition: .5s ease;
    left: 40%; 
}


input[type=submit]:hover {
	background-color: #45a049;
}


.container {
	border-radius: 20px;
	background-color: rgba(0,0,0,0.5) !important;
	padding: 80px;
	font-size: 15px;
}
h1{
	text-align: center;
	font-weight: bold;
	font-size:40px;
	color:#000;
}
label {
	font-size: 20px;
	font-weight: bold;
	color: white;	
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
          <a class="nav-link" href="home.jsp">About Us</a>
        </li>
        <li class="nav-item active">
          <a class="nav-link" href="reservation1.jsp">Reservation</a>
        </li>
        <li class="nav-item active">
          <a class="nav-link" href="AddAd.jsp" >Ads<span class="sr-only">(current)</span> </a>
        </li>
        <li class="nav-item active">
          <a class="nav-link" href="AddNotifi.jsp" >Notifications</a>
        </li>
        <li class="nav-item active">
          <a class="nav-link" href="inquiryForm.jsp" >Inquiries </a>
        </li>
        
        
         <!--<li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Dropdown
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Action</a>
          <a class="dropdown-item" href="#">Another action</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>
      </li>-->
     
      </ul>
     


    </div>
  </nav>


	<h1>Place Your Advertisement</h1>
	

	<div class="container col-sm-6">
	
		<form method="POST" action="AddAdServlet" name="myForm" onsubmit="return validateForm()">
		<label for="category">Category:</label> <select id="category"
			name="category" required="" >
			<option placeholder="Select Option.."></option>
			<option value="Offer">Offer</option>
			<option value="Notice">Notice</option>
			<option value="Discount">Discount</option>
			
		</select> 
		
		<label for="description">Description:</label>
		<textarea id="description" name="description"
			placeholder="Briefly Explain Your Advertisement..." style="height: 150px" required></textarea>
			
		<label for="date">Date :</label>
		<input class="form-control" type="date"  class="form-control" name="date" required>
		
	    <label for="company">Company Name:</label>
	    <input type="text" class="form-control" name="company" id="company" required>
	    
	    <label for="email">Email Address:</label>
	    <input type="text" class="form-control" name="email" id="email" required>
	    
	    <label for="mobile">Mobile:</label>
	    <input type="text" class="form-control" name="mobile" id="mobile" required>
	               
		
		<input type="submit" class="btn btn-primary" onclick="myFunction()" value="Publish" >
		<!-- <script>
		function myFunction() {
			var category=$("#category").val();
			var description=$("#description").val();
			var date=$("#date").val();
			var company=$("#company").val();
			var email=$("#email").val();
			var mobile=$("#mobile").val();
			if(category=="" || description=="" || date=="" || company=="" || email=="" || mobile==""){
			swal("AD", "Created Failed", "error");
			}else{
				swal("AD", "Created Successfully", "success");
			}
			
			}
		
		
</script> -->

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
					swal("AD", "Created Successfully", "success");
			}
		</script>

	</div>
	<form method="POST" action="AddAdServlet">
			<input type="submit" class="btn btn-primary1" value="View AD">
		</form>

</body>
</html>