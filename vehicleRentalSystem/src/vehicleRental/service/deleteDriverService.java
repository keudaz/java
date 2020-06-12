package vehicleRental.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import vehicleRental.model.Driver;
import vehicleRental.util.DBConnect;

public class deleteDriverService {

	private int success;
	
	public void deleteDriver(Driver driver) {
		
		Connection connection;
		PreparedStatement preparedStatement;
		
		try {
			connection = DBConnect.getDBConnection();
			
			//delete type
			preparedStatement = connection.prepareStatement("DELETE FROM driver WHERE id=?");
			preparedStatement.setInt(1, driver.getId());
			preparedStatement.execute();
			
			setSuccess(1);
		
		}catch (ClassNotFoundException | SQLException | InstantiationException | IllegalAccessException  e) {
			setSuccess(0);
		}
		
	}
	
	public int getSuccess() {
		return success;
	}

	public void setSuccess(int success) {
		this.success = success;
	}

}
