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

@WebServlet("/AddFeedback")
public class AddFeedback extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		 String name= request.getParameter("name");
		  String msg =request.getParameter("msg");
		 
		  
		
		   
     if(name.equals(null)||name==""||msg.equals(null)||msg==""){
		    	
		    request.setAttribute("msg","Please Enter the Value ...!!!");
		    getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
		    }
   
     
		    else {
		    	Feedback feedback=new Feedback();
		
		
		    	feedback.setName(request.getParameter("name"));
		    	feedback.setMsg(request.getParameter("msg"));
		
	    
	    request.setAttribute("msg","Successful");
	    
	    FeedbackService feedbackService=new FeedbackService();
	    feedbackService.addFeedback(feedback);
	    
	 
	  
	    
	   
	    RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/reservation1.jsp");
		dispatcher.forward(request, response);
		    }
	}


}
