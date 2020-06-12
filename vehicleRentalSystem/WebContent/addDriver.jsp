<%@page import="vehicleRental.service.*"%>
<%@page import="vehicleRental.model.*"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Add Drivers</title>
	<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" >

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
	            <form action="addDriversServlet" method="POST" id="driverForm">
	                <div class="form-group">
	                    <label for="dname">Driver Name</label>
	                    <select name="dname" id="dname" class="form-control custom-select" required>
	                        <option value="">Select Driver Name</option>
	                        <%
                        		empDriverList driveList = new empDriverList();
								ArrayList<Driver> arrayList = driveList.getDrivers();
					
								for (Driver driversList : arrayList) {
							%>
							<option value="<%=driversList.getEmpid() %>" ><%=driversList.getName() %></option>
							<%
								}
							%>
	                    </select>
	                </div>
	                <div class="form-group">
	                    <label for="dtype">Job Type</label>
	                    <select name="dtype" id="dtype" class="form-control custom-select" required>
	                        <option value="">Select Job Type</option>
	                        <option value="Full Time">Full Time</option>
	                        <option value="Part Time">Part Time</option>
	                    </select>
	                </div>
	                <div class="form-group">
	                    <label for="lnumber">Licences Number</label>
	                    <input type="text" class="form-control" name="lnumber" id="lnumber" required>
	                </div>
	                <div class="form-group">
	                    <label for="dage">Age</label>
	                    <input type="number" class="form-control" step="1" min="18" name="dage" id="dage" required>
	                </div>
	                <input type="submit" value="Add Driver" class="btn btn-outline-primary">
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
