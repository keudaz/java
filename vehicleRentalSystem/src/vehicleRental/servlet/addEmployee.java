package vehicleRental.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vehicleRental.model.Employee;
import vehicleRental.service.EmployeeServices;


public class addEmployee extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	
	
	
	
    public addEmployee() {
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
		
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String phoneNum = request.getParameter("phoneNum");
		String email = request.getParameter("email");
		String designation = request.getParameter("designation");
		String nic        =request.getParameter("nic");
		//String usertype ="employee";
		
		
		String default_username =  nic;
		String default_password  =  nic+"123" ;
		
		/*
		boolean checknumber =phoneNum.matches("-?\\d+(\\.\\d+)?");  //phone number regular expression
		
		boolean checkemail = email.matches("^([\\w\\-\\.]+)@((\\[([0-9]{1,3}\\.){3}[0-9]{1,3}\\])|(([\\w\\-]+\\.)+)([a-zA-Z]{2,4}))$");
		

		
		
		
		if(name.equals(null)||name=="") {
			request.setAttribute("namemsg", "Please enter the Name");
			getServletContext().getRequestDispatcher("/addEmployee.jsp").forward(request, response);
			
			
		}
		
		else if(address.equals(null)||address=="" ){
			
			request.setAttribute("addressmsg", "Please enter the address");
			getServletContext().getRequestDispatcher("/addEmployee.jsp").forward(request, response);
		}
		
		else if(phoneNum.equals(null)||phoneNum=="")  {
			
			request.setAttribute("phonenummsg", "Please enter the Phonenumber");
			getServletContext().getRequestDispatcher("/addEmployee.jsp").forward(request, response);
		}
		
		else if(!checknumber) {
			request.setAttribute("phonenummsg", "Please Enter valid phone number");
			getServletContext().getRequestDispatcher("/addEmployee.jsp").forward(request, response);
		}
		
		else if(phoneNum.length() !=10) {
			
			request.setAttribute("phonenummsg","Please Enter 10 digit phone number  Ex: 071 111 1111");
			getServletContext().getRequestDispatcher("/addEmployee.jsp").forward(request, response);
		
		
	
		}
		
		else if(email.equals(null)||email=="") {
			request.setAttribute("emailmsg","Please Enter Valid email");
			getServletContext().getRequestDispatcher("/addEmployee.jsp").forward(request, response);
			
		}
		
		
		else if(designation.equals(null)||designation =="" ){
			request.setAttribute("designationmsg", "Please Select the Designation");
			getServletContext().getRequestDispatcher("/AddEmployee.jsp").forward(request, response);
		}
		
		
		
		else if(nic.equals(null)||nic=="") {
			request.setAttribute("nic","Please Enter Nic number");
			getServletContext().getRequestDispatcher("/addEmployee.jsp").forward(request, response);
			
		}
		
		
		else {
			
			*/
			
			employee.setName(name);
			employee.setAddress(address);
			employee.setPhoneNum(phoneNum);
			employee.setEmail(email);
			//employee.setDesignation(designation);
			employee.setNIC(nic);
			employee.setUsername(default_username);
			employee.setPassword(default_password);
			
			employee.setUser_type(designation);
			
			
			EmployeeServices empservice  = new EmployeeServices();
			
			empservice.addEmployee(employee);
			
			
			
			request.setAttribute("employee", employee);
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/listEmployee.jsp");
			dispatcher.forward(request, response);
			
			
			
		//}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		

		
	}

}
