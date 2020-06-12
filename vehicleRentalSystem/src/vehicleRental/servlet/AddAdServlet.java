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
 * Servlet implementation class AddAdServlet
 */
/*@MultipartConfig(maxFileSize=16177215)*/
public class AddAdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddAdServlet() {
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
		
		Ad ad=new Ad();
		
		ad.setCategory(request.getParameter("category"));
		ad.setDescription(request.getParameter("description"));
		ad.setDate(request.getParameter("date"));
		ad.setCompany(request.getParameter("company"));
		ad.setEmail(request.getParameter("email"));
		ad.setMobile(request.getParameter("mobile"));
		
		
		//new
		/*ad.setFilePart(request.getPart("photo"));
		InputStream inputStream=null;*/
		
		
		
		AdServices adService=new AdServicesImpl();
		adService.addAd(ad);
		
		
		request.setAttribute("ad", ad);
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/WEB-INF/views/listAd.jsp");
		dispatcher.forward(request, response);
		
		}

}
