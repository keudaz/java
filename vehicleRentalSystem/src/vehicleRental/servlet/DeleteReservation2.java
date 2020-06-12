package vehicleRental.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vehicleRental.model.Reservation;
import vehicleRental.service.ReservationService;

@WebServlet("/DeleteReservation2")
public class DeleteReservation2 extends HttpServlet {
	
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
// String nic= request.getParameter("nic2");
 String rno =request.getParameter("rno2");	 
		 
		 if(rno.equals(null)||rno=="") {
			 
			 request.setAttribute("msg","Please Enter the rno no...!!!");
			    getServletContext().getRequestDispatcher("/AdminHome.jsp").forward(request, response);
			 
		 }
		 else {
		
		
		
		
		
		
			 Reservation reservation=new Reservation();
       
			// reservation.setNic(request.getParameter("nic2"));
			 reservation.setRno(Integer.parseInt(request.getParameter("rno2")));
			 
			 ReservationService reservationService=new ReservationService();
			 reservationService.removeReservation1(reservation);
				
	   
			 
			 
	   
	    RequestDispatcher dispatcher = request.getRequestDispatcher("/AdminHome.jsp");
		dispatcher.forward(request, response);
		
			    
			   
	}
	}
	
	


}
