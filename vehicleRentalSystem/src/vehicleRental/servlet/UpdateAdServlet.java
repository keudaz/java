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
 * Servlet implementation class UpdateAdServlet
 */
public class UpdateAdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UpdateAdServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		Ad ad = new Ad();
		String adID = request.getParameter("adID");

		int id = Integer.parseInt(adID);
		ad.setAdId(id);

		ad.setCategory(request.getParameter("category"));
		ad.setDescription(request.getParameter("description"));
		ad.setDate(request.getParameter("date"));
		ad.setCompany(request.getParameter("company"));
		ad.setEmail(request.getParameter("email"));
		ad.setMobile(request.getParameter("mobile"));
		
		

		AdServices adServices = new AdServicesImpl();
		adServices.updateAd(adID, ad);

		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/WEB-INF/views/listAd.jsp");
		dispatcher.forward(request, response);

		ad.setAdId(id);
	}

}
