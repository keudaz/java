package vehicleRental.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;


import vehicleRental.model.Reservation;

@WebServlet("/ShowReservation")
public class ShowReservation extends HttpServlet  {
	
static String val;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
 String nic= request.getParameter("nic1");
		 
		 
		 if(nic.equals(null)||nic=="") {
			 
			 request.setAttribute("msg","Please Enter the nic no...!!!");
			    getServletContext().getRequestDispatcher("/home.jsp").forward(request, response);
			 
		 }
		 else {
		
		
		
		
		
		
			 Reservation reservation=new Reservation();
       
			 reservation.setNic(request.getParameter("nic1"));
	      val=request.getParameter("nic1");
		
	   
	    RequestDispatcher dispatcher = request.getRequestDispatcher("/showReservation.jsp");
		dispatcher.forward(request, response);
		
			    
			   
	}
	}
	
	public String returnVal() {
		return val;
	}

}
