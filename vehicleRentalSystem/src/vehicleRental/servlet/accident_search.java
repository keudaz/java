package vehicleRental.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import vehicleRental.service.accidentServices;
import java.sql.SQLException;

/**
 * Servlet implementation class accident_search
 */
public class accident_search extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public accident_search() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
response.setContentType("text/html");
		
		String searchText = request.getParameter("acSearch");
		request.setAttribute("searchText", searchText);
		
		accidentServices as = new accidentServices();
		
		try {
			
			as.searchAccidents(searchText);
			
		} catch (ClassNotFoundException | InstantiationException | IllegalAccessException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/searchResults.jsp");
		dispatcher.forward(request, response);
		
	}

}
