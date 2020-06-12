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

@WebServlet("/addReservation")
public class AddReservation extends HttpServlet{

	static String val;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String nic= request.getParameter("nic1");
		String name =request.getParameter("name");
		String location =request.getParameter("location");
		String dlocation =request.getParameter("Dlocation");
		
		if(name.equals(null)||name==""||nic.equals(null)||nic==""||location.equals(null)||location==""){
			
			request.setAttribute("msg","Please Enter the Value ...!!!");
		    getServletContext().getRequestDispatcher("/reservation1.jsp").forward(request, response);
		}
		else if(nic.length()!=10) {
    	 
			request.setAttribute("msg","please enter the correct length,lenth should be equal 10 ...!!!");
		    getServletContext().getRequestDispatcher("/reservation1.jsp").forward(request, response);
		}
		else {
		    	Reservation reservation=new Reservation();
		
		    	reservation.setNic(request.getParameter("nic1"));
		    	reservation.setName(request.getParameter("name"));
		    	reservation.setLocation(request.getParameter("location"));
		    	reservation.setDlocation(request.getParameter("Dlocation"));
		    	reservation.setDate(request.getParameter("date"));
		    	reservation.setDdate(request.getParameter("Ddate"));
		    	reservation.setTime(request.getParameter("time"));
		    	reservation.setDtime(request.getParameter("Dtime"));
		    	reservation.setDistance(Float.parseFloat(request.getParameter("distance"))/1000.0f);
	    
		    	request.setAttribute("msg","Successful");
	    
		    	ReservationService reservationService=new ReservationService();
		    	reservationService.addReservation(reservation);

		    	val=request.getParameter("nic1");

		    	RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/selectVehicle.jsp");
		    	dispatcher.forward(request, response);
		}
	}
	
	public String returnVal() {
		return val;
	}


}
