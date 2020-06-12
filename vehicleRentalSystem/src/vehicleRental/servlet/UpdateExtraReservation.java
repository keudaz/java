package vehicleRental.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vehicleRental.model.Driver;
import vehicleRental.model.Reservation;
import vehicleRental.service.ReservationService;
import vehicleRental.service.empDriverList;

@WebServlet("/UpdateExtraReservation")
public class UpdateExtraReservation extends HttpServlet {
	
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ReservationService reservationService = new ReservationService();
		
		String itype = request.getParameter("itype");
		String ndriver = request.getParameter("ndriver");
		
		Reservation reservation=new Reservation();
		
		reservation.setItype(itype);
		reservation.setNdriver(ndriver);
		
		if (ndriver.equals("Yes")) {
			
			ArrayList<Reservation> reservationList = reservationService.viewReservations();
			Reservation reservation1 = reservationList.get(0);
			
			String date = reservation1.getDate();
			String ddate = reservation1.getDdate();
			
			empDriverList empDriverList = new empDriverList();
			ArrayList<Driver> driverList = empDriverList.getAvailableDriverList(date, ddate);
			
			if (driverList.size() > 0) {
				Random rand = new Random();
		        int empid = driverList.get(rand.nextInt(driverList.size())).getEmpid();
		        
		        reservation.setEmpid(empid);
			}
			
		}
			 
		reservationService.updateReservation2(reservation);
				
		RequestDispatcher dispatcher = request.getRequestDispatcher("/charges.jsp");
		dispatcher.forward(request, response);
					   
	}
}
	
	
	


