 package vehicleRental.servlet;


import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import vehicleRental.model.Users;
import vehicleRental.util.DBConnect;
import vehicleRental.service.UserServices;


public class user_register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public user_register() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	 
		
		response.setContentType("text/html");
		
		Users user = new Users();	
		
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phonenumber = request.getParameter("mobile");
		String address = request.getParameter("address");
		String nic = request.getParameter("nic");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		String usertype = "customer";
		
		
		
		System.out.println(phonenumber);
		
		/*
		boolean checknumber =phonenumber.matches("-?\\d+(\\.\\d+)?");  //phone number regular expression
		
		boolean checkemail = email.matches("^([\\w\\-\\.]+)@((\\[([0-9]{1,3}\\.){3}[0-9]{1,3}\\])|(([\\w\\-]+\\.)+)([a-zA-Z]{2,4}))$");
		
		boolean checkpassword =password.matches("^(?=.*[0-9]+.*)(?=.*[a-zA-Z]+.*)[0-9a-zA-Z]{6,}$");
		
		
		
		if(name.equals(null)||name=="") {
			request.setAttribute("namemsg", "Please enter the Name");
			getServletContext().getRequestDispatcher("/register.jsp").forward(request, response);
			
			
		}
		
		else if(email.equals(null)||email=="") {
			request.setAttribute("emailmsg","Please Enter Valid email");
			getServletContext().getRequestDispatcher("/register.jsp").forward(request, response);
			
		}
		
		
		else if(phonenumber.equals(null)||phonenumber=="")  {
			
			request.setAttribute("phonenummsg", "Please enter the Phonenumber");
			getServletContext().getRequestDispatcher("/register.jsp").forward(request, response);
		}
		
		else if(!checknumber) {
			request.setAttribute("phonenummsg", "Please Enter valid phone number");
			getServletContext().getRequestDispatcher("/register.jsp").forward(request, response);
		}
		
		else if(phonenumber.length() !=10) {
			
			request.setAttribute("phonenummsg","Please Enter 10 digit phone number  Ex: 071 111 1111");
			getServletContext().getRequestDispatcher("/register.jsp").forward(request, response);
		
	
		}
		

		else if(address.equals(null)||address=="" ){
			
			request.setAttribute("addressmsg", "Please enter the address");
			getServletContext().getRequestDispatcher("/register.jsp").forward(request, response);
		}
		
	else if(nic.equals(null)||nic=="" ){
			
			request.setAttribute("nicmsg", "Please enter the NIC number");
			getServletContext().getRequestDispatcher("/register.jsp").forward(request, response);
		}
		
		
		
	else if(username.equals(null)||username=="" ){
		
		request.setAttribute("usernamemsg", "Please enter the Username r");
		getServletContext().getRequestDispatcher("/register.jsp").forward(request, response);
	}
	
		
		
		
		
		
	
		else if(!checkpassword) {
			
			request.setAttribute("passwordmsg", "Password must contain at least one letter, at least one number, and be longer than six charaters.");
			getServletContext().getRequestDispatcher("/register.jsp").forward(request, response);
		}
		
		
		
		else {
		
		*/
		
		
		user.setName(name);
		user.setEmail(email);
		user.setPhoneNum(phonenumber);
		user.setAddress(address);
		user.setNIC(nic);
		user.setUsername(username);
		user.setPassword(password);
		user.setUser_type(usertype);
		
		UserServices userservices = new UserServices();
		
		userservices.registerUser(user);
		
		request.setAttribute("users", user);
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/WEB-INF/views/regs_successfullpage.jsp");
		dispatcher.forward(request, response);
		
		
		
		
		//}
		
	}

}
