<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Add Vehicle</title>
	<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" >
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
    <script src="assets/js/jquery.min.js"></script>
    
	<style>
	body {
		font-family: Arial, Helvetica, sans-serif;
		background-image: url('2.jpg');
		background-size: cover;
		
	}
	
	* {
		box-sizing: border-box;
	}
	
	label{
		color: white;
	}
	
	</style>
	
	<script src="assets/js/core/jquery.3.2.1.min.js"></script>
	
	<script src="assets/js/sweetalert.min.js"></script>

</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <a class="navbar-brand" href="#">Navbar</a>
  
    <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
      <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
        <li class="nav-item active">
          <a class="nav-link" href="AdminHome.jsp">Home <span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="AddAd.jsp" >Ads </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="AddNotifi.jsp" >Notifications <span class="badge badge-light">!</span></a>
        </li>
        
         <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Dropdown
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

	<div class="container">
	<br>
		<div class="d-flex justify-content-center" style="background-color: rgba(0,0,0,0.5)">
			<div class="col-md-8">
			<br>
	            <form action="AddVehicleServlet" method="POST" id="vehicleForm" enctype="multipart/form-data">
	                <div class="form-group">
	                    <label for="lnumber">Vehicle No :</label>
	                    <input type="text" class="form-control" name="vehicleNo" id="vehicleNo" required>
	                </div>
	                <div class="form-group">
	                    <label for="dage">Owner Name :</label>
	                    <input type="text" class="form-control" name="ownerName" id="ownerName" required>
	                </div>
	                <div class="form-group">
	                    <label for="dage">Vehicle Type :</label>
	                    <input type="text" class="form-control" name="vehicleType" id="vehicleType" required>
	                </div>
	                <div class="form-group">
	                    <label for="dage">Phone number :</label>
	                    <input type="number" class="form-control" name="phoneNum" id="phoneNum" required>
	                </div>
	                <div class="form-group">
	                    <label for="dage">Registration No :</label>
	                    <input type="text" class="form-control" name="regNo" id="regNo" required>
	                </div>
	                <div class="form-group">
	                    <label for="dage">No Etched :</label>
	                    <input type="text" class="form-control" name="numEtched" id="numEtched" required>
	                </div>
	                <div class="form-group">
	                    <label for="dage">Chassis No :</label>
	                    <input type="text" class="form-control" name="chassisNum" id="chassisNum" required>
	                </div>
	                <div class="form-group">
	                    <label for="dage">Model :</label>
	                    <input type="text" class="form-control" name="model" id="model" required>
	                </div>
	                <div class="form-group">
	                    <label for="dage">Color :</label>
	                    <input type="text" class="form-control" name="color" id="color" required>
	                </div>
	                <div class="form-group">
	                    <label for="dage">Year :</label>
	                    <input type="text" class="form-control" name="year" id="year" required>
	                </div>
	                <div class="form-group">
	                    <label for="dage">Mileage :</label>
	                    <input type="text" class="form-control" name="mileage" id="mileage" required>
	                </div>
	                <div class="form-group">
	                    <label for="dage">Seats :</label>
	                    <input type="number" class="form-control" name="seats" id="seats" required>
	                </div>
	                <div class="form-group">
                        <label>Image : </label>
                        <input type="file" name="image" id="image" class="form-control" required/>
                        <input type="hidden" id="imagePath" name="imagePath">
                    </div>
	                <input type="submit" value="Add Vehicle" class="btn btn-outline-primary">
	            </form>
	            <br>
				<form action="listVehicle.jsp" >
					<input type="submit" class="btn btn-primary" value="View Vehicle">
				</form>
	            <br>
	         </div>
       	</div>
	</div>

</body>
</html>
<script>

	window.onload = function(){
	    var x=${sessionScope.errors_success };
	    if("1"==x){
	        swal("Success!", "Added Successful!", "success");
	        <% session.setAttribute("errors_success", null); %>
	    }else if("0"==x){
	        swal({
	            title: "Error",
	            text: "Driver Already Exists!",
	            icon: "warning",
	            dangerMode: true,
	        });
	        <% session.setAttribute("errors_success", null); %>
	    }
	}

</script>
<script>

$(document).ready( function () {

    $('#image').on('change', function(){
        var form_data = new FormData($('#vehicleForm')[0]);
    	$.ajax({
            type: "POST",
            enctype: 'multipart/form-data',
        	url:"imageUploadServlet",
            data: form_data,
            processData: false,
            contentType: false,
            success:function(data)
            {
                $('#imagePath').val(data);
            }
        })
    });
    
} );

</script>