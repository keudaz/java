package vehicleRental.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vehicleRental.model.Notifi;
import vehicleRental.service.NotifiServices;
import vehicleRental.service.NotifiServicesImpl;

/**
 * Servlet implementation class UpdateNotifiServlet
 */
public class UpdateNotifiServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateNotifiServlet() {
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
		response.setContentType("text/html");
		Notifi notifi= new Notifi();
		String notifiID = request.getParameter("notifiID");

		int id = Integer.parseInt(notifiID);
		notifi.setNotifiId(id);
		
		notifi.setDescription(request.getParameter("description"));

		NotifiServices notifiServices = new NotifiServicesImpl();
		notifiServices.updateNotifi(notifiID, notifi);

		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/WEB-INF/views/listNotifi.jsp");
		dispatcher.forward(request, response);

		notifi.setNotifiId(id);
	}

}
