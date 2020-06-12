package vehicleRental.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vehicleRental.model.Accidents;
import vehicleRental.service.accidentServices;

/**
 * Servlet implementation class accident_update
 */
public class accident_update extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public accident_update() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
response.setContentType("text/html");		
		
		String accId = request.getParameter("uId");
		String accDate = request.getParameter("uDate");
		String accVNum = request.getParameter("uVNum");
		String accAmount = request.getParameter("uAmount");
		
		Accidents acc1 = new Accidents();
		
		acc1.setId(Integer.parseInt(accId));
		acc1.setDate(accDate);
		acc1.setvNum(accVNum);
		acc1.setAmount(accAmount);
		
		accidentServices as = new accidentServices();
		as.updateAccident(acc1);

		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/accidentDetails.jsp");
		dispatcher.forward(request, response);
		
	}

}
