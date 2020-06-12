package vehicleRental.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vehicleRental.model.Reservation;
import vehicleRental.service.ReservationService;

public class UpdatePaymentReservation extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int paymentId = Integer.parseInt(request.getParameter("PayId"));
		
		Reservation reservation = new Reservation();
		reservation.setPaymentId(paymentId);
		
		ReservationService reservationService = new ReservationService();
		reservationService.updatePaymentReservation(reservation);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/reservation1.jsp");
		dispatcher.forward(request, response);
	}

}
