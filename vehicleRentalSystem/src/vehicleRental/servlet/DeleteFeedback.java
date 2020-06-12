package vehicleRental.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vehicleRental.model.Feedback;
import vehicleRental.service.FeedbackService;

@WebServlet("/DeleteFeedback")
public class DeleteFeedback extends HttpServlet {
	
	
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
// String nic= request.getParameter("nic2");
 String fid =request.getParameter("fid");	 
		 
		 if(fid.equals(null)||fid=="") {
			 
			 request.setAttribute("msg","Please Enter theFid no...!!!");
			    getServletContext().getRequestDispatcher("/AdminHome.jsp").forward(request, response);
			 
		 }
		 else {
		
		
		
		
		
		
			 Feedback feedback=new Feedback();
       
			// reservation.setNic(request.getParameter("nic2"));
			 feedback.setFid(Integer.parseInt(request.getParameter("fid")));
			 
			 FeedbackService feedbackService=new FeedbackService();
			 feedbackService.removeFeedback(feedback);;
				
	   
			 
			 
	   
	    RequestDispatcher dispatcher = request.getRequestDispatcher("AdminHome.jsp");
		dispatcher.forward(request, response);
		
			    
			   
	}
	}
	
	



}
