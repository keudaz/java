<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<head>
<meta charset="ISO-8859-1">
<title>paypal</title>

<head>
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
	padding: 08px 15px;
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
	padding: 50px 30px;
	width: 50%;
	left: 400px;
	margin-top:20px;


	
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
		          	<a class="nav-link" href="reservation1.jsp">Reservation</a><span class="sr-only">(current)</span></a>
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
		          	<a class="nav-link active" href="charges.jsp">Payment</a>
		        </li>
      		</ul>

     		<h4  style="color:white;">	Welcome ${name} </h4>
		
			<button class="btn btn-outline-success my-2 my-sm-8" type="submit">
				<a href="logout.jsp">Sign
					out</a>
			</button>
			
			
		</div>
	</nav>
	<h1>Pay Here</h1>

	<div class="container" >
		<table  class="w3-table-all w3-hoverable">
     
    <!-- Add meta tags for mobile and IE -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />

</head>
<body>
<!-- Render the radio fields and button containers -->
<p>Pay With Paypal</p>
    <label>
    
        <input type="radio" name="payment-option" value="paypal" checked>
        <img src="paypal1.jpg" alt="Pay with Paypal">
    </label>
<br><br>
<p>Pay with Bank Cards</p>
    <label>
    
        <input type="radio" name="payment-option" value="card">
        <img src="bank1.jpg" alt="Accepting Visa, Mastercard, Discover and American Express">	
    </label>
<br><br>
    
    <div id="paypal-button-container"></div>
  <div id="card-button-container" class="hidden"></div>
  <input class="btn btn-outline-primary" type="button" onclick="location.href='Payment.jsp';" value="Pay with bank cards" />

   
    <!-- Include the PayPal JavaScript SDK -->
    <script src="https://www.paypal.com/sdk/js?client-id=AUEvVI4dut40Zm4oOPM5a44xMpWIATx5c5T9iv3BXx80vJXfmofvOGRC7tqL82iboiX_Ua-5xxKnUSPh&currency=USD"></script>

    <script>
        // Listen for changes to the radio fields
        document.querySelectorAll('input[name=payment-option]').forEach(function(el) {
            el.addEventListener('change', function(event) {

                // If PayPal is selected, show the PayPal button
                if (event.target.value === 'paypal') {
                    document.querySelector('#card-button-container').style.display = 'none';
                    document.querySelector('#paypal-button-container').style.display = 'inline-block';
                }

                // If Card is selected, show the standard continue button
                if (event.target.value === 'card') {
                    document.querySelector('#card-button-container').style.display = 'inline-block';
                    document.querySelector('#paypal-button-container').style.display = 'none';
                }
            });
        });

        // Hide Non-PayPal button by default
        document.querySelector('#card-button-container').style.display = 'none';

        // Render the PayPal button into #paypal-button-container
        paypal.Buttons({
            style: {
                layout: 'horizontal'
            },
            createOrder: function(data, actions) {
                return actions.order.create({
                    purchase_units: [{
                        amount: {
                            value: '10.00'
                        }
                    }]
                });
            },

            // Finalize the transaction
            onApprove: function(data, actions) {
                return actions.order.capture().then(function(details) {
                    // Show a success message to the buyer
                    alert('Transaction completed by ' + details.payer.name.given_name + '!');
                });
            }


        }).render('#paypal-button-container');
    </script>
</body>
</html>

















