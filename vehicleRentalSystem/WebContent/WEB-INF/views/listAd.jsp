<%@page import="vehicleRental.model.Ad"%>
<%@page import="vehicleRental.service.AdServicesImpl"%>
<%@page import="vehicleRental.service.AdServices"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List Ads</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>


<style>

body{

background-image: url('5.jpg');
	background-size:cover;
	/* background-color: #1c477b; */
}

.form_content {
	margin: auto;
}
</style>
</head>
<body>

 <nav class="navbar navbar-expand-lg navbar-dark bg-dark static-top">
    <div class="container">
      <a class="navbar-brand" href="customerHome.jsp">Home</a>
      <a class="navbar-brand" href="AddAd.jsp">Add</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item active">
        </ul>
        <div class="col-md-4">
          <form action="ad_search" method="GET">
            <input type="text" class="form-control" name="q" placeholder="Search Here..." required/>
            <button class="btn btn-outline-success my-20 my-sm-20" type="submit" >Click Here</button>

          </form>
        </div>
      </div>
    </div>
  </nav>


  <!-- Page Content -->
  <div class="container">
    <div class="row">
    	<div class="form_content">
	
      			<table class="table table-striped table-dark  table-hover ">
		 
		  <tr>
                <th>Ad ID</th>
                <th>Category</th>
                <th>Description</th>
                <th>Date</th>
                <th>Company</th>
                <th>Email</th>
                <th>Mobile</th>
                
                <th>Select</th>
            </tr>

         

            
            <%
            AdServices  iAdService = new AdServicesImpl();
            
			ArrayList<Ad> arrayList = iAdService.getAd();
			
			for(Ad ad : arrayList){
			%>
			 <tr>
				<td> <%=ad.getAdId() %> </td>
				<td> <%=ad.getCategory() %> </td>
				<td> <%=ad.getDescription() %> </td>
				<td> <%=ad.getDate() %> </td>
				<td> <%=ad.getCompany()%> </td>
				<td> <%=ad.getEmail() %> </td>
				<td> <%=ad.getMobile() %> </td>
			
					<td> 
					
					<form method="POST" action="GetAdByIdServlet">
					<input type="hidden" name="adID" value="<%=ad.getAdId()%>"/>
					 <input type="submit"  class="btn btn-secondary" value= "Select Ad" class="select-button" /> 
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
  

</body>
</html>