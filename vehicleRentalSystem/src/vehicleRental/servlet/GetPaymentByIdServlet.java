package vehicleRental.servlet;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vehicleRental.model.Payment;
import vehicleRental.service.PaymentService;
import vehicleRental.service.PaymentServiceImpl;

/**
 * Servlet implementation class GetPaymentByIdServlet
 */
public class GetPaymentByIdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetPaymentByIdServlet() {
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

 		String payId = request.getParameter("PayId");			
		PaymentService  iPaymentService = new PaymentServiceImpl();
		Payment payment = iPaymentService.getPaymentByID(payId);

		request.setAttribute("payment", payment);
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/WEB-INF/views/GetPayment.jsp");
		dispatcher.forward(request, response);
	}

}
