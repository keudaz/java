<%@page import="vehicleRental.service.*"%>
<%@page import="vehicleRental.model.*"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Vehicle List</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

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
		color: black;
	}
	
	</style>
	<style>
    .elementz {
        border: none;
        background-image: none;
        background-color: transparent;
        -webkit-box-shadow: none;
        -moz-box-shadow: none;
        box-shadow: none;
        outline: none;
        -webkit-appearance: none;
    }

    .buttonHide {
        display: none;
    }
    /* The Modal (background) */
    .modal {
      display: none; /* Hidden by default */
      position: fixed; /* Stay in place */
      z-index: 1; /* Sit on top */
      padding-top: 100px; /* Location of the box */
      left: 0;
      top: 0;
      width: 100%; /* Full width */
      height: 100%; /* Full height */
      overflow: auto; /* Enable scroll if needed */
      background-color: rgb(0,0,0); /* Fallback color */
      background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
    }
    
    .label {
	  color: black;
	}

    /* Modal Content */
    .modal-content {
      background-color: #fefefe;
      margin: auto;
      padding: 20px;
      border: 1px solid #888;
      width: 60%;
    }

    /* The Close Button */
    .close {
      color: #aaaaaa;
      float: right;
      margin-left: 95%;
      font-size: 28px;
      font-weight: bold;
    }

    .close:hover,
    .close:focus {
      color: #000;
      text-decoration: none;
      cursor: pointer;
    }
    
</style>
	
	<script src="assets/js/core/jquery.3.2.1.min.js"></script>
	
	<script src="assets/js/sweetalert.min.js"></script>

	<link rel="stylesheet" type="text/css" href="assets/css/jquery.dataTables.css">

	<script charset="utf8" src="assets/js/jquery.dataTables.js"></script>
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
		<div class="d-flex justify-content-center" style="background-color: rgba(255,255,200,0.8);overflow-x: scroll;">
			<div class="col-md-10">
			<br>
				<div style="float:right; margin-bottom:10px;">
					<input class="btn btn-outline-primary" type="button" onclick="location.href='addVehicle.jsp';" value="Add New Driver" />
				</div>

	            <table id="table1">
                  <thead>
                      <tr>
                          <th scope="col">ID</th>
                          <th scope="col">Vehicle No</th>
                          <th scope="col">Owner Name</th>
                          <th scope="col">Vehicle Type</th>
                          <th scope="col">Phone</th>
                          <th scope="col">Registration No</th>
                          <th scope="col">Number Etched</th>
                          <th scope="col">Chassis No</th>
                          <th scope="col">Model</th>
                          <th scope="col">Color</th>
                          <th scope="col">Year</th>
                          <th scope="col">Mileage</th>
                          <th scope="col">Seats</th>
                          <th scope="col">Image</th>
                          <th scope="col">Action</th>
                      </tr>
                  </thead>
                  <tbody>
                     <%
                     		VehicleService list = new VehicleService();
							ArrayList<Vehicle> arrayList = list.getVehicleList();
				
							for (Vehicle vehicleList : arrayList) {
						%> 
                     <tr>
                         <th><%=vehicleList.getVehicleId() %></th>
                         <td><%=vehicleList.getVehicleNo() %></td>
                         <td><%=vehicleList.getOwnerName() %></td>
                         <td><%=vehicleList.getVehicleType() %></td>
                         <td><%=vehicleList.getPhone() %></td>
                         <td><%=vehicleList.getRegNo() %></td>
                         <td><%=vehicleList.getNumberEtched() %></td>
                         <td><%=vehicleList.getChassisNo() %></td>
                         <td><%=vehicleList.getModel() %></td>
                         <td><%=vehicleList.getColor() %></td>
                         <td><%=vehicleList.getYear() %></td>
                         <td><%=vehicleList.getMilage() %></td>
                         <td><%=vehicleList.getSeats() %></td>
                         <td><img src="<%=vehicleList.getImage() %>" class="img-thumbnail" style="height: 100px;width:100px"></td>
                         <td><input type="button" class="btn btn-outline-success" value="Edit" onclick="editData(<%=vehicleList.getVehicleId() %>)" id="row_edit_<%=vehicleList.getVehicleId() %>">
                             <input type="button" class="btn btn-outline-danger" value="Delete" id="row_delete_<%=vehicleList.getVehicleId() %>" onclick="deleteIncome(<%=vehicleList.getVehicleId() %>)" ></td>
                     </tr>
                     <%
						}
					%>
                  </tbody>
              </table>
				
	            <br>
	         </div>
       	</div>
	</div>
	
	<div style="display : none">
		<form action="deleteVehicleServlet" method="POST" id="deleteDriver">
			<input type="hidden" name="deleteid" id="deleteid">
		</form>
		
		<%
				
			for (Vehicle vehicleList : arrayList) {
		%> 
                  <input type="hidden" value="<%=vehicleList.getVehicleId() %>" id="row_id_<%=vehicleList.getVehicleId() %>" class="elementz" style="width:50px" readonly>
                  <input type="hidden" value="<%=vehicleList.getVehicleNo() %>" id="row_VehicleNo_<%=vehicleList.getVehicleId() %>" class="elementz" style="width:100px" readonly>
                  <input type="hidden" value="<%=vehicleList.getOwnerName() %>" id="row_OwnerName_<%=vehicleList.getVehicleId() %>" class="elementz" style="width:100px" readonly>
                  <input type="hidden" value="<%=vehicleList.getVehicleType() %>" id="row_VehicleType_<%=vehicleList.getVehicleId() %>" class="elementz" style="width:100px" readonly>
                  <input type="hidden" value="<%=vehicleList.getPhone() %>" id="row_Phone_<%=vehicleList.getVehicleId() %>" class="elementz" style="width:100px" readonly>
                  <input type="hidden" value="<%=vehicleList.getRegNo() %>" id="row_RegNo_<%=vehicleList.getVehicleId() %>" class="elementz" style="width:100px" readonly>
              	  <input type="hidden" value="<%=vehicleList.getNumberEtched() %>" id="row_NumberEtched_<%=vehicleList.getVehicleId() %>" class="elementz" style="width:100px" readonly>
                  <input type="hidden" value="<%=vehicleList.getChassisNo() %>" id="row_ChassisNo_<%=vehicleList.getVehicleId() %>" class="elementz" style="width:100px" readonly>
                  <input type="hidden" value="<%=vehicleList.getModel() %>" id="row_model_<%=vehicleList.getVehicleId() %>" class="elementz" style="width:100px" readonly>
                  <input type="hidden" value="<%=vehicleList.getColor() %>" id="row_color_<%=vehicleList.getVehicleId() %>" class="elementz" style="width:100px" readonly>
                  <input type="hidden" value="<%=vehicleList.getYear() %>" id="row_year_<%=vehicleList.getVehicleId() %>" class="elementz" style="width:100px" readonly>
              	  <input type="hidden" value="<%=vehicleList.getMilage() %>" id="row_milage_<%=vehicleList.getVehicleId() %>" class="elementz" style="width:100px" readonly>
                  <input type="hidden" value="<%=vehicleList.getSeats() %>" id="row_seats_<%=vehicleList.getVehicleId() %>" class="elementz" style="width:100px" readonly>
                  <input type="hidden" value="<%=vehicleList.getImage() %>" id="row_image_<%=vehicleList.getVehicleId() %>" class="elementz" style="width:100px" readonly>
              
              <%
		}
	%>
		
	</div>

</body>
</html>
<div id="popupEdit" class="modal">

    <div class="modal-content">
        <span class="close" >&times;</span>
        <div class="col-md-12">
            <form action="editVehicleServlet" method="POST" id="vehicleForm" enctype="multipart/form-data">
            		<input type="hidden" name="vehicleid" id="vehicleid">
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
                        <input type="file" name="image" id="image" class="form-control" />
                        <input type="hidden" id="imagePath" name="imagePath">
                    </div>
	                <input type="submit" value="Edit Driver" class="btn btn-outline-primary">
	            </form>
        </div>
    </div>
</div>
<script>

    var popupEdit = document.getElementById("popupEdit");

    var span = document.getElementsByClassName("close")[0];

    span.onclick = function () {
        popupEdit.style.display = "none";
    }

</script>
<script>
    $(document).ready(function () {

        var dataTable = $('#table1').DataTable({});

        
        });

    function editData(id) {

        var VehicleNo = '#row_VehicleNo_'+id;
        var ownerName = '#row_OwnerName_'+id;
        var vehicleType = '#row_VehicleType_'+id;
        var phone = '#row_Phone_'+id;
        var RegNo = '#row_RegNo_'+id;
        var numEtched = '#row_NumberEtched_'+id;
        var chassisNo = '#row_ChassisNo_'+id;
        var model = '#row_model_'+id;
        var color = '#row_color_'+id;
        var year = '#row_year_'+id;
        var milage = '#row_milage_'+id;
        var seats = '#row_seats_'+id;
        var image = '#row_image_'+id;

        popupEdit.style.display = "block";

        $('#vehicleid').val(id);
        $('#vehicleNo').val($(VehicleNo).val());
        $('#ownerName').val($(ownerName).val());
        $('#vehicleType').val($(vehicleType).val());
        $('#phoneNum').val($(phone).val());
        $('#regNo').val($(RegNo).val());
        $('#numEtched').val($(numEtched).val());
        $('#chassisNum').val($(chassisNo).val());
        $('#model').val($(model).val());
        $('#color').val($(color).val());
        $('#year').val($(year).val());
        $('#mileage').val($(milage).val());
        $('#seats').val($(seats).val());
        $('#imagePath').val($(image).val());

    }

    function deleteIncome(id) {

        swal({
            title: "Are You Sure?",
            text: "If You Want Delete This!",
            icon: "warning",
            buttons: true,
            dangerMode: true,
        })
            .then((willDelete) => {
                if (willDelete) {
                	$('#deleteid').val(id);
                	document.getElementById("deleteDriver").submit();
                }
            });

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
<script>

	window.onload = function(){
	    var x=${sessionScope.errors_success };
	    if("1"==x){
	        swal("Success!", "Edit Successful!", "success");
	        <% session.setAttribute("errors_success", null); %>
	    }else if("0"==x){
	        swal({
	            title: "Error",
	            text: "Somthing is wrong!",
	            icon: "warning",
	            dangerMode: true,
	        });
	        <% session.setAttribute("errors_success", null); %>
	    }else if("2"==x){
	    	swal("Success!", "Delete Successful!", "success");
	        <% session.setAttribute("errors_success", null); %>
	    }
	}

</script>