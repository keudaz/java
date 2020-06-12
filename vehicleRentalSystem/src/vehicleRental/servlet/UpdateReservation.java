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

@WebServlet("/UpdateReservation")
public class UpdateReservation extends HttpServlet{
	
	
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
 String nic= request.getParameter("nic");
	String rno =request.getParameter("rno");	 
		 
		 if(rno.equals(null)||rno=="") {
			 
			 request.setAttribute("msg","Please Enter the nic no...!!!");
			    getServletContext().getRequestDispatcher("/reservation1.jsp").forward(request, response);
			 
		 }
		 else {
		
		
		
		
		
		
			 Reservation reservation=new Reservation();
       
			reservation.setNic(request.getParameter("nic"));
			
			reservation.setRno(Integer.parseInt(request.getParameter("rno")));
			 reservation.setLocation(request.getParameter("location"));
		    	
		    	reservation.setDate(request.getParameter("date"));
		    //	reservation.setNdays(Integer.parseInt(request.getParameter("ndays")));
		    //	reservation.setnDriver(request.getParameter("nDriver"));
			 
			 ReservationService reservationService=new ReservationService();
			 reservationService.updateReservation(reservation);
				
	   
		
	   
	  RequestDispatcher dispatcher = request.getRequestDispatcher("/reservation1.jsp");
    	dispatcher.forward(request, response);
		
			    
			   
	}
	}
	
	
}

