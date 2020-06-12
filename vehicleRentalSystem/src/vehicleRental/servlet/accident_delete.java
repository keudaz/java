package vehicleRental.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.PreparedStatement;

import vehicleRental.model.Accidents;
import vehicleRental.service.accidentServices;

/**
 * Servlet implementation class accident_delete
 */
public class accident_delete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public accident_delete() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		Accidents acc = new Accidents();
		acc.setId(Integer.parseInt(request.getParameter("dId")));
		
		accidentServices as = new accidentServices();
		as.deleteAccident(acc);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/accidentDetails.jsp");
		dispatcher.forward(request, response);
		
	}

}
