package vehicleRental.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnect {
	
	
	
	
private static Connection connection;
	
	public static Connection getDBConnection() throws ClassNotFoundException, SQLException, InstantiationException, IllegalAccessException {
		
		 //This creates new connection object when connection is closed or it is null
		 
		if (connection == null || connection.isClosed()) {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection( "jdbc:mysql://localhost:3306/vehicalrental", "root", "" );
			
		}
		return connection;
	}

}
