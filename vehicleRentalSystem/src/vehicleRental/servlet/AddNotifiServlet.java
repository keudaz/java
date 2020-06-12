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
 * Servlet implementation class AddNotifiServlet
 */
public class AddNotifiServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddNotifiServlet() {
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
		
		Notifi notifi=new Notifi ();
		
		notifi.setUserType(request.getParameter("usertype"));
		notifi.setDescription(request.getParameter("description"));
		
		NotifiServices notifiService=new NotifiServicesImpl();
		notifiService.addNotifi(notifi);
		
		request.setAttribute("notifi", notifi);
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/WEB-INF/views/listNotifi.jsp");
		dispatcher.forward(request, response);
	}

}
