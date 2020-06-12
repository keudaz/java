package vehicleRental.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vehicleRental.model.Ad;
import vehicleRental.service.AdServices;
import vehicleRental.service.AdServicesImpl;

/**
 * Servlet implementation class GetAdByIdServlet
 */
public class GetAdByIdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetAdByIdServlet() {
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

 		String adID = request.getParameter("adID");			
		AdServices  iAdService = new AdServicesImpl();
		Ad ad = iAdService.getAdByID(adID);

		request.setAttribute("ad", ad);
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/WEB-INF/views/GetAd.jsp");
		dispatcher.forward(request, response);
	}

}
