<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript" src="js/javas.js"> </script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<title>Charges</title>
<style>

body {
	font-family: Arial, Helvetica, sans-serif;
	background-image: url('1.png');
	
}

* {
   
	box-sizing: border-box;
}

input[type=text], select{
	width: 100%;
	padding: 1px;
	border: 5px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
	margin-top: 8px;
	margin-bottom: 16px;
	resize: vertical;
	font-size: 15px;
	
}
input[type=text],[type=date], textarea {
	width: 100%;
	padding: 2px;
	border: 2px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
	margin-top: 3px;
	margin-bottom: 5px;
	resize: vertical;
	font-size: 18px;
	
}


input[type=button] {
	background-color: #008CBA;
	color: white;
	padding: 12px 20px;
	border-radius: 4px;
	cursor: pointer;
	font-size: 18px;
	position:absolute;  
    transition: .5s ease;
    
}


input[type=button]:hover {
	background-color: #45a049;
}

.container {

  
    
	border-radius: 25px;
	background-color:white;
	padding: 60px;
	width: 50%;
	left: 400px;


	
}
h1,h3,label{
	text-align: center;
	color:white;
}
h1{
font-size:50px;
font-weight:bold;
color:white;
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
	<h1>Payment Form</h1>

	<div class="container" >
	
		<form method="POST" name="myForm" action="AddPaymentServlet" onsubmit="return validateForm()"  >
		
			
			
             <div class="form-group">
              <label for="formGroupExampleInput">Date</label>
              <input type="date" class="form-control" id="formGroupExampleInput" placeholder="Date" required="" name="date">
            </div>
		
                <div class="form-group">
                        <label for="formGroupExampleInput">NIC</label>
                        <input type="text"  class="form-control" id="formGroupExampleInput" placeholder="NIC number" required name="nic">
                      </div>
            <div class="form-group">
              <label for="formGroupExampleInput">Card Number</label>
              <input type="text"  class="form-control" id="formGroupExampleInput" placeholder="card number" required name="card">
            </div>
            <div class="form-group">
              <label for="formGroupExampleInput2">Card Verification Value</label>
              <input type="text" class="form-control" id="formGroupExampleInput2" placeholder="cvv" required name="cvv">
            
            
            </div>

 			<div>
           <input type="submit" class="btn btn-primary" href="listPayment.jsp" value="PAY">
			</div>
		
		
		
		</form>
		
		<script>
function validateForm() {
 
	var y = document.forms["myForm"]["nic"].value;
  	var x = document.forms["myForm"]["cvv"].value;
	var z = document.forms["myForm"]["card"].value; 
 
  var patt1 = /^[0-9]{9}[vVxX]$/g;
  var patt2 = /^[0-9]{3}$/g;  
  var patt3 = /^[0-9]{8}$/g; 
  
  if ( y == "" ) {
    alert("Field can not be empty !!! ");
    return false;
  }
  else if(!y .match(patt1)){
	  
	  alert("Invalid NIC number !!! ");
	    return false;
  }
  else if(!x .match(patt2)){
	  alert("Invalid CVV number !!!");
	  return false;
  }
  else if(!z .match(patt3)){
	  alert("Invalid card number !!!");
	  return false;
  }
}
</script>
	<br> 	
	
	<form method="POST" action="AddPaymentServlet">
	
	
		<div>
		 <a class="btn btn-primary" href="listPayment.jsp">View Payment List</a>
			
			<!-- <input type="submit" class="btn btn-primary" value="View Payment"> -->
		</div>	
		</form>
	</div>	
		
		
		
		
		
		
		
	

</body>
</html>