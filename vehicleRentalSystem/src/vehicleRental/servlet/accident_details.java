package vehicleRental.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.PreparedStatement;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vehicleRental.util.DBConnect;

/**
 * Servlet implementation class accident_details
 */
public class accident_details extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	Connection con;
	PreparedStatement preparedStatement;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public accident_details() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
doGet(request, response);
		
		PrintWriter out = response.getWriter();
		doGet(request, response);
		
		String id = request.getParameter("id");
		String date = request.getParameter("date");
		String vNum = request.getParameter("vNum");
		String amount = request.getParameter("amount");
		
		try {
			con = DBConnect.getDBConnection(); 
			Statement stmt =  con.createStatement();
			preparedStatement = con.prepareStatement("SELECT id,date,vNum,amount FROM accidents");
			preparedStatement.setString(1, id);
			preparedStatement.setString(2, date);
			preparedStatement.setString(3, vNum);
			preparedStatement.setString(4, amount);
			
			ResultSet rs = preparedStatement.executeQuery();
			
			
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
