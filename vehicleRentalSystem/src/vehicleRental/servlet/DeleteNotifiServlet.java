package vehicleRental.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vehicleRental.service.NotifiServices;
import vehicleRental.service.NotifiServicesImpl;

/**
 * Servlet implementation class DeleteNotifiServlet
 */
public class DeleteNotifiServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteNotifiServlet() {
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

		String notifiId = request.getParameter("notifiId");

		NotifiServices notifiServices = new NotifiServicesImpl();
		notifiServices.deleteNotifi(notifiId);

		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/WEB-INF/views/listNotifi.jsp");
		dispatcher.forward(request, response);
	}

}
