<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add accident details</title>
</head>
<body>


	<div class="container">
    	<div class="modal-content">
        	<div class="modal-header">
            	<h4 class="modal-title w-100" id="myModalLabel">Accident Details</h4>
        	</div>

        	<div class="modal-body">
            	<form name="acForm" action="accident_form" method="post">
                	<div class="form-group">
                    	<label for="acDate">Date</label>
                    	<input type="date" class="form-control" id="acDate" name="acDate" max="today" required>
                	</div>

	                <div class="form-group">
	                    <label for="acVnum">Vehicle Number</label>
	                    <input type="search" class="form-control" id="acVnum" name="acVnum" placeholder="Enter vehicle number" required>
	                </div>
	
	                <div class="form-group">
	                    <label for="acAmount">Estimated Amount</label>
	                    <input type="number" class="form-control" id="acAmount" name="acAmount" placeholder="Estimated amount" max="100000000 required">
	                </div>
	                    
	                <div class="modal-footer">
	                	<button type="cancel" class="btn btn-primary" onClick="/accidentDetails.jsp" formnovalidate="formnovalidate">Close</button>
	                	<button type="submit" class="btn btn-primary">Save</button>
	                </div>
            	</form>
        	</div>
    	</div>
	</div>


</body>
</html>