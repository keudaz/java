package vehicleRental.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import	vehicleRental.model.Payment;
import vehicleRental.service.PaymentService;
import vehicleRental.service.PaymentServiceImpl;

/**
 * Servlet implementation class UpdatePaymentServlet
 */
public class UpdatePaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdatePaymentServlet() {
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
		Payment payment = new Payment();
		String payId = request.getParameter("payId");

		int id = Integer.parseInt(payId);
		payment.setPayId(id);
		
		payment.setDate(request.getParameter("date"));
		payment.setNic(request.getParameter("nic"));
		payment.setCard(Integer.parseInt(request.getParameter("card")));
		payment.setCvv(Integer.parseInt(request.getParameter("cvv")));

		PaymentService paymentService= new PaymentServiceImpl();
		paymentService.updatePayment(payId, payment);

		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/listPayment.jsp");
		dispatcher.forward(request, response);

		payment.setPayId(id);
	}

}
