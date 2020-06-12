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

@WebServlet("/UpdateVehiReservation")
public class UpdateVehiReservation extends HttpServlet {
	
	
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException { 

		Reservation reservation=new Reservation();
       
		reservation.setVtype(request.getParameter("vtype"));
		reservation.setPrice(Integer.parseInt(request.getParameter("price")));
		reservation.setCharge(Integer.parseInt(request.getParameter("charge")));
			 
		ReservationService reservationService=new ReservationService();
		reservationService.updateReservation1(reservation);

		RequestDispatcher dispatcher = request.getRequestDispatcher("/extras.jsp");
    	dispatcher.forward(request, response);
		
			    
			   
	}
}
	
	


