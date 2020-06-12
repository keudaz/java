package vehicleRental.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import vehicleRental.model.Employee;
import vehicleRental.service.EmployeeServices;




/**
 * Servlet implementation class UpdateEmployee
 */
public class UpdateEmployee extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateEmployee() {
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

		Employee employee = new Employee();
		String employeeID = request.getParameter("employeeID");

		int id = Integer.parseInt(employeeID);

		employee.setEmpId(id);

		
		
		employee.setName(request.getParameter("employeeName"));
		employee.setEmail(request.getParameter("email"));
		employee.setPhoneNum(request.getParameter("phonenum"));
		employee.setNIC(request.getParameter("nic"));
		employee.setAddress(request.getParameter("address"));
		employee.setDesignation(request.getParameter("designation"));
		

		EmployeeServices employeeServices = new EmployeeServices();
		employeeServices.updateEmployee(employeeID, employee);

		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/listEmployee.jsp");
		dispatcher.forward(request, response);

		employee.setEmpId(id);
		
		
		
		
		
		
	}

}
