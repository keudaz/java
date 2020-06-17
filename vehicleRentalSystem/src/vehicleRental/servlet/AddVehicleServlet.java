package vehicleRental.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vehicleRental.model.Vehicle;
import vehicleRental.service.*;

/**
 * Servlet implementation class AddVehicleServlet
 */
@MultipartConfig
public class AddVehicleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddVehicleServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Vehicle vehicle = new Vehicle();
		
		vehicle.setVehicleNo(request.getParameter("vehicleNo"));
		vehicle.setOwnerName(request.getParameter("ownerName"));
		vehicle.setVehicleType(request.getParameter("vehicleType"));
		vehicle.setPhone(request.getParameter("phoneNum"));
		vehicle.setRegNo(request.getParameter("regNo"));
		vehicle.setChassisNo(request.getParameter("chassisNum"));
		vehicle.setModel(request.getParameter("model"));
		vehicle.setColor(request.getParameter("color"));
		vehicle.setYear(request.getParameter("year"));
		vehicle.setMilage(request.getParameter("mileage"));
		vehicle.setImage(request.getParameter("imagePath"));
		vehicle.setSeats(Integer.parseInt(request.getParameter("seats")));
		
		VehicleService vehicleService = new VehicleService();
		vehicleService.addVehicle(vehicle);
		
		request.setAttribute("vehicle", vehicle); 
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/listVehicle.jsp");
		dispatcher.forward(request, response);
	}

}
