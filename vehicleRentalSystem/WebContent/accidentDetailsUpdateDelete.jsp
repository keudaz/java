<%@ page import="vehicleRental.model.Accidents" %>
<%@ page import="vehicleRental.service.accidentServices" %>
<%@ page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Accident Details</title>
</head>
<body>
	            	
	<div class="modal-body">
	
				<div class="heading align-center">
                    	<h2>UPDATE  ACCIDENT  DETAILS</h2>
                </div>
	
            	<form name="acForm" action="accident_update" onsubmit="" method="post">
            	         	
            		<div class="form-group">
                    	<label for="uId">Accident ID</label>
						<input type="text" class="form-control" name="uId" value="<%=request.getAttribute("accId")%>" disabled>
						<input type="hidden" name="uId" value="<%=request.getAttribute("accId")%>">
                	</div>
            	
                	<div class="form-group">
                    	<label for="uDate">Date</label>
                    	<input type="date" class="form-control" name="uDate" required>
                	</div>
                        
	                <div class="form-group">
	                    <label for="uVNum">Vehicle Number</label>
	                    <input type="text" class="form-control" name="uVNum" required>
	                </div>
	
	                <div class="form-group">
	                    <label for="uAmount">Estimated Amount</label>
	                    <input type="number" class="form-control" name="uAmount" max="100000000" required>
	                </div>  

	                	<button type="submit" class="btn btn-outline-success my-20 my-sm-20 float-right" onClick="accident_update">Update</button>
	                	<button type="cancel" class="btn btn-outline-success my-20 my-sm-20" onClick="/accidentDetails.jsp" formnovalidate="formnovalidate">Cancel</button>             
            	</form>
       </div>

</body>
</html>