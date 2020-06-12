<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Maintain</title>

<style>

body {
	font-family: Arial, Helvetica, sans-serif;
	background-image: url('1.png');
	
}

* {
	box-sizing: border-box;
}

input[type=text], select{
	width: 100%;
	padding: 12px;
	border: 12px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
	margin-top: 8px;
	margin-bottom: 16px;
	resize: vertical;
	font-size: 15px;
	
}
input[type=text], textarea {
	width: 100%;
	padding: 12px;
	border: 12px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
	margin-top: 8px;
	margin-bottom: 16px;
	resize: vertical;
	font-size: 25px;
	
}
input[type=date], textarea {
	width: 100%;
	padding: 12px;
	border: 12px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
	margin-top: 8px;
	margin-bottom: 16px;
	resize: vertical;
	font-size: 25px;
	
}

input[type=submit] {
	background-color: #008CBA;
	color: white;
	padding: 12px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	font-size: 30px;
	position:absolute;  
    transition: .5s ease;
    left: 45%; 
}

input[type=submit]:hover {
	background-color: #45a049;
}

.container {
	border-radius: 25px;
	background-color: rgba(0,0,0,0.5) !important;
	padding: 120px;
}
h1{
	text-align: center;
	color:white;
}
</style>
</head>
<body>


<h1>Maintain Form</h1>

	<div class="container">
	
		<form method="POST" action="AddMaintainServlet">
		
                <div class="form-group">
                        <label for="formGroupExampleInput">Vehicle NO</label>
                        <input type="text" class="form-control" id="formGroupExampleInput" placeholder="Vehicle number" required name="vno">
                </div>
             <div class="form-group">
              <label for="formGroupExampleInput">Date</label>
              <input type="date" class="form-control" id="formGroupExampleInput" placeholder="Date" required name="date">
            </div>
            
            <div class="form-group">
              <label for="formGroupExampleInput">Details</label>
              <input type="text" class="form-control" id="formGroupExampleInput" placeholder="Details" required name="details">
            </div>
            <div class="form-group">
              <label for="formGroupExampleInput2">Cost</label>
              <input type="text" class="form-control" id="formGroupExampleInput2" placeholder="Cost" required name="cost">
            </div>


           <input type="submit" class="btn btn-primary" value="ADD">


		</form>
		
	</div>
	<form method="POST" action="AddMaintainServlet">
			<input type="submit" class="btn btn-primary" value="View Maintain">
		</form>


</body>
</html>