<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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

h1{
text-aign:center;
font-size:60px;
color:red;
font-weight:bold;

}


#footer{
  background:#333333;
  color:#ffffff;
  text-align:center;
  padding:30px;
  margin-top:1000px;
  
}

</style>


</head>
<body>






<!------------------------------------ Navigation ------------------------------------------------->

<nav class="navbar navbar-expand-lg navbar-dark bg-dark   fixed-top">
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
          <a class="nav-link" href="home.jsp">About Us <span class="sr-only">(current)</span></a>
        </li>
        
        <li class="nav-item active">
          <a class="nav-link" href="reservation1.jsp"> Reservation</a>
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








  <div class="container">
       
                       <div class="row">   
                                <div class="col-12"  >
                                                <!--slider starts -->
                                                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel"  ">
                                                                <ol class="carousel-indicators">
                                                                  <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                                                                  <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                                                                  <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                                                                </ol>
                                                                <div class="carousel-inner">
                                                                  <div class="carousel-item active">
                                                                    <img class="d-block w-100" src="images/slider/1.jpg" alt="First slide">
                                                                  </div>
                                                                  <div class="carousel-item">
                                                                    <img class="d-block w-100" src="images/slider/2.jpg" alt="Second slide">
                                                                  </div>
                                                                  <div class="carousel-item">
                                                                    <img class="d-block w-100" src="images/slider/3.jpg" alt="Third slide">
                                                                  </div>
                                                                </div>
                                                                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                                                                  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                                                  <span class="sr-only">Previous</span>
                                                                </a>
                                                                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                                                                  <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                                                  <span class="sr-only">Next</span>
                                                                </a>
                                                              </div>

                                                <!--slider Ends -->
                                </div>
                       </div>
<h1>About Us</h1><br><br>
<div class="w3-container">
      
      <p> A car rental, hire car, or car hire agency is a company that rents automobiles for short periods of time, generally ranging from a few hours to a few weeks. It is often organised with numerous local branches (which allow a user to return a vehicle to a different location), and primarily located near airports or busy city areas and often complemented by a website allowing online reservations.

Car rental agencies primarily serve people who require a temporary vehicle, for example, those who do not own their own car, travelers who are out of town, or owners of damaged or destroyed vehicles who are awaiting repair or insurance compensation. Car rental agencies may also serve the self-moving industry needs, by renting vans or trucks, and in certain markets, other types of vehicles such as motorcycles or scooters may also be offered.

Alongside the basic rental of a vehicle, car rental agencies typically also offer extra products such as insurance, global positioning system (GPS) navigation systems, entertainment systems, mobile phones, portable WiFi and child safety seats.
</p>
  
   <p>
        Intermediate car hire is the perfect solution for all types of general purpose driving, 
        and when you are looking for more space to carry family and friends than you get small car.
         Intermediate cars also provide a greater degree of comfort for those longer journeys.
          Enterprise Rent-A-Car offers a great choice of intermediate cars; all popular models from leading manufacturers.
           They have enough space to carry five passengers in comfort. Intermediate cars have four doors,
            so there is no need to be climbing over tilted front seats,
             a feature welcomed by passengers who aren’t very agile. You also get the benefit of a separate,
              generously-sized boot, capable of taking three cases, the family shopping, or other light cargo.
               An intermediate hire car gives you a greater sense of confidence than smaller vehicles and 
               you can be assured that with sturdy enhanced safety features,
                you and your passengers can travel in safety. Whether you are hiring an intermediate car for business or
                 personal use, for short trips or long journeys, you will find it more than meets your requirements,
                  and with Enterprise, you get the benefit of their great backup team. Take a look at
                   the Enterprise web site today to see what intermediate cars are on offer.
                   
                   </p>




		<div class="row">
		
			<div class="col-12">
					
			</div>
			
			
			
		</div>


	</div>
                        
                 
      
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
      
      
  


</body>
</html>