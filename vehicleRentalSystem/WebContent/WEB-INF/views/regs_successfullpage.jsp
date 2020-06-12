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






    
    <!--Fontawesome CDN-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">




<link  rel="stylesheet" type="text/css"  href="login.css">

<style>

#footer{
  background:#333333;
  color:#ffffff;
  text-align:center;
  padding:30px;
  margin-top:5px;
  
}

</style>

</head>
<body>












<!------------------------------------ Navigation ------------------------------------------------->

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
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

        
        
       <button class="btn btn-outline-success my-2 my-sm-8" type="submit"  ><a href="http://localhost:8080/vehicleRentalSystem/login.jsp">Sign In</a></button>
        <button class="btn btn-outline-success my-2 my-sm-8" type="submit" ><a href="http://localhost:8080/vehicleRentalSystem/register.jsp">Sign up</a></button>
        
        
    </div>
  </nav>
  
  
  

<!---------------------------- End of the Navigation--------------------------------------------- -->




<div class="container"  >
<div class="row">
		<div class="col-12"  >
		
				<div  style="margin-top:150px; margin-left:300px;  color:white;">
						<h1>Welcome</h1><br>
						<h5>You are registerd successfully!!!</h5><br>
						
						<a href="login.jsp"><h6>Click here to Login</h6></a>
						
						
				</div>
		
		
		</div>
</div>



	
</div>



















<footer id="footer">
      <p>Copyright AdminStrap, &copy; 2017</p>
      
       <button class="btn btn-outline-success my-2 my-sm-8" type="submit" ><a href="http://localhost:8080/vehicleRentalSystem/ManagerLogin.jsp">Manager Portal</a></button>
      <button class="btn btn-outline-success my-2 my-sm-8" type="submit" ><a href="http://localhost:8080/vehicleRentalSystem/EmployeeLogin.jsp">Employee Portal</a></button>
      
      
      
    </footer>





</body>
</html>