package vehicleRental.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import vehicleRental.model.Driver;
import vehicleRental.service.deleteDriverService;
import vehicleRental.service.editDriverService;

/**
 * Servlet implementation class deleteDriversServlet
 */
@WebServlet("/deleteDriversServlet")
public class deleteDriversServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public deleteDriversServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/driverTable.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Driver driver = new Driver();
		
		driver.setId(Integer.parseInt(request.getParameter("deleteid")));
		
		deleteDriverService deleteDrivers = new deleteDriverService();
		deleteDrivers.deleteDriver(driver);
		
		if(deleteDrivers.getSuccess()==1) {
			HttpSession session = request.getSession();
			session.setAttribute("errors_success",2);
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/driverTable.jsp");
			dispatcher.forward(request, response);
		}else if(deleteDrivers.getSuccess()==0) {
			HttpSession session = request.getSession();
			session.setAttribute("errors_success",0);
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/driverTable.jsp");
			dispatcher.forward(request, response);
		}
		
	}

}
