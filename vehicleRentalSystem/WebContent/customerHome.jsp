<%@page import="vehicleRental.model.Ad"%>
<%@page import="vehicleRental.service.AdServicesImpl"%>
<%@page import="vehicleRental.service.AdServices"%>
<%@page import="java.util.ArrayList"%>



<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
	
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
  crossorigin="anonymous"></script>
<!-- --style for box -->
<style >
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
/*.single-blog{

  box-shadow: 0px 0px 20px 1px rgba(0, 0, 0, 0.2);
  padding: 10px;
  margin-top: 30px;
  background-color: #fff;

}
.single-blog span{
  float: right;
  font-size: 12px;
  color: cornflowerblue;
}*/
/* new card */
.box{
  position: relative;
  width: 350px;
  height: 230px;
  background: #000;
  box-shadow: 0 30px 30px rgba(0, 0, 0, 0.5);
  float: left;
  margin-top: 30px;
}
.box .imgBx{
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  
}
.box .imgBx img{
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  object-fit: cover;
  transition: 0.5s;
  

}
.box:hover .imgBx img{
  opacity: 0;
  

}
.box .content{
  position: absolute;
  bottom: 20px;
  left: 10%;
  width: 80%;
  height: 20%;
  background: brown;
  transition: 0.5s;
  overflow: hidden;
  padding: 15px;
  box-sizing: border-box;
}
.box:hover .content{
  bottom: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background: yellow;
  transition: 0.5s;
  overflow: hidden;
}
h1{
	text-align: center;
	font-weight: bold;
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
  height:150px;
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










<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
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

/*.single-blog{

  box-shadow: 0px 0px 20px 1px rgba(0, 0, 0, 0.2);
  padding: 10px;
  margin-top: 30px;
  background-color: #fff;

}
.single-blog span{
  float: right;
  font-size: 12px;
  color: cornflowerblue;
}*/
/* new card */
.box{
  position: relative;
  width: 500px;
  height: 250px;
  background: #000;
  box-shadow: 0 30px 30px rgba(0, 0, 0, 0.5);
  float: left;
  margin-top: 30px;
}
.box .imgBx{
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  
}
.box .imgBx img{
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  object-fit: cover;
  transition: 0.5s;
  

}
.box:hover .imgBx img{
  opacity: 0;
  

}
.box .content{
  position: absolute;
  bottom: 20px;
  left: 10%;
  width: 80%;
  height: 20%;
  background: brown;
  transition: 0.5s;
  overflow: hidden;
  padding: 15px;
  box-sizing: border-box;
}
.box:hover .content{
  bottom: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background: yellow;
  transition: 0.5s;
  overflow: hidden;
}
h1{
	text-align: center;
	font-weight: bold;
}
h3{
    text-align:right;
    font-weight:bold;
    font-size:50px;
    font-color:red;
}
h2{
   text-align:center;
   font-weight:bold;
   font-size:50px;
   font-color:red;
}
h4{
text-align:center;
font-weight:bold;
font-size:30px;
font-color:black;
}
</style>


</head>
<body>
<h2></h2>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <a class="navbar-brand" href="#"></a>
  
    <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
      <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
        <li class="nav-item active">
          <a class="nav-link" href=customerHome.jsp">Home<span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item active">
          <a class="nav-link" href="home.jsp">About Us</a>
        </li>
        <li class="nav-item active">
          <a class="nav-link" href="reservation1.jsp">Reservation</a>
        </li>
        <li class="nav-item active">
           <a class="nav-link" href="AddAd.jsp">Add</a>
        </li>
        <li class="nav-item active">
           <a class="nav-link" href="AddNotifi.jsp">Notifications</a>
        </li>
        <li class="nav-item active">
           <a class="nav-link" href="inquiryForm.jsp">Inquiries</a>
        </li>
      </ul>

        
        
        <button class="btn btn-outline-success my-2 my-sm-8" type="submit"  ><a href="login.jsp">Sign In</a></button>
        <button class="btn btn-outline-success my-2 my-sm-8" type="submit" ><a href="register.jsp">Sign up</a></button>
        
        
    </div>
  </nav>
  
  
  

<!---------------------------- End of the Navigation--------------------------------------------- -->






<div class="w3-card-4 w3-margin" style="width:98%" id="home">
  
  <div class="w3-row">
    <div class="w3-third w3-center">
     
      <h3>WELCOME TO</h3>
      
    
      <div class="card" style="width:190%">
        <div class="container">
  <h2 style="color:red;">E-journey</h2>
  
  
</div>
        
      
 
   <img src="home4.gif" alt="Avatar" style="width:100%">
 
  <div class="container">
    <h4><b></b></h4> 
    <!-- --    <button class="button button1">First Class Insurance <br> Cover 10% of damage <br> Charge:free</button>
<button class="button button2">Second Class Insurance <br> Cover 50% of damage <br> Charge:Rs 5000/=</button>
<button class="button button3">Third Class Insurance <br> Cover full damage <br> Charge:Rs 10 000/=</button>--> 
       
   
      <div class="w3-container" >
      
      
     
     <form  >
		<div class="w3-card-4" style="width:100%">
    <header class="w3-container w3-light-grey">
      <h4>EASY WAY TO FIND VEHICLE</h4>
    </header>
    <div class="w3-container">
      <p>60 second reservation</p>
      <hr>
      <img src="kkk.webp" alt="Avatar" class="w3-left w3-circle w3-margin-right" style="width:40%">
      <p>Do you have a busy life...?</p><br><p>  no need to waiting long...!!!</p><br><p>just a apply...!!!</p><br><p>  you can reserve as you want</p><br><p>Best insurance plan for customer...!!!</p><br>
    </div>
    <h4 class="w3-button w3-block w3-dark-grey">Your Best Option</h4>
  </div>
  
  <div class="w3-card-4" style="width:100%">
    <header class="w3-container w3-light-grey">
      <h4>EASY WAY TO RENT A VEHICLE</h4 >
    </header>
    <div class="w3-container">
      <p>Your own price</p>
      <hr>
      <img src="ooo.webp" alt="Avatar" class="w3-left w3-circle w3-margin-right" style="width:40%">
      <p>Do you want to rent your vehicle ...</p><br><p>Don't hesitate...</p><br><p>We can offer 100% reliability...!!!</p><br><p>Best maintain options...</p><br><p>Best insurance plan for vehicle...!!! </p><br>
    </div>
   <h4 class="w3-button w3-block w3-dark-grey">Best Way To Earn Money</h4>
  </div>
  
  
         </form>

 <button onclick="document.getElementById('id01').style.display='block'" class="w3-button w3-black" Style="margin-left:80%">More Information</button>
 
  <div id="id01" class="w3-modal">
    <div class="w3-modal-content">
      <header class="w3-container w3-teal"> 
        <span onclick="document.getElementById('id01').style.display='none'" 
        class="w3-button w3-display-topright">&times;</span>
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
  
  
  <img src="ett.jpg" alt="Avatar" style="width:50%">
  
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
    
    <div class="row">
    
     
    
      <!-- <div class="col-md-4">
          <div class="single-blog">
            <p class="blog-meta">By Admin<span>2019-09-27</span></p>
            <img src="8.jpg" style="width: 20em;">
            <p class="blog-test">Lorem ipsum dolor sit, amet consectetur adipisicing elit. 
              Deserunt nemo incidunt numquam debitis impedit voluptatum dolores. 
              Vitae pariatur eius modi repellat mollitia quasi, dicta possimus voluptatem, porro nisi hic tenetur?
            </p>

            </div>

      </div> 
     <div class="col-md-4">
        <div class="single-blog">
          <p class="blog-meta">By Admin<span>2019-09-28</span></p>
          <img src="8.jpg" style="width: 20em;">
          <h3>Offer</h3>
          <p class="blog-test">Lorem ipsum dolor sit, amet consectetur adipisicing elit. 
            Deserunt nemo incidunt numquam debitis impedit voluptatum dolores. 
            Vitae pariatur eius modi repellat mollitia quasi, dicta possimus voluptatem, porro nisi hic tenetur?
          </p>

          </div>

    </div> -->
   
           <%
              AdServices  iAdService = new AdServicesImpl();
              
        ArrayList<Ad> arrayList = iAdService.getAd();
        
        for(Ad ad : arrayList){
        %>
			<div class="container">
				
				<div class="box">
					<div class="imgBx">
						<img src="b.jpg" style="width: 32em;">

					</div>
					<div class="content">
						<h4><%=ad.getCategory()%></br>
						<h5><%=ad.getDescription()%><br></h5>
						</h4>
						<p>Ad Published Date:<%=ad.getDate()%><br>
						Company:<%=ad.getCompany()%> <br>
						<br>Contact US</br>
						Email:<%=ad.getEmail() %><br>
						Mobile:<%=ad.getMobile() %><br>
						
						
						
						</p>
					</div>
				</div>
			</div>
			<%
				}
			%> 
            
            <!-- Content -->
             
          
        </div>
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
  var x = document.forms["myForm"]["name"].value;
  var y = document.forms["myForm"]["nic1"].value;
  var z = document.forms["myForm"]["location"].value;
  var q = document.forms["myForm"]["date"].value;
  var r = document.forms["myForm"]["time"].value;
  var a = document.forms["myForm"]["Dlocation"].value;
  var b = document.forms["myForm"]["Ddate"].value;
  var c = document.forms["myForm"]["Dtime"].value;
  
  var str = "nic1";
  var patt1 = /^[0-9]{9}[vVxX]$/g;
  
  if (x == "" || y == "" || z == "" || q == "" || r == "" || a == "" || b == "" || c == "" ) {
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



 


   
   
  
  <!-- ----popup for reserve change -->
  
   <div class="w3-container">
  
 
    </div>
  </div>
  



 
</div>

   
   
  
  
  
  
</div>
    </div>
    
    
   
   <br>
   <br><br>
   
   
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
function autocomplete(inp, arr) {
  /*the autocomplete function takes two arguments,
  the text field element and an array of possible autocompleted values:*/
  var currentFocus;
  /*execute a function when someone writes in the text field:*/
  inp.addEventListener("input", function(e) {
      var a, b, i, val = this.value;
      /*close any already open lists of autocompleted values*/
      closeAllLists();
      if (!val) { return false;}
      currentFocus = -1;
      /*create a DIV element that will contain the items (values):*/
      a = document.createElement("DIV");
      a.setAttribute("id", this.id + "autocomplete-list");
      a.setAttribute("class", "autocomplete-items");
      /*append the DIV element as a child of the autocomplete container:*/
      this.parentNode.appendChild(a);
      /*for each item in the array...*/
      for (i = 0; i < arr.length; i++) {
        /*check if the item starts with the same letters as the text field value:*/
        if (arr[i].substr(0, val.length).toUpperCase() == val.toUpperCase()) {
          /*create a DIV element for each matching element:*/
          b = document.createElement("DIV");
          /*make the matching letters bold:*/
          b.innerHTML = "<strong>" + arr[i].substr(0, val.length) + "</strong>";
          b.innerHTML += arr[i].substr(val.length);
          /*insert a input field that will hold the current array item's value:*/
          b.innerHTML += "<input type='hidden' value='" + arr[i] + "'>";
          /*execute a function when someone clicks on the item value (DIV element):*/
          b.addEventListener("click", function(e) {
              /*insert the value for the autocomplete text field:*/
              inp.value = this.getElementsByTagName("input")[0].value;
              /*close the list of autocompleted values,
              (or any other open lists of autocompleted values:*/
              closeAllLists();
          });
          a.appendChild(b);
        }
      }
  });
  /*execute a function presses a key on the keyboard:*/
  inp.addEventListener("keydown", function(e) {
      var x = document.getElementById(this.id + "autocomplete-list");
      if (x) x = x.getElementsByTagName("div");
      if (e.keyCode == 40) {
        /*If the arrow DOWN key is pressed,
        increase the currentFocus variable:*/
        currentFocus++;
        /*and and make the current item more visible:*/
        addActive(x);
      } else if (e.keyCode == 38) { //up
        /*If the arrow UP key is pressed,
        decrease the currentFocus variable:*/
        currentFocus--;
        /*and and make the current item more visible:*/
        addActive(x);
      } else if (e.keyCode == 13) {
        /*If the ENTER key is pressed, prevent the form from being submitted,*/
        e.preventDefault();
        if (currentFocus > -1) {
          /*and simulate a click on the "active" item:*/
          if (x) x[currentFocus].click();
        }
      }
  });
  function addActive(x) {
    /*a function to classify an item as "active":*/
    if (!x) return false;
    /*start by removing the "active" class on all items:*/
    removeActive(x);
    if (currentFocus >= x.length) currentFocus = 0;
    if (currentFocus < 0) currentFocus = (x.length - 1);
    /*add class "autocomplete-active":*/
    x[currentFocus].classList.add("autocomplete-active");
  }
  function removeActive(x) {
    /*a function to remove the "active" class from all autocomplete items:*/
    for (var i = 0; i < x.length; i++) {
      x[i].classList.remove("autocomplete-active");
    }
  }
  function closeAllLists(elmnt) {
    /*close all autocomplete lists in the document,
    except the one passed as an argument:*/
    var x = document.getElementsByClassName("autocomplete-items");
    for (var i = 0; i < x.length; i++) {
      if (elmnt != x[i] && elmnt != inp) {
        x[i].parentNode.removeChild(x[i]);
      }
    }
  }
  /*execute a function when someone clicks in the document:*/
  document.addEventListener("click", function (e) {
      closeAllLists(e.target);
  });
}

/*An array containing all the country names in the world:*/
var countries = ["No:788, Galle Rd, Yalegama Kalutra Sri Lanka","Airport Garden Hotel Address : 234-238 Colombo Negombo Road Negombo Sri Lanka","Algeria","Aubroana Hotel ,Wattala","Austrian Beach Resort,Dikwella","Bandarawela Hotel,Bandarawela","Barberyn Ayurvedic Beach Resort,Weligama","Barberyn Reef Hotel,Beruwala","Bay Inn,Weligama","Belihuloya Rest House,Belihuloya","Bentota Beach Hotel,Bentota","Berjaya Mount Royal Beach Hotel,Mount Lavinia","Beverly Hills,Colombo","Binvino,Gampola","Biyagama Village,Biyagama","Blue Heaven Hotel,Jaffna","Blue Oceanic Beach Hotel,Negombo","Browns Beach Hotel,Negombo","CeyBank Rest,Nuwaraeliya","Chaaya Blu,Trincomalee","Chaaya Citadel,Kandy","Chaaya Village,Habarana","Cinnamon Grand,Colombo 03","Cinnamon Lake Side Colombo,Colombo 02","Cinnmon Lodge,Habarana","Club Hotel Dolphin,Negombo","Club Palm Bay Hotel,Thoduwawa","Club Palm Garden Hotel,Beruwala","Colombo City Hotel,Colombo 01","Colombo Swimming Club,Colombo 03","Coral Reef Beach Hotel,Hikkaduwa","Coral Sands Hotel,Hikkaduwa","Cosy Hotel & Restaurant,Jaffna","Dambulla Rest House,Dambulla","Dickwella Resort & Spa,Dickwella","Dream Beach Hotel	Ambalangoda	","Earls Regency Hotel,Kandy","Eden Resort & Spa,Beruwala","Ella Adventure Park	Ella","Emerald Bay	Induruwa","Expo Pavilion	Jaffna"	 ,"Galadari Hotel	Colombo 01"	 ,"Galle Face Hotel	Colombo 03"	 ,"Galway Forest Lodge	Nuwaraeliya"	 ,"Glendower Hotel	Nuwaraeliya"	 ,"Global Tower Hotel	Colombo 06"	 ,"Golden Star Beach Hotel	Negombo"	,"Goodwood Plaza Hotel,Katunayaka","Grand Oriental Hotel	Colombo 01"	,"Grang Ella Motel	Ella"	,"Green Grass Hotel	Jaffna	"	,"Habarana Rest House	Habarana"		,"Hanwella Rest House	Hanwella"		 ,"Helgas Folly	Kandy"		 ,"Herbal Holiday Resort	Bentota	"	,"Heritance Ahungalla	Ahungalla	"	,"Heritance Kandalama	Kandalama"		 ,"Heritance Tea Factory	Nuwara Eliya	"	,"Hikkaduwa Beach Hotel	Hikkaduwa"		 ,"Hill Club	Nuwaraeliya	"	 ,"Hill Top Hotel	Kandy"		,"Holiday Inn	Polonnaruwa	"	,"Hotel Casamara	Kandy	"	 ,"Hotel Chamila	Kataragama	"	,"Hotel Westeern	Colombo 04	"	,"Hotel Bentota Village	Bentota"		,"Hotel Chatumedura Village Inn	Imbulgoda	"	,"Hotel Hemalee	Giritale"		 ,"Hotel Mihintale	Mihintale"		,"Hotel Nippon	Colombo 02	"	,"Hotel Olympus Plaza	Haputale"		,"Hotel Serendib	Bentota	"	,"Hotel Sigiriya	Matale	"	,"Hotel Suisse	Kandy	"	,"Hotel Susanthas	Bentota	"	,"Hotel Topaz and The Tourmaline	Kandy	"	,"Indra Regent Hotel	Colombo 03	"	 ,"Induruwa Beach Resort	Induruwa"	,"Insight Hotel	Ahungalla	"	,"Jayasinghe Holiday Resort	Kataragama	 "	,"Jetwing Ayurveda Pavilions	Negombo	 "	,"Jetwing Beach	Negombo	"	 ,"Jetwing Blue	Negombo	"	,"Jetwing Hunnas Falls Hotel	Kandy	"	 ,"Jetwing Kurulubedda	Galle	"	 ,"Jetwing Sea	Negombo	 "	,"Jetwing Vil Uyana	Sigiriya	"	,"Jetwing Warwick Gardens	Ambewela"		 ,"Juliana Hotel	Colombo 03	"	,"Kabalana Beach Hotel	Ahungalla	"	 ,"Kandyan Reach Hotel	Kurunegala"		,"Kani Lanka Resort	Katukurunda	"	,"Lanka Princess	Beruwala"		,"Lawrence Hill Paradise	Hikkaduwa	"	 ,"Light House Hotel	Galle"		,"Lihiniya Surf Hotel	Bentota	"	,"Lotus Park Hotel	Trincomalee	"	,"Mandara Rosen Hotel	Kataragama"		,"Medawachchiya Rest House	Medawachchiya	"	,"Miridiya Hotel	Anuradhapura"		,"Misuki Plaza	Ragama	 "	,"Mount Breeze Hotel	Mount Lavinia"		,"Mount Lavinia Hotel	Mount Lavinia	"	,"Navro Beach Resort	Panadura	"	,"Neptune Hotel	Beruwala"		,"Nilaveli Garden Inn	Nilaveli	"	 ,"Nilwala Hotel	Aluthgama	 "	,"Niroga in Madu Ganga Villa	Madu Ganga	"	,"Nuwarawewa Rest House	Anuradhapura"		,"Oasey Hotel	Induruwa	"	,"Oasis Beach Resort	Negombo	"	,"Ocean Beach Club	Dodanduwa	 "	,"Olenka Sunside Beach Hotel	Marawila	"	,"Omega Inn	Colombo 06	"	,"Orient Hotel	Bandarawela	"	,"Orient Pearl Hotel	Katunayaka"		,"Oruthota Chalets	Rajawella	"	 ,"P T Garden Hotel	Biyagama	"	,"Palm Beach Hotel	Mount Lavinia"		 ,"Palm Paradise Cabanas	Tangalle	"	,"Paradise Holiday Village	Kochchikade	 "	,"Paradise Inn	Piliyandala	 "	,"Pelwehera Village Resort	Dambulla"		,"Polhena Reef Garden Hotel	Matara	"	,"Polonnaruwa Rest House	Polonnaruwa	 "	,"Pussellawa Rest House	Pussellawa	"	,"Queen s Hotel	Kandy	"	,"Ramada Resort	Kalutara	 "	,"Palm Beach Hotel	Mount Lavinia	"	,"Palm Paradise Cabanas	Tangalle	"	,"Paradise Holiday Village	Kochchikade	"	,"Paradise Inn	Piliyandala"	,"Pelwehera Village Resort	Dambulla","Polhena Reef Garden Hotel	Matara"		,"Polonnaruwa Rest House	Polonnaruwa	"	 ,"Pussellawa Rest House	Pussellawa	"	,"Queen s Hotel	Kandy	 "	,"Ramada Resort	Kalutara	"	 ,"Devon Hotel (Pvt) Ltd	51 Ampitiya Rd Kandy	"	,"Elephant Reach-Yala	Yala Junction Kirinda Tissamaharama	"	 ,"Hotel Chandrika (Pvt) Ltd	Kataragama Rd Tissamaharama	 "	,"Hotel Diya Dahara	No 07 North Lake Rd Kurunegala	"	,"Hotel Panorama	47/20A Kospanawatte Rd Kalutara North	"	,"Hotel Savinra	Badulla Rd Belihuloya	"	,"Hotel Sunhill	18 Unique Rd Nuwara Eliya	"	,"Hotel Yenisey	16 B Unique View Rd Nuwara Eliya"		,"Kamaro Holiday Resort	No 05 Panadura Rd Bolgoda (Near Bolgoda Bridge) Bandaragama	 "	,"Kukuleganga Holiday Resort	Uskavally Molkawa"		,"Lalitha Hotel	No 200 Galle Rd Pamburana Matara"		 ,"Palm Groove Holiday Inn	Arugambay Pottuvil	"	,"Peak Rest	Colombo Rd Hatton	"	 ,"Sandilka Guest House	87/12 Barnes Ratwatta Mw Balangoda	"	,"Sea Shine Beach Hotel	212 Uswetakeiyawa	"	,"Serene Garden Hotel	189 Rajapihilla Mw Kandy	"	,"Shalimar Beach Hotel	Pothupitiya Wadduwa	"	,"Shanthi Guest House	Dalawella Unawatuna Galle	"	,"Sisira s River Lounge	Police Station Rd Oruthota Kithulgala"	,"Siyanco Holiday Resort	Polonnaruwa	"	,"Srilak View Holiday Inn	A W Athur Sirisena Mw Haputale	"	,"The Kings Park Hotel (Pvt) Ltd	34 Sangaraja Mw Lake Round Kandy"		,"The Soverign (Corporate Hotel)	No 100C Sri Jayawardena Mw Rajagiriya"		,"The Water Front Hotel	15 Tissawewa Rd Tissamaharamaya	"	,"Villa Palma Beach Resort	Beach Rd Pamunugama Ja-Ela	"	,"Windsor Hotel	Kandy Rd Nuwara Eliya	"	,"Ceylon Continental Hotel	No 48 Janadhipathi Mw Colombo 01"		,"Eco Jungle Hideout & Bird Sanctuary"		,"Browns Beach Rest	39/B Beach Rd Matara"	,"Hasara Guest House	Wekunugoda Rd Galle"	,"Srilak View Holiday Inn	A W Athur Sirisena Mw Haputale	"	,"The Kings Park Hotel (Pvt) Ltd	34 Sangaraja Mw Lake Round Kandy	"	,"The Soverign (Corporate Hotel)	No 100C Sri Jayawardena Mw Rajagiriya"		,"The Water Front Hotel	15 Tissawewa Rd Tissamaharamaya	"	,"Villa Palma Beach Resort	Beach Rd Pamunugama Ja-Ela"		,"Windsor Hotel	Kandy Rd Nuwara Eliya	"	,"Ceylon Continental Hotel	No 48 Janadhipathi Mw Colombo 01"		,"	Eco Jungle Hideout & Bird Sanctuary		"	,"Browns Beach Rest	39/B Beach Rd Matara	 "	,"Hasara Guest House	Wekunugoda Rd Galle"		,"Hotel Ceysands	Aluthgama	"	,"Hotel Country Comfort	32 Police Station Rd Ella	"	,"Hotel Sansu	651/31 Sir Oliver Gunathilaka Gardens Off Elvitigala"	,"Mw Narahenpita Colombo 05"	,"Hotel T K Green Garden	116/1 Polhena Beach Rd Polhena Matara"		,"Jungle Rest	Aluthwattagoda Belihuloya	"	,"	Koggala Beach Hotel	Koggala Habaraduwa	"	,"	Kothmale Holiday Bungalow	126 Nawanugawela Nayapana Gampola Kothmale"		,"Kottawatta Village	Thimbolketiya Colombage Ara Walawa Udawalawa"		,"Mount Holiday Inn	Mahiyangana Rd Hunnasgiriya	"	,"Palomino Rest & Reception Hall	292 Main Rd Batugedara Rathnapura"	,"Rock View Tour Inn	No 387 Kahatagasthenna Ruwanwella	"	,"Windsor Park Agri Holiday Resort Hingurakgoda	Hingurakgoda"	,"Mahaweli Reach Hotel	35 P B A Weerakoon Mw Kandy	 "	,"The Royal Lotus Hotel	8/4 Elibank Rd Havelock Town Colombo 05	"	,"Centuria Lake Resort	New Town Embilipitiya	"	,"Country Cottage	825 Sellakataragama Rd (Raja Mw) Kataragama"	,"	Hoel Lihini Village	Kandalama Rd Dambulla"	,"Hotel Wadula	Spring Field Kimbissa Sigiriya"	,"Priyankara Hotels (Pvt) Ltd	Kataragama Rd Tissamaharama"	,"Sandagalathenna Walauwa Holiday Bangalow	Kalaththewa Anuradhapura"	,"	Wonder Set Holiday Resort	60/2C Unique View Rd Nuwara Eliya"	,"Ran Mal Holiday Resort (Pvt) Ltd	346/5 Galle Rd Gorakana Moratuwa"	,"Peacock Beach Hotel	"	,"Casa Colombo	231 Galle Rd Colombo 04"	,"The Albatross Golfing & Holiday Resorts (Pvt) Ltd	Victoria Golf & Country Resort P O Box 07 Rajawella Digana"		,"Alankuda Beach	Alankuda Rd Ettalai Alankuda"	,"Kassapa Lions Rock Hotel	Digampathaha Kimbissa Dambulla	"	,"	Paragon Ayurveda And Holistic Health Resort	1002 Galle Matara Rd Talpe"		,"Ranveli Beach Resort	56/9 De Saram Rd Mount Lavinia	"	,"Sanasa Holiday Resorts	200 Guests/44 Cabanas Toppass Nuwara Eliya"		,"	Humbugs Restaurant	Hakgala Nuwara Eliya"	,"The Privilege	260 Samanthara Rd Molligoda Wadduwa	"	,"Hilton Colombo	2 Sir Chittampalam A Gardiner Mw Colombo 02"	,"Hotel Eden Garden	Sigiriya Rd Inamaluwa Dambulla	"	,"Randholee Luxury Resort	Herassagala Bowalawatte Kandy"	,"Senkada Rest	No 108 KII Rd Talwatte Kandy"	,"Stardust Casino	No 09 15th Lane Galle Rd Colombo 03	 "	,"	Midky Hotel (Pvt) Ltd	405 Kandy Rd Bambarakele Nuwara Eliya"	,"Wayfarers Inns	77 Rosmead Place Colombo 07	 "	,"Club Penthouse Island Resort	Tuduwa Dampe Piliyandala"	,"Manoj Holiday Inn	181 Manippay Rd Jaffna	"	,"Vernon Guest House	32/9 Esplanade Rd Bandarawela	"	,"Dammika Holiday Resort	31 Good Shed Rd Puttalam	","	Milano Tourist Rest	596/40 Stage 1 Anuradhapura	","Petters Beach Inn Guest House & Restaurant	253 Abrew Rd Kalutara North","The Nature Lovers Inn	Kanumassagala Wagawatta Poruwadanda Horana"	,"Ajantha Guest House And Restaurant	10 Park Rd Hatton","Badulla New Tourist Inn	122 Mahiyangana Rd Badulla","Danushka Safari Jeep Service	Udawalawa"," Guest Houes & Restaurant	Wijaya Rd Medaketiya Tangalle","Happy Leoni Hotel	329/6 Mihintale Rd (Off Mahinda College) Anuradhapura","	Hotel Golden Ente	Walledewala Rd Yaddehimulla Unawatuna Galle","	Hotel Green Valley - Hanwella	Colombo Rd (Old Rd) Hanwella	","	Hotel White Palace	Jayalani Waththa Dambulla Rd Thorayaya Kurunegala","Jayabima Rest	523/9 Maithripala Senanayake Mw Stage IIDahaiyagama Junction Anuradhapura"	,"Kumara Hotel And Reception HAll	Dambulla Rd Melsiripura Kurunegala"	,"Lion Inn & Restaurant Bar	Bindunuwewa Bandarawela"	,"	Mermaid Hotel & Club	Mahawaskaduwa Kalutara"	,"Palm Haven Hotel	Teppanwella Beach Rd Marawila","Pinidiya Holiday Inn	Welimada Rd Bandarawela","Resort Peacock Corridor	91 2nd Stage Detagamuwa Katharagama	","River Side Holiday Inn	27 Lower Kings St Badulla","Saman Villas	Aturuwella Bentota"	,"South Beach Resort	Koggala","	Sri Gamunu Beach Resort (Pvt) Ltd	Dalawella Unawatuna Galle","The Rafter s Retreat	Hilland Group Kitulgala","Weligama Guest Inn	2/297 Passara Rd Viharagoda Badulla","Booker Recreation (Pvt) Ltd	10 Hedges Court Colombo 10	","New Lark Nest Holiday inn	Diyatalawa Rd Ellatota Bandarawela"	,"Amanda Banquet Hall	131 Averiwatta Rd Wattala","Ashane Holiday Bangalow	Toppwalapitiya Wasgamuwa","Asiri Hotel	264 Old Galle Rd Gorakana Moratuwa	","Chilaw Rest House	Beach Rd Chilaw	","Dees Hospitality Solutions	No 80/3 Chithra Lane Colombo 05	","Hansa Surf Hotel	Galle Rd Narigama Hikkaduwa","Jade Green Villas & Restaurant	Tissa Rd Hambantota","Majestic Tourist Hotel	83/40 Ampitiya Rd Kandy	","Ramanee Holiday Bangalow	Oththakade Haputale Rd Bandarawela"	,"Sigiriya Cottage	03 Sigiriya","Willuda Inn Reception Hall	55A Kompayahena Rd Panagoda","Ayurveda Lanka Ltd	162/19 Wathuregama Ahungalla","Ayurveda Walauwa	Warahena Bentota","Calana Holiday Resourt	Hela Halpe Bandarawela"		,"Charuni Rest	599 Marata Rd Mihiripenna Thalpe"		,"	Closenberg Hotel	Closenberg Rd Magalle Galle	"	,"Colonne River Side Garden Hotel	227/2 Kegalle Rd Talduwa Avissawella","Dampe Village Resort By The Bolgoda Lake	222 Dampe Madapatha Piliyandala	","Deutsch Lanka Hotel & Restaurant	Godagama Hikkaduwa"		,"	Devon Hotels (Pvt) Ltd	51 Ampitiya Rd Kandy"		 ,"	Diyaluma Falls Inn	14/1 Diyaluma Koslanda"		,"Dunhinda Falls Inn (Pvt) Ltd	35/10 Bandaranayake Mw Badulla	"	,"Frashi Guest Inn	1/83 Pottuwil Rd Monaragala	"	,"Gaja Madara Walauwa	Kurunegala Rd Polgahawela","Great Villa Caterers	427 Galle Rd Dodanduwa"	,"High Carin Bunglow	Farm Rd Bindunuwewa Bandarawela","Hotel Aradhana	184 Richmond Hill Rd Galle"		,"Hotel Blue Wings	6th Mile Post Mirahawatta Bandarawela","Hotel Eden Hill	01 B Badulla Rd Nuwara Eliya","Hotel Hemadan	25 River Av Aluthgama","Hotel Sara (Pvt) Ltd	Araliya Gardens Pituwala Rd Elpitiya","Hotel Shalini	41/388 Harischandra Mw Anuradhapura	","Hotel Thuru Sewana	Rambukkana Rd Randeniya Hiriwadunna Kegalle"	,"Hotel Wunderbar	Robolgoda Bentota","Imali Guest Inn	132 Railway Station Rd Badulla	","Kanmark Holiday Resort & Reception Hall	Badulla Rd Uduhulpotha Banadarawela"	,"Lady Hill	Upper Dickson Rd Galle	"	,"Midky Hotel	405 Kandy Rd Bambarakele Nuwara Eliya"		,"Minidiya Tourist Guest House	4 N/2 Wasaladattha Mw Anuradhapura	"	,"Mount Resort	Nagasthenna Rd Rambukpitiya Nawalapitiya","New Pine Village Guest Inn	Uwathenna Weleyana"	,"Owinka Lake Resort	Kawatayagoda Rd Mahagonaduwa Morouthuduwa"		,"Puttalam Rest House	Rest House Puttalam","Ramanee Holiday Bungalow	Oththakade Haputale Rd Bandarawela	","Rampart Hotel (Pvt) Ltd	31 Rampart Fort Galle","Ranketha Rest	Jayanthi Mw Anuradhapura","Ranweli Holiday Inn	10/17 Pansala Rd (Hindu Kovil RD) Bandarawela"	,"Relax Mountain Guest	2A Mahiyangana R Medithala Sorannthata	"	,"Riverdale Restaurant - Coffee Lounge & Pub	46 Galle Rd Moragolla Aluthgama","Roya Parlour (Pvt) Ltd	74 Mahiyangana Rd Badulla"	,"Sea View Unawatuna	Devala Rd Unawatuna Galle"		,"Sky View Hotel	17/A Sri Dhammasiddhi Mw Asgiriya	","Sriyantha Rest	26A Sella Kataragama Rd Kataragama"	,"Sukhawathi Vegetarion Restaurant"	," Ayurvedic Clinic & Accommodation	Galle Rd Thiranagama Hikkaduwa	" ,"Villa Modarawattha	Madolduwa Rd Ahangama","Wasantha Guest House & Restaurant	Ambalangoda Rd Elpitiya	" ,"Welcombe Hotel	66 Lower Rd Orrs Hill Trincomalee","Hotel Nivahana De Luxe	23 Church Rd Nuwara Eliya","Kumudu Holiday Resort	33 Lady Maccullum Rd Nuwara Eliya"	];

/*initiate the autocomplete function on the "myInput" element, and pass along the countries array as possible autocomplete values:*/
autocomplete(document.getElementById("myInput"), countries);
autocomplete(document.getElementById("myInput1"), countries);
autocomplete(document.getElementById("myInput2"), countries);
</script>
      
      
   
  
    
    

</body>

</html>