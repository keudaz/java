package vehicleRental.servlet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.SQLException;


import vehicleRental.service.PaymentService;
import vehicleRental.service.PaymentServiceImpl;

/**
 * Servlet implementation class payment_search
 */
public class payment_search extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public payment_search() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String searchText = request.getParameter("paySearch");
		request.setAttribute("searchText", searchText);
		
		PaymentService as = new PaymentServiceImpl();
		
		System.out.println(searchText+" :acc_search: "+request.getAttribute("searchText"));
		
		try {
			
			as.searchPayment(searchText);
			
		} catch (InstantiationException | SQLException | ClassNotFoundException | IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/paymentSearchResults.jsp");
		dispatcher.forward(request, response);
		
	}

}
