package vehicleRental.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import vehicleRental.model.Driver;
import vehicleRental.util.DBConnect;

public class editDriverService {

	private int success;
	
	public void editDriver(Driver driver) {
		Connection connection;
		PreparedStatement preparedStatement;

		try {
			connection = DBConnect.getDBConnection();
			
			//insert value
			preparedStatement = connection.prepareStatement("UPDATE driver SET type=?,lnumber=?,age=? where id=?");
			preparedStatement.setString(1, driver.getJobType());
			preparedStatement.setString(2, driver.getlNumber());
			preparedStatement.setInt(3, driver.getAge());
			preparedStatement.setInt(4, driver.getId());
			preparedStatement.execute();
			preparedStatement.close();
			connection.close();
			setSuccess(1);
			
		
		}catch (ClassNotFoundException | SQLException | InstantiationException | IllegalAccessException  e) {
			setSuccess(0);
			System.out.println(e.getMessage());
		}
	}
	
	public int getSuccess() {
		return success;
	}

	public void setSuccess(int success) {
		this.success = success;
	}

}
