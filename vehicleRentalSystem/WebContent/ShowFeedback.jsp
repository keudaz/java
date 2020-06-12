<%@page import="java.util.ArrayList"%>



<%@page import="vehicleRental.model.Feedback"%>

<%@page import="vehicleRental.service.FeedbackService"%> 

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>
 <div class="w3-container">
  <h2></h2>

  <table  class="w3-table-all w3-hoverable">
    <thead>
      <tr class="w3-hover-text-green">
      
           
			
   
      </tr>
   
		<%
			
		FeedbackService feedbackService = new FeedbackService();
			ArrayList <Feedback> arrayList1=feedbackService.viewfeedback();

			for(Feedback feedback:arrayList1){
		%>
		
		<tr class="w3-hover-text-green">
		    <td><%=feedback.getFid() %></td>
			<td><%=feedback.getName() %></td>
			<td><%=feedback.getMsg() %></td>
			
		
			
			
			
			
		</tr>
		<%
			}
		%>	
 
   
  </table>
</div>

</body>
</html>