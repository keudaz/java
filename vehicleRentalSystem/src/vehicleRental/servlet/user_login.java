package vehicleRental.servlet;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import vehicleRental.model.Users;
import vehicleRental.util.DBConnect;

/**
 * Servlet implementation class user_login
 */
public class user_login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	

       
  
	Connection con;
	
	
	
    public user_login() {
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
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		doGet(request, response);
		
		
		String name = request.getParameter("name");
		String pass = request.getParameter("pass");
		
		String usertype_customer= "customer";
		String usertype_admin= "admin";
		String usertype_driver= "Driver";
		
		
		
		
		HttpSession session = request.getSession();
		

		
		
		
		
		try {
			
			 con = DBConnect.getDBConnection();
		
			 
		
		 	Statement stmt = (Statement) con.createStatement();
		 	String  query  = "SELECT uname,upass,user_type   FROM user;";
		 	
		 	
		 	stmt.executeQuery(query);
            ResultSet rs = stmt.getResultSet();
            
            
            while(rs.next()){
                String dbUsername = rs.getString("uname");
                String dbPassword = rs.getString("upass");
                String dbusertype = rs.getString("user_type");

          
                
                if(dbUsername.equals(name)  && dbPassword.equals(pass) &&dbusertype.equals(usertype_customer) ){
                    
                    //response.sendRedirect("userDashboard.jsp");
                	
                	session.setAttribute("name",name);
                    
                    response.sendRedirect("reservation1.jsp?name="+name);
                    
                    //session.setAttribute("name", name);
            		//response.sendRedirect("userDashboard.jsp?name="+name+"");
                 
                }
               
                
                
                 if(dbUsername.equals(name)  && dbPassword.equals(pass) &&dbusertype.equals(usertype_admin) ){
                	
                	session.setAttribute("name",name);
                    
                    response.sendRedirect("AdminHome.jsp?name="+name);
                    
                   
                 
                }
                
                
                if(dbUsername.equals(name)  && dbPassword.equals(pass) &&dbusertype.equals(usertype_driver) ){
                	
                	session.setAttribute("name",name);
                    
                    response.sendRedirect("driver_Dashboard.jsp?name="+name);
                    
                   
                 
                }
                
                /*
                	request.setAttribute("errmsg","Invalid username and password");
        		    getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);
                */
                
        
                
               
            }
            
		 	
		
	   } catch (InstantiationException e) {
           e.printStackTrace();
       } catch (IllegalAccessException e) {
           e.printStackTrace();
       } catch (ClassNotFoundException e) {
           e.printStackTrace();
       } catch (SQLException e) {
           e.printStackTrace();
       }
		        
		        
		

		     
		       
		       
		
/*
			while (resultSet.next()) {
				
				
				
				 uname  =resultSet.getString("uname");
				 password =  resultSet.getString("upass");
				user_type =	resultSet.getString("user_type");
				
				
				if(uname == name &&  password == pass  && user_type == "customer") {
					
					
					//HttpSession session = request.getSession();
					//session.setAttribute("uname", uname);
					//response.sendRedirect("userDashboard.jsp?name="+name+"");
					
				}else {
				//	response.sendRedirect("home.jsp");
				}
				
				
			}
			
		
			
				
	*/		
	
	
			
	
			
			
			
		
			
			
		
			
			/*
			
			
			HttpSession session = request.getSession();
			session.setAttribute("name", name);
			response.sendRedirect("userDashboard.jsp?name="+name+"");
			
			
			*/
			
			
			
		
		
		
		
		
	
		
		
		
	}

}
