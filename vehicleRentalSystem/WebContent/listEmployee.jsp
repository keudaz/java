<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
 <%@page import="vehicleRental.model.Employee"%>
<%@page import="java.util.ArrayList"%>   



 <%@page import="vehicleRental.service.EmployeeServices"%>

    
    
    
    
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

body{
	/*background-color: #1c477b;*/
}


.form_content {
	margin-top: 90px;
	margin-left:50px;
}


</style>


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
	
      			<table    class="table table-striped table-dark  table-hover">
		 
		 
		  <tr>
                <th>Employee ID</th>
                <th>Employee Name</th>
                <th>Employee Email</th>
                <th>Phone number</th>
                <th>NIC</th>
                <th>Address</th>
                <th>Designation</th>
                
            </tr>
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
		</table>
		
		 
		
      </div>
      
      
      </div>
   
 </div>
 
 </div>






</body>
</html>