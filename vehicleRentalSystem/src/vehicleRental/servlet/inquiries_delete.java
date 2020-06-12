package vehicleRental.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vehicleRental.model.Inquiries;
import vehicleRental.service.inquiriesServices;

/**
 * Servlet implementation class inquiries_delete
 */
public class inquiries_delete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public inquiries_delete() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		Inquiries inq = new Inquiries();
		inq.setId(Integer.parseInt(request.getParameter("dId")));
		
		inquiriesServices is = new inquiriesServices();
		is.deleteInquiry(inq);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/inquiriesAdminView.jsp");
		dispatcher.forward(request, response);
		
	}

}
