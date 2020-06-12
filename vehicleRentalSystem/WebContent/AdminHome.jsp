<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<head>




<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">



<style>


/* The popup chat - hidden by default */
.chat-popup {
	  background-color:white;
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

input[type=submit]{
width: 30%;
background-color:rgba(0,0,0,0.5) !important;
color: white;
border: 2px solid #D3D3D3;
padding: 6px;
font-size:10px;
cursor:pointer;
border-radius: 10px;
margin-top: 0px;
margin-left:250px;
}
h1{
font-size:100px;
font-weight:bold;
color:red;
}
h3{
font-size:100px;
font-weight:bold;
color:red;
}
h4{
font-size:20px;
font-weight:bold;
}
w3-bar-item w3-button{
font-size:20px;
font-weight:bold;
color:red;
}


</style>

</head>

<!-- ------for footer -->
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<body>
<!-- Navbar (sit on top) -->
<div class="w3-top">
  <div class="w3-bar w3-white w3-wide w3-padding w3-card">
    <a href="customerHome.jsp" class="w3-bar-item w3-button"><b>e-journey</b> Administration</a>
    <!-- Float links to the right. Hide them on small screens -->
    <div class="w3-right w3-hide-small">
      <a href="#changes" class="w3-bar-item w3-button">Changes</a><br>
      <a href="home.jsp" class="w3-bar-item w3-button">About</a><br>

      
       <h4  style="color:red;">	<center>Welcome ${name} </center></h4>
       
       
       
       <button class="btn btn-outline-success my-2 my-sm-8" type="submit">
			<a href="logout.jsp">Sign
				out</a>
		</button>
		
    </div>
  </div>
</div>



<!-- Header -->
<header class="w3-display-container w3-content w3-wide"  id="home">
  <img class="w3-image" src="2.jpg" alt="Architecture" width="90%" height="">
  <div class="w3-display-middle w3-margin-top w3-center">
    <h1 class="w3-xxlarge w3-text-white"><center><span class="w3-padding w3-black w3-opacity-min"><b>e-journey</b></span> <span class="w3-hide-small w3-text-light-grey">Administration</span></center></h1>
  </div>
</header>

<!-- Page content -->
<div class="w3-content w3-padding" style="max-width:1500px">

  <!-- Project Section -->
  <div class="w3-container w3-padding-32" id="changes">
    <h3 class="w3-border-bottom w3-border-light-grey w3-padding-16">Changes</h3>
  </div>

  <div class="w3-row-padding">
    <div class="w3-col l3 m6 w3-margin-bottom" style="width:50%">
      <div class="w3-display-container">
        <div class="w3-display-topleft w3-black w3-padding">
         <button  class="btn btn-outline-success my-2 my-sm-8" onclick="openForm()" style="width:100%" >Reservation Management</button>
        </div>
       <img src="4.jpg" alt="House" style="width:99%">
        <!-- ------popup************************ -->
        
       

<div class="chat-popup" id="myForm">
  
    <h1>Change Reservation</h1>
 
 <form method="POST" action="DeleteReservation2">
				<table>
				<tr>
				<td>Reservation No    :</td>
			    <td><input type="text" name="rno2" onkeypress="isInputNumber(event)" required /></td> <td>
			    
				</tr>
				
				<tr>	 
						<td colspan="2"> <input type="submit"value="Delete Booking" class="delete-button"/><td>
						
			    </tr>
			   
				</table>
				</form>
				
				<form>
				<table>
				<tr>
				
			    <td> <a class="nav-link " href="ShowReservationAdmin.jsp">View Reservation List</a></td>
				</tr>
				
				
			    <tr> 
					
				</tr>
				</table>
				</form>
			
	  

  
    <form method="post"  class="form-container" >
		       
    <button  type="button" class="btn cancel" onclick="closeForm()">Close</button>
  </form>
</div>

<script>
                            function isInputNumber(evt){
                                var ch=String.fromCharCode(evt.which);
                                if(!(/[0-9]/.test(ch))){
                                    evt.preventDefault()
                                }
                            }
</script>

<script>
function openForm() {
  document.getElementById("myForm").style.display = "block";
}

function closeForm() {
  document.getElementById("myForm").style.display = "none";
}
</script>





 
        
        
      </div>
    </div>
    <div class="w3-col l3 m6 w3-margin-bottom"  style="width:50%">
      <div class="w3-display-container">
        <div class="w3-display-topleft w3-black w3-padding">
        <button  class="btn btn-outline-success my-2 my-sm-8" onclick="openForm1()" style="width:100%" >Feedback Management</button>
        </div>
         <img src="9.jpg" alt="House" style="width:99%">
      
      <div class="chat-popup" id="myForm1">
  
    <h1>Feedback Management</h1>
 
 <form method="POST" action="DeleteFeedback">
				<table>
				<tr>
				<td>FID    :</td>
			    <td><input type="text" name="fid" onkeypress="isInputNumber(event)" required/></td> <td>
			    
				</tr>
				
				<tr>	 
						<td colspan="2"> <input type="submit"value="Remove Feedback" class="delete-button"/><td>
						
			    </tr>
			   
				</table>
				</form>
				
				<form>
				<table>
				<tr>
				
			    
			     <td> <a class="nav-link " href="ShowFeedback.jsp">View Feedback</a></td>
				</tr>
				
				
			    <tr> 
					
				</tr>
				</table>
				</form>
			
	  

  
    <form method="post"  class="form-container" >
		       
    <button  type="button" class="btn cancel" onclick="closeForm1()">Close</button>
  </form>
</div>

<script>
function openForm1() {
  document.getElementById("myForm1").style.display = "block";
}

function closeForm1() {
  document.getElementById("myForm1").style.display = "none";
}
</script>



      
      
      
      
    </div>
     </div>
    <div class="w3-col l3 m6 w3-margin-bottom"  style="width:50%">
      <div class="w3-display-container">
        <div class="w3-display-topleft w3-black w3-padding"><button  type="button" class="btn btn-outline-success my-2 my-sm-8" "><a href="AddAd.jsp">Advertisetment management</a></button></div>
        <img src="5.jpg" alt="House" style="width:100%">
      </div>
    </div>
    <div class="w3-col l3 m6 w3-margin-bottom"  style="width:50%">
      <div class="w3-display-container">
        <div class="w3-display-topleft w3-black w3-padding">
        <button  type="button" class="btn btn-outline-success my-2 my-sm-8" "><a href="google.com">Vehicle management</a></button>
        </div>
        <img src="3.jpg" alt="House" style="width:100%">
      </div>
    </div>
  </div>

  <div class="w3-row-padding">
    <div class="w3-col l3 m6 w3-margin-bottom"  style="width:50%">
      <div class="w3-display-container">
        <div class="w3-display-topleft w3-black w3-padding">
        <button  type="button" class="btn btn-outline-success my-2 my-sm-8" "><a href="AddNotifi.jsp">Notification management</a></button>
        </div>
        <img src="4.jpg" alt="House" style="width:99%">
      </div>
    </div>
    <div class="w3-col l3 m6 w3-margin-bottom"  style="width:50%">
      <div class="w3-display-container">
        <div class="w3-display-topleft w3-black w3-padding">
        <button  type="button" class="btn btn-outline-success my-2 my-sm-8" "><a href="accidentDetails.jsp">Accident Detail management</a></button>
</div>
        <img src="9.jpg" alt="House" style="width:99%">
      </div>
      
      
      
      
      
      
      
    </div>
    <div class="w3-col l3 m6 w3-margin-bottom"  style="width:50%">
      <div class="w3-display-container">
        <div class="w3-display-topleft w3-black w3-padding">
        <button  type="button" class="btn btn-outline-success my-2 my-sm-8" "><a href="inquiriesAdminView.jsp">Customer inquiries management</a></button> </div>
        <img src="7.jpg" alt="House" style="width:99%">
      </div>
    </div>
    <div class="w3-col l3 m6 w3-margin-bottom"  style="width:50%">
      <div class="w3-display-container">
        <div class="w3-display-topleft w3-black w3-padding"><button  type="button" class="btn btn-outline-success my-2 my-sm-8" "><a href="Maintain.jsp">Maintain management</a></button> </div></div>
        <img src="5.jpg" alt="House" style="width:99%">
      </div>
      
      
       
       <div class="w3-col l3 m6 w3-margin-bottom"  style="width:50%">
      <div class="w3-display-container">
        <div class="w3-display-topleft w3-black w3-padding"><button  type="button" class="btn btn-outline-success my-2 my-sm-8" "><a href="driverTable.jsp">Driver  management</a></button> </div></div>
        <img src="4.jpg" alt="House" style="width:99%">
      </div>
      
      
      
      <div class="w3-col l3 m6 w3-margin-bottom"  style="width:50%">
      <div class="w3-display-container">
        <div class="w3-display-topleft w3-black w3-padding"><button  type="button" class="btn btn-outline-success my-2 my-sm-8" "><a href="listClients.jsp">Client management</a></button> </div></div>
        <img src="9.jpg" alt="House" style="width:99%">
      </div>
      
       <div class="w3-col l3 m6 w3-margin-bottom"  style="width:50%">
      <div class="w3-display-container">
        <div class="w3-display-topleft w3-black w3-padding"><button  type="button" class="btn btn-outline-success my-2 my-sm-8" "><a href="listEmployee.jsp">Employee management</a></button> </div></div>
        <img src="8.jpg" alt="House" style="width:99%">
      </div>
     
            
     
     
      
      
      
      
      
      
      
    </div>
  </div>


<!-- End page content -->
</div>


<!-- Footer -->
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
</footer>>

</body>
</body>
</html>