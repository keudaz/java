<%@page import="vehicleRental.model.Reservation"%>
<%@page import="java.util.ArrayList"%>
<%@page import="vehicleRental.service.ReservationService"%>  


<%@page import="vehicleRental.model.Feedback"%>

<%@page import="vehicleRental.service.FeedbackService"%> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Insert title here</title>
	
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	
	<!-- ------for footer -->
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

	<!-- --style for box -->
	<style>
		body {font-family: Arial, Helvetica, sans-serif;}
		* {box-sizing: border-box;}
		
		
		/* Button used to open the chat form - fixed at the bottom of the page */
		.open-button {
		  background-color:rgba(0,0,0,0.5) !important;
		  color: white;
		  padding: 16px 20px;
		  border: none;
		  cursor: pointer;
		  opacity: 0.8;
		  position: fixed;
		 margin-top: 10px;
		  right: 0px;
		  width: 180px;
		  border-radius: 10px;
		   min-height: 500px;
		}
		
		/* The popup chat - hidden by default */
		.chat-popup {
			  background-color:rgba(0,0,0,0.5) !important;
		  display: none;
		  position: fixed;
		  bottom: 0;
		  right: 15px;
		  border: 3px solid #f1f1f1;
		  z-index: 9;
		}
		
		/* Add styles to the form container */
		.form-container {
		  max-width: 300px;
		  padding: 10px;
		  background-color: white;
		}
		
		/* Full-width textarea */
		.form-container textarea {
		  width: 100%;
		  padding: 15px;
		  margin: 5px 0 22px 0;
		  border: none;
		  background: #f1f1f1;
		  resize: none;
		  min-height: 100px;
		}
		
		/* When the textarea gets focus, do something */
		.form-container textarea:focus {
		  background-color: #ddd;
		  outline: none;
		}
		
		/* Set a style for the submit/send button */
		.form-container .btn {
		  background-color: #4CAF50;
		  color: white;
		  padding: 16px 20px;
		  border: none;
		  cursor: pointer;
		  width: 100%;
		  margin-bottom:10px;
		  opacity: 0.8;
		}
		
		/* Add a red background color to the cancel button */
		.form-container .cancel {
		  background-color: red;
		}
		
		/* Add some hover effects to buttons */
		.form-container .btn:hover, .open-button:hover {
		  opacity: 1;
		}
	</style>

	<style>
		.button {
		  background-color: #4CAF50; /* Green */
		  border: none;
		  color: white;
		  padding: 16px 32px;
		  text-align: center;
		  text-decoration: none;
		  display: inline-block;
		  font-size: 16px;
		  margin: 4px 2px;
		  -webkit-transition-duration: 0.4s; /* Safari */
		  transition-duration: 0.4s;
		  cursor: pointer;
		}
		
		.button1 {
		  background-color: white; 
		  color: black; 
		  border: 2px solid #4CAF50;
		  height:120px;
		}
		
		.button1:hover {
		  background-color: #4CAF50;
		  color: white;
		}
		
		.button2 {
		  background-color: white; 
		  color: black; 
		  border: 2px solid #008CBA;
		}
		
		.button2:hover {
		  background-color: #008CBA;
		  color: white;
		}
		
		.button3 {
		  background-color: white; 
		  color: black; 
		  border: 2px solid #f44336;
		}
		
		.button3:hover {
		  background-color: #f44336;
		  color: white;
		}
		
		.button4 {
		  background-color: white;
		  color: black;
		  border: 2px solid #e7e7e7;
		}
		
		.button4:hover {background-color: #e7e7e7;}
		
		.button5 {
		  background-color: white;
		  color: black;
		  border: 2px solid #555555;
		}
		
		.button5:hover {
		  background-color: #555555;
		  color: white;
		}
	</style>
	
	<style>
		.card {
		  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
		  transition: 0.3s;
		  width: 30%;
		 
		  
		}
		
		.card:hover {
		  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
		}
		
		.container {
		  padding: 2px 16px;
		}
	</style>

	<!-- footer style -->
	<style>
		.footer {
		  
		   left: 0;
		   bottom: 0;
		   width: 100%;
		   background-color: black;
		   color: white;
		   text-align: center;
		}
	</style>

	<!-- ------for auto complete -->
	<style>
		* {
		  box-sizing: border-box;
		}
		
		body {
		  font: 16px Arial;  
		}
		
		/*the container must be positioned relative:*/
		.autocomplete {
		  position: relative;
		  display: inline-block;
		}
		
		input {
		  border: 1px solid transparent;
		  background-color: #f1f1f1;
		  padding: 10px;
		  font-size: 16px;
		}
		
		input[type=text] {
		  background-color: #f1f1f1;
		  width: 100%;
		}
		
		input[type=submit] {
		  background-color: DodgerBlue;
		  color: #fff;
		  cursor: pointer;
		}
		
		.autocomplete-items {
		  position: absolute;
		  border: 1px solid #d4d4d4;
		  border-bottom: none;
		  border-top: none;
		  z-index: 99;
		  /*position the autocomplete items to be the same width as the container:*/
		  top: 100%;
		  left: 0;
		  right: 0;
		}
		
		.autocomplete-items div {
		  padding: 10px;
		  cursor: pointer;
		  background-color: #fff; 
		  border-bottom: 1px solid #d4d4d4; 
		}
		
		/*when hovering an item:*/
		.autocomplete-items div:hover {
		  background-color: #e9e9e9; 
		}
		
		/*when navigating through the items using the arrow keys:*/
		.autocomplete-active {
		  background-color: DodgerBlue !important; 
		  color: #ffffff; 
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
      		</ul>

     		<h4  style="color:white;">	Welcome ${name} </h4>
		
			<button class="btn btn-outline-success my-2 my-sm-8" type="submit">
				<a href="logout.jsp">Sign
					out</a>
			</button>
			
			<button class="btn btn-outline-success my-2 my-sm-8" type="submit">
				<a href="change_password.jsp?name="${name}">change password</a>
			</button>
		</div>
	</nav>
  
<!---------------------------- End of the Navigation--------------------------------------------- -->


	<div class="w3-card-4 w3-margin" style="width:98%" id="home">
		<div class="w3-row">
    		<div class="w3-third w3-center">
    			<h3 style="color:red;"> <center>RENT A CAR....</center></h3>
    			
    			<div class="card" style="width:190%">
    				<div class="container">
    					<h2 style="color:black;">Create Reservation</h2>
    					
    					<ul class="nav nav-tabs">
						    <li class="nav-item">
						     	<a class="nav-link active " href="reservation1.jsp">Reservation</a>
						    </li>
						    <li class="nav-item">
						      	<a class="nav-link" href="selectVehicle.jsp">Vehicles</a>
						    </li>
						     <li class="nav-item">
						      	<a class="nav-link " href="extras.jsp">Extras</a>
						    </li>
						    <li class="nav-item">
						      	<a class="nav-link " href="charges.jsp">Pay</a>
						    </li>
  						</ul>
					</div>
					
					<img src="home7.gif" alt="Avatar" style="width:100%">

  					<div class="container">
    					<h4><b></b></h4>
    					
    					<div class="w3-container" >
       
							<form autocomplete="off" name="myForm" method="POST" action="addReservation" action="/action_page.php" onsubmit="return validateForm()" >
								<table>
									<tr>
										<td style="color:black;">Name</td>
										<td><input type="text" onkeypress="isInputNumber1(event)" name="name" id="resName" /></td>
									</tr>
						            <tr>
						                <td><br></td>
						            </tr>
						            <tr>
										<td style="color:black;">Nic No</td>
										<td><input type="text" onkeypress="isInputNumber2(event)" name="nic1" id="resNic" /></td>
									</tr>
									<tr>
						                <td><br></td>
						            </tr>
									<tr>
										<td style="color:black;" >Pick Up Location</td>
										<td>
											<div class="autocomplete" style="width:300px;">
												<input id="myInput" type="text" name="location" onchange="clearDistance();" />
											</div>
										</td>
							     		<td style="color:black;" >Date</td>
										<td><input type="date" name="date" style="border-radius: 10px;" id="resPicDate" /></td>
										<td style="color:black;" >Time</td>
										<td><input type="time" name="time" style="border-radius: 10px;" id="resPicTime" /></td>
									</tr>
									<tr>
										<td><br></td>
						            </tr>
						            <tr>
										<td style="color:black;" >Drop Off Location</td>
										<td>
											<div class="autocomplete" style="width:300px;">
												<input id="myInput1" type="text" name="Dlocation" onchange="clearDistance();" />
									       	</div>
									    </td>
									    <td style="color:black;" >Date</td>
										<td><input type="date" name="Ddate" style="border-radius: 10px;" id="resDropDate" /></td>
										<td style="color:black;" >Time</td>
										<td><input type="time" name="Dtime" style="border-radius: 10px;" id="resDropTime"/></td>
									</tr>
									<td><br></td>
									<tr>
										<td style="color:black;" >Distance</td>
										<td><span id="distanceLable"></span>
										<td><input id="distance" name="distance" value="0" type="hidden"/></td>
									</tr>
									<td><br></td>
									<tr>
										<td colspan="2" ><input type="submit"  value="Save" class="w3-button w3-black"/></td>
										<td id="demo"></td>
									</tr>
									<td><br><br><br></td>
								</table>
							</form>

 							<button onclick="document.getElementById('id01').style.display='block'" class="w3-button w3-black" Style="margin-left:80%">More Information</button>
 
						  	<div id="id01" class="w3-modal">
						    	<div class="w3-modal-content">
						      		<header class="w3-container w3-teal"> 
						        		<span onclick="document.getElementById('id01').style.display='none'" class="w3-button w3-display-topright">&times;</span>
						        		<h2>More Information</h2>
						      		</header>
						      		<div class="w3-container">
						      			<p>Driver : we have reliable drivers with better experience<br><br> Driver charges: Free charges for driver  </p>
						      		</div>
						      		<footer class="w3-container w3-teal">
						        		<p>Thanks for reading...</p>
						      		</footer>
						    	</div>
						  	</div>
  							<br><br>
  							
  							<img src="about-us-page.png" alt="Avatar" style="width:50%">
  
  							<div class="container">
  								<button class="button button1" style="width:100%">24/7 Service for customer <br> You can make a reservation easily using your mobile or other devices<br> More than 10 years experience<br> No hidden costs<br> Our branches expands whole over country</button><br>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<div class="w3-third w3-center" style="margin-left:450px" >
				<div class="card" style="width:110%">
					<img src="cars.png" alt="Avatar" style="width:100%">
					
  					<div class="container">
  						<div class="w3-container">
  							<button  class="w3-button w3-black" onclick="openForm()">Feedback</button><br><br><br>
  							
  							<div class="chat-popup" id="myForm">
  								<form method="post"  action="AddFeedback" class="form-container" >
    								<h1>Feedback</h1>
    								<table>
    									<tr>
											<td> <label><b>Name</b></label></td>
    										<td> <textarea style="min-height: 1px"  placeholder="Ms/Mr..." name="name" required></textarea></td>
    									</tr>
    									<tr>
   											<td> <label for="msg"><b>Message</b></label></td>
   											<td> <textarea placeholder="Type message.." name="msg" required></textarea></td>
     									</tr>
     									<tr>
   											<td> <button type="submit" class="w3-button w3-black">Send</button></td>
    									</tr>
    									<tr>		       
   											<td> <button type="button" class="w3-button w3-black" onclick="closeForm()">Close</button></td>
    									</tr>
    								</table>
  								</form>
							</div>
						</div>
					</div>
					
  <!-- ----popup for reserve change -->
  					
  					<div class="w3-container">
  						<button class="w3-button w3-black" onclick="openForm1()">Change Reservation</button>
  						<div class="chat-popup" id="myForm3" style="width:45%"  >
  							<h1 style="color:white;">Change Reservation</h1>
  							<form method="POST" action="DeleteReservation" >
								<table>
									<tr>
										<td style="color:white;">Reservation. No    :</td><td>................   </td>
							   			 <td><input onkeypress="isInputNumber(event)" type="text" name="rno2" required /></td>
							   			 <td colspan="2"> <input type="submit"value="Remove Booking" class="w3-button w3-black"/><td>		
							    	</tr>
							    </table>
								<br>
							</form>
				
							<form method="POST" id="myForm" action="ShowReservation" onsubmit="return validateForm1()">
								<table>
									<tr>
										<!-- -------------------------view reservation ------------- -->
										<td style="color:white;">NIdentyCard No    :</td><td>.....   </td>
									    <td><input type="text" style="margin-right:50px" name="nic1" required/></td> 
									    <td colspan="2" ><input type="submit" value="View Booking"  class="w3-button w3-black" /></td>							 
									</tr>
								</table>
							</form>
							<br>
				
							<form method="POST"   action="UpdateReservation" action="/action_page.php">
								<table>
									<tr>
										<td style="color:white;">Reservation No    :</td>
								    	<td><input onkeypress="isInputNumber(event)" type="text" name="rno" required/></td> <td>
									</tr>
									<tr>
										<td style="color:white;">Location</td>
										<td>
											<div class="autocomplete" style="width:300px;">
												<input  id="myInput2" type="text" name="location" required/>
											</div>
										</td>
									</tr>
				                    <tr>
										<td style="color:white;">Date</td>
										<td><input type="date" name="date" required /></td>
										<td colspan="2"><input type="submit"  value="Change Booking" class="w3-button w3-black" /></td>
									</tr>
								</table>
							</form>
							
							<form method="post"  class="form-container" >
								<button  type="button" class="btn cancel" onclick="closeForm1()">Close</button>
							</form>
						</div>
					</div>
				</div>
    		</div>
    		<br><br><br>
   
    		<div class="w3-third w3-center" style="margin-left:450px" >
    			<div class="card" style="width:110%">
       				<h2><b>Customer Views</b></h2> 
  					<img src="feedback.gif" alt="Avatar" style="width:100%">
 
  					
  					<div class="container">
    					<h4><b>Customer Views</b></h4>
    					<div class="w3-container">
  							<h2></h2>
	  						<table  class="w3-table-all w3-hoverable">
						    	<thead>
						      		<tr class="w3-hover-text-green"></tr>
						   
									<%
										
									FeedbackService feedbackService = new FeedbackService();
										ArrayList <Feedback> arrayList1=feedbackService.viewfeedback();
							
										for(Feedback feedback:arrayList1){
									%>
								
										<tr class="w3-hover-text-green">
											<td><%=feedback.getName() %></td>
											<td><%=feedback.getMsg() %></td>
										</tr>
									<%
										}
									%>
							</table>
						</div>
					</div>
				</div>
    		</div>
    	</div>
      
      <!-- -Footer -->
  
	 	<footer class="w3-center w3-black w3-padding-64 w3-opacity w3-hover-opacity-off">
	  		<a href="#home" class="w3-button w3-light-grey"><i class="fa fa-arrow-up w3-margin-right"></i>To the top</a>
	 		 <div class="w3-xlarge w3-section">
	 		 	<i class="fa fa-facebook-official w3-hover-opacity"></i>
			    <i class="fa fa-instagram w3-hover-opacity"></i>
			    <i class="fa fa-snapchat w3-hover-opacity"></i>
			    <i class="fa fa-pinterest-p w3-hover-opacity"></i>
			    <i class="fa fa-twitter w3-hover-opacity"></i>
			    <i class="fa fa-linkedin w3-hover-opacity"></i>
	  		</div>
	  		<p>Powered by e-journey</p>
		</footer>
	</div>
  
  	<script>
		function openForm() {
		  document.getElementById("myForm").style.display = "block";
		}
		
		function closeForm() {
		  document.getElementById("myForm").style.display = "none";
		}
	</script>
	
	<script>
		function validateForm() {
			var x = document.getElementById("resName").value;
		  	var y = document.getElementById("resNic").value;
		  	var z = document.getElementById("myInput").value;
		  	var q = document.getElementById("resPicDate").value;
		  	var r = document.getElementById("resPicTime").value;
		  	var a = document.getElementById("myInput1").value;
		  	var b = document.getElementById("resDropDate").value;
	  		var c = document.getElementById("resDropTime").value;
	  		var d = document.getElementById("distance").value;
		  
		  	var str = "nic1";
		  	var patt1 = /[0-9]{9}[vVxX]/;
		  
		  	if (x == "" || y == "" || z == "" || q == "" || r == "" || a == "" || b == "" || c == "" || d == "0" ) {
		    	alert("Field can not be empty !!! ");
		    	return false;
		  	}
		  	else if(!y .match(patt1)){ 
				alert("Incorrect nic !!! ");
			    return false;
		  	}
		}
	</script>


 	<script>
        function isInputNumber(evt){
            var ch=String.fromCharCode(evt.which);
            if(!(/[0-9]/.test(ch))){
                evt.preventDefault()
            }
        }
	</script>

	<script>
         function isInputNumber1(evt){
             var ch=String.fromCharCode(evt.which);
             if(!(/[a-zA-Z]/.test(ch))){
                 evt.preventDefault()
             }
         }
	</script>

	<script>
		function openForm1() {
			document.getElementById("myForm3").style.display = "block";
		}
		
		function closeForm1() {
			document.getElementById("myForm3").style.display = "none";
		}
	</script>

	<script>
		function validateForm1() {
			var y = document.forms["myForm"]["nic1"].value;
			var str = "nic1";
		  	var patt1 = /^[0-9]{9}[vVxX]$/g;
		  
		  	if ( y == "" ) {
		    	alert("Field can not be empty !!! ");
		    	return false;
		  	}
		  	else if(!y .match(patt1)){
		  		alert("Incorrect nic !!! ");
			    return false;
		  	}
		}
	</script>
	
	<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&libraries=places&key=AIzaSyBa7-lC3awnUocfhrsSh9t-xzrxRPj5g_4"></script>
	
	<script type="text/javascript">

		function getDistance(){
	
	  		var distanceService = new google.maps.DistanceMatrixService();
        	distanceService.getDistanceMatrix({
            	origins: [document.getElementById('myInput').value],
                destinations: [document.getElementById('myInput1').value],
                travelMode: "DRIVING",
                unitSystem: google.maps.UnitSystem.METRIC,
                durationInTraffic: true,
                avoidHighways: false,
                avoidTolls: false
            },
            
            function (response, status) {
                if (status !== google.maps.DistanceMatrixStatus.OK) {
                    console.log('Error:', status);
                } else {
                    console.log(response);
                    document.getElementById('distanceLable').innerHTML = response.rows[0].elements[0].distance.text;
                    document.getElementById('distance').value = response.rows[0].elements[0].distance.value;

                }
            });
    	}
		
		function AutoComplete() {
			
			//=============Input Fields 1 and Select it========
            var input1 = document.getElementById('myInput');
            
			//===============adding google location search event=================
            new google.maps.places.Autocomplete(input1);

            //=============Input Fields 2 and Select it========
             var input2 = document.getElementById('myInput1');
            
            //===============adding google location search event=================
            new google.maps.places.Autocomplete(input2);
		}

		//======================Register Focus out Listener on Input Fields so we calculate distance and Time
		document.getElementById("myInput").addEventListener("focusout", getDistance);
		document.getElementById("myInput1").addEventListener("focusout", getDistance);

		//===========================Call The Autocomplete Function of Our Page Ready===============
	    google.maps.event.addDomListener(window, 'load', AutoComplete);
		
		function clearDistance() {
			document.getElementById('distanceLable').innerHTML = "";
			document.getElementById('distance').value = "0";
		}

	</script>
      
</body>
</html>