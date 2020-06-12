package vehicleRental.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.SQLException;

import vehicleRental.service.inquiriesServices;

/**
 * Servlet implementation class inquiry_search
 */
public class inquiry_search extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public inquiry_search() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String searchText = request.getParameter("acSearch");
		request.setAttribute("searchText", searchText);
		
		inquiriesServices as = new inquiriesServices();
		
		System.out.println("this is inquiry_search: "+searchText);
		
		try {
			
			as.searchInquiries(searchText);
			
		} catch (ClassNotFoundException | InstantiationException | IllegalAccessException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/searchResultsInquiries.jsp");
		dispatcher.forward(request, response);
		
	}

}
