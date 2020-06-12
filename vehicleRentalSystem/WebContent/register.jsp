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


<script src=https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js></script>
<script src=https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js></script>

 <!--Fontawesome CDN-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">


<link  rel="stylesheet" type="text/css"  href="register.css">


<style>

#footer{
  background:#333333;
  color:#ffffff;
  text-align:center;
  padding:30px;
  margin-top:9px;
  
}

</style>
</head>
<body>

<!------------------------------------ Navigation ------------------------------------------------->

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
  <a class="navbar-brand" href="customerHome.jsp">Vehicle Rental</a>
  
    <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
      <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
        
        
      </ul>

        
        
        <button class="btn btn-outline-success my-2 my-sm-8" type="submit"  ><a href="login.jsp">Sign In</a></button>
        <button class="btn btn-outline-success my-2 my-sm-8" type="submit" ><a href="register.jsp">Sign up</a></button>
        
    </div>
  </nav>
  
  
  

<!---------------------------- End of the Navigation--------------------------------------------- -->



<div class="container"  >


<div class="d-flex justify-content-center h-100 "   >

    <div class="card"  style="margin-top: 1px;margin-bottom: -50px; width:600px; height:650px;">
        <div class="card-header">
            <h3>Sign In</h3>
          
        </div>
        <div class="card-body">
            <form   action="user_register" method="POST" name="myForm" onsubmit="return validateForm()">
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="far fa-user"></i></span>
                    </div>
                    
                    <input type="text" class="form-control" placeholder="Full name "   name="name" required>
                    <h6 style="color:red;">${namemsg}</h6>
                    
                </div>



                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fas fa-envelope-open-text"></i></span>
                    </div>
                    <input type="Text" class="form-control" placeholder="email" name="email" required>
                   <h6 style="color:red;">${emailmsg}</h6>
                </div>


                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fas fa-phone-square"></i></span>
                    </div>
                    <input type="text" class="form-control" placeholder="Phone number" name="mobile" required>
                    <h6 style="color:red;">${phonenummsg}</h6>
                </div>
                
               
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fas fa-address-card"></i></span>
                    </div>
                    <input type="text" class="form-control" placeholder="Address" name="address" required>
                    <td><h6 style="color:red;">${addressmsg}</h6>
                </div>
                


                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fas fa-id-badge"></i></span>
                    </div>
                    <input type="text" class="form-control" placeholder="NIC number" name="nic" required>
                    <h6 style="color:red;">${nicmsg}</h6>
                </div>


				 <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fas fa-user"></i></span>
                    </div>
                    <input type="text" class="form-control" placeholder="User name" name="username" required>
                    <h6 style="color:red;">${usernamemsg}</h6>
                </div>
                
                
                
                

                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fas fa-unlock-alt"></i></span>
                    </div>
                    <input type="password" class="form-control" placeholder="password" name="password" required><br>
                    <td><h6 style="color:red;">${passwordmsg}</h6></td>
                </div>
                
                
                
                


                <div class="row align-items-center remember" >
                    <input type="checkbox">Remember Me
                </div>
                <div class="form-group">
                    <input type="submit" value="Register" class="btn float-right login_btn">
                </div>
                
                
                
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
					swal("Registerd", " successfully Successfully", "success");
			}
		</script>
            
            
            
            
            
            
            
            
            
            
            
            
        </div>
        <div class="card-footer"  style="margin-bottom:100px;">
            <div class="d-flex justify-content-center links"  >
                Already have account<a href="login.jsp">Sign In</a>
            </div>
          
        </div>
    </div>
</div>







</div>

	


<footer id="footer"  >
      <p>Copyright AdminStrap, &copy; 2020</p>
      
     
      
      
    </footer>





</body>
</html>