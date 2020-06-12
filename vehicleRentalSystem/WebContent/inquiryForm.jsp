<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<style>
	body{
	background-color:gray;
	}
	.container {
	border-radius: 20px;
	background-color: rgba(0,0,0,0.5) !important;
	padding: 80px;
	font-size: 15px;
	}
	h4{
	font-size:30px;
	font-weight:bold;
	color:blue;
	font-align:center;
	}
	label{
	font-size:20px;
	font-weight:bold;
	color:black;
	}
	</style>
	
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <a class="navbar-brand" href="#"></a>
  
    <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
      <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
        <li class="nav-item active">
          <a class="nav-link" href="customerHome.jsp">Home </a>
        </li>
        <li class="nav-item active">
          <a class="nav-link" href="AddAd.jsp" >About Us </a>
        </li>
        <li class="nav-item active">
          <a class="nav-link" href="reservation1.jsp" >Reservation</a>
        </li>
        <li class="nav-item active">
          <a class="nav-link" href="AddAd.jsp" >Add</a>
        </li>
        <li class="nav-item active">
          <a class="nav-link" href="AddNotifi.jsp" >Notifications </a>
        </li>
        <li class="nav-item active">
          <a class="nav-link" href="inquiryForm.jsp" >Inquiries<span class="sr-only">(current)</span> </a>
        </li>
        
         <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
         
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
	    <div class="modal-content">
	        <div class="modal-header">
	            <h4 class="modal-title w-100" id="myModalLabel">Inquiry Form</h4>
	        </div>
	
	        <div class="modal-body">
	            <form name="fbForm" action="user_inquiries" method="post">
	                <div class="form-group">
	                    <label for="fbCategory">Category</label>
	                    <select class="form-control" id="fbCategory" name="fbCategory" required>
	                                <option>Inquiry</option>
	                                <option>Suggestion</option>
	                                <option>Complaint</option>
	                    </select>
	                </div>
	                        
	                <div class="form-group">
	                    <label for="fbSubject">Subject</label>
	                    <input type="text" class="form-control" id="fbSubject" name="fbSubject" placeholder="Enter subject" required>
	                </div>
	
	                <div class="form-group">
	                    <label for="fbMessage">Message</label>
	                    <textarea class="form-control" id="fbMessage" name="fbMessage" placeholder="Enter message" rows="3" required></textarea>
	                </div>
	                        
	                    
	                <div class="modal-footer">
	                	<button type="submit" class="btn btn-primary">Save</button>
	                	<button type="cancel" class="btn btn-primary" onClick="/reservation1.jsp" formnovalidate="formnovalidate">Cancel</button>
	                </div>
	            </form>
	        </div>
	    </div>
	</div>
	
</body>
</html>