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
 * Servlet implementation class user_inquiries
 */
public class user_inquiries extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public user_inquiries() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.setContentType("text/html");
		Inquiries inq = new Inquiries();
		
		String category = request.getParameter("fbCategory");
		String subject = request.getParameter("fbSubject");
		String message = request.getParameter("fbMessage");
		
		inq.setCategory(category);
		inq.setSubject(subject);
		inq.setMessage(message);
		
		inquiriesServices inquiriesservices = new inquiriesServices();
		inquiriesservices.sendInquiry(inq);
		request.setAttribute("inq", inq);
		
		String nextJSP = "/reservation1.jsp";
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextJSP);
		dispatcher.forward(request, response);
		
	}

}
