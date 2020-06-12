package vehicleRental.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import vehicleRental.service.UserServices;
import vehicleRental.util.DBConnect;
import vehicleRental.model.Users;
import vehicleRental.service.UserServices;
/**
 * Servlet implementation class change_password
 */
public class change_password extends HttpServlet {
	
	
	Connection con;
	PreparedStatement preparedStatement;
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public change_password() {
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

		//Users 	users = new Users();
		String username =request.getParameter("username");
				
				
		String password =request.getParameter("password");	
		
	
		
		
		try {
			/*
			 con = DBConnect.getDBConnection();
			 
			 
			Statement stmt =  con.createStatement();
			
			
			preparedStatement = con.prepareStatement("UPDATE user  SET upass = ?   where  uname = ?" );
			
			preparedStatement.setString(1, password);
			
			preparedStatement.setString(2, username);

			
			ResultSet rs = preparedStatement.executeQuery();
			
		
			
			 con = DBConnect.getDBConnection();
			Statement stmt = con.createStatement();
			String sql = "UPDATE user  SET upass = '"+username+"'  where  uname ='"+password+"'";
			
			stmt.executeUpdate(sql);
			
		*/	
	
		
			con = DBConnect.getDBConnection();
			preparedStatement = con
					.prepareStatement("UPDATE user  SET upass = ?   where  uname = ?" );
			
			preparedStatement.setString(1,password);
			preparedStatement.setString(2,username);
			
			
			
			preparedStatement.executeUpdate();
		
		
		
		
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InstantiationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		
	
		
	}

}
