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
 * Servlet implementation class accident_form
 */
public class accident_form extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public accident_form() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
doGet(request, response);
		
		response.setContentType("text/html");
		Accidents acc = new Accidents();
		
		String date = request.getParameter("acDate");
		String vNum = request.getParameter("acVnum");
		String amount = request.getParameter("acAmount");
		
		acc.setDate(date);
		acc.setvNum(vNum);
		acc.setAmount(amount);
		
		accidentServices accservices = new accidentServices();
		accservices.insertAccident(acc);
		request.setAttribute("accident", acc);
		
		String nextJSP = "/accidentDetails.jsp";
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextJSP);
		dispatcher.forward(request, response);
		
	}

}
