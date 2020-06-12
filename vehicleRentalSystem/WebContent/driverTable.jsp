<%@page import="vehicleRental.service.*"%>
<%@page import="vehicleRental.model.*"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Drivers List</title>
	<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

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
        color: #000;
    }
    
	label{
		color: black;
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
		<div class="d-flex justify-content-center" style="background-color: rgba(255,255,200,0.8)">
			<div class="col-md-10">
			<br>
				<div style="float:right; margin-bottom:10px;">
					<input class="btn btn-outline-primary" type="button" onclick="location.href='addDriver.jsp';" value="Add New Driver" />
				</div>

	            <table id="table1">
                  <thead>
                      <tr>
                          <th scope="col">ID</th>
                          <th scope="col">Employee ID</th>
                          <th scope="col">Name</th>
                          <th scope="col">Job Type</th>
                          <th scope="col">Licences Number</th>
                          <th scope="col">Age</th>
                          <th scope="col">Action</th>
                      </tr>
                  </thead>
                  <tbody>
                     <%
                     		empDriverList driveList = new empDriverList();
							ArrayList<Driver> arrayList = driveList.getDriversList();
				
							for (Driver driversList : arrayList) {
						%> 
                     <tr>
                         <th><%=driversList.getId() %></th>
                         <td><%=driversList.getEmpid() %></td>
                         <td><%=driversList.getName() %></td>
                         <td><%=driversList.getJobType() %></td>
                         <td><%=driversList.getlNumber() %></td>
                         <td><%=driversList.getAge() %></td>
                         <td><input type="button" class="btn btn-outline-success" value="Edit" onclick="editData(<%=driversList.getId() %>)" id="row_edit_<%=driversList.getId() %>">
                             <input type="button" class="btn btn-outline-danger" value="Delete" id="row_delete_<%=driversList.getId() %>" onclick="deleteIncome(<%=driversList.getId() %>)" ></td>
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
		<form action="deleteDriversServlet" method="POST" id="deleteDriver">
			<input type="hidden" name="deleteid" id="deleteid">
		</form>
		
		<%
				
			for (Driver driversList : arrayList) {
		%> 
                  <input type="hidden" value="<%=driversList.getId() %>" id="row_id_<%=driversList.getId() %>" class="elementz" style="width:50px" readonly>
                  <input type="hidden" value="<%=driversList.getEmpid() %>" id="row_empid_<%=driversList.getId() %>" class="elementz" style="width:100px" readonly>
                  <input type="hidden" value="<%=driversList.getName() %>" id="row_name_<%=driversList.getId() %>" class="elementz" style="width:100px" readonly>
                  <input type="hidden" value="<%=driversList.getJobType() %>" id="row_type_<%=driversList.getId() %>" class="elementz" style="width:100px" readonly>
                  <input type="hidden" value="<%=driversList.getlNumber() %>" id="row_lnumber_<%=driversList.getId() %>" class="elementz" style="width:100px" readonly>
                  <input type="hidden" value="<%=driversList.getAge() %>" id="row_age_<%=driversList.getId() %>" class="elementz" style="width:100px" readonly>
              
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
            <form action="editDriversServlet" method="POST" id="driverForm">
            		<input type="hidden" name="driverid" id="driverid">
	                <div class="form-group">
	                    <label for="dname">Driver Name</label>
	                    <select name="dname" id="dname" class="form-control custom-select" disabled required>
	                        <option value="">Select Driver Name</option>
	                        <%
                        		empDriverList driveList1 = new empDriverList();
								ArrayList<Driver> arrayList1 = driveList1.getDrivers();
					
								for (Driver driversList : arrayList1) {
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

        var empid = '#row_empid_'+id;
        var type = '#row_type_'+id;
        var lnum = '#row_lnumber_'+id;
        var age = '#row_age_'+id;

        popupEdit.style.display = "block";

        $('#dname').val($(empid).val());
        $('#dtype').val($(type).val());
        $('#lnumber').val($(lnum).val());
        $('#dage').val($(age).val());
        $('#driverid').val(id);

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