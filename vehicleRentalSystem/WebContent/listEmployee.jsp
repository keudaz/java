<%@page import="vehicleRental.service.*"%>
<%@page import="vehicleRental.model.*"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee List</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<link rel="stylesheet"   type="text/css"  href="main.css"> 
	

<style>

body{
	/*background-color: #1c477b;*/
}


.form_content {
	margin-top: 90px;
	margin-left:50px;
}


</style>

	
	<script src="assets/js/core/jquery.3.2.1.min.js"></script>
	
	<script src="assets/js/sweetalert.min.js"></script>

	<link rel="stylesheet" type="text/css" href="assets/css/jquery.dataTables.css">

	<script charset="utf8" src="assets/js/jquery.dataTables.js"></script>
</head>
<body>


<!------------------------------------ Navigation ------------------------------------------------->

<nav class="navbar navbar-expand-lg navbar-dark bg-dark   fixed-top">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <a class="navbar-brand" href="customerHome.jsp">Vehicle Rental</a>

	<div class="collapse navbar-collapse" id="navbarTogglerDemo03">
      <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
        <li class="nav-item ">
        
          <a class="nav-link " href="addEmployee.jsp"  >Add employee <span class="sr-only">(current)</span></a>
        </li>
      
       <li class="nav-item">
          <a class="nav-link  " href="listClients.jsp"    >Manage clients</a>
        </li>
        
     
      
      </ul>

        
        
        <h4  style="color:white;">	Welcome ${name} </h4>
		<button class="btn btn-outline-success my-2 my-sm-8" type="submit">
			<a href="logout.jsp">Sign
				out</a>
		</button>
        
    </div>
  </nav>
  
  
  

<!---------------------------- End of the Navigation--------------------------------------------- -->






 <div class="container">
    <div class="row">
    
 
    
    
    
     <div class="col-12"  >
    
    

    
    
    	<div class="form_content">
	
      			<table id="table1">
                  <thead>
                      <tr>
		                <th>Employee ID</th>
		                <th>Employee Name</th>
		                <th>Employee Email</th>
		                <th>Phone number</th>
		                <th>NIC</th>
		                <th>Address</th>
		                <th>Designation</th>
		                <th>Action</th>
		            </tr>
                  </thead>
                  <tbody>
		            <%
		            EmployeeServices  employeeservices = new EmployeeServices();
					ArrayList<Employee> arrayList = employeeservices.getEmployees();
					
					for(Employee employee : arrayList){
					%>
			
					 <tr>
						<td> <%=employee.getEmpId()%> </td>
						<td> <%=employee.getName() %> </td>
						<td> <%=employee.getEmail() %> </td>
						<td> <%=employee.getPhoneNum() %> </td>
						<td> <%=employee.getNIC() %> </td>
						<td> <%=employee.getAddress() %> </td>
						<td> <%=employee.getDesignation()%> </td>
						
						
						<td>
							<form method="POST" action="GetEmployeeById">
								<input type="hidden" name="employeeID" value="<%=employee.getEmpId()%>"/>
								<input type="submit"  class="btn btn-secondary" value= "Select Employee" class="select-button" /> 
							</form>
						 </td>	
					</tr>			
					<%	
					   }
		            %>
                  </tbody>
              </table>

		
		 
		
      </div>
      
      
      </div>
   
 </div>
 
 </div>






</body>
</html>
<script>
    $(document).ready(function () {

        var dataTable = $('#table1').DataTable({});

        
        });

</script>