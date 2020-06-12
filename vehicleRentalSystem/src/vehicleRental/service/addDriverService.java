package vehicleRental.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import vehicleRental.model.Driver;
import vehicleRental.util.DBConnect;

public class addDriverService {

	private int success;

	public void addDriver(Driver driver) {
		Connection connection;
		PreparedStatement preparedStatement;
		String lnumber=null;
		
		try {
			connection = DBConnect.getDBConnection();
			
			//check driver
			preparedStatement = connection.prepareStatement("select * from driver where empid=?");
			preparedStatement.setInt(1, driver.getEmpid());
			ResultSet rs = preparedStatement.executeQuery();
			
			while(rs.next())
			{
				lnumber = rs.getString(4);
			}
			
			if(lnumber == null) {
				
					preparedStatement = connection.prepareStatement("insert into driver (empid,type,lnumber,age) values (?,?,?,?)");
					preparedStatement.setInt(1, driver.getEmpid());
					preparedStatement.setString(2, driver.getJobType());
					preparedStatement.setString(3, driver.getlNumber());
					preparedStatement.setInt(4, driver.getAge());
					preparedStatement.execute();
					preparedStatement.close();
					connection.close();
					setSuccess(1);
	
				
			}else {
				setSuccess(0);
			}
			rs.close();
			
		}catch (ClassNotFoundException | SQLException | InstantiationException | IllegalAccessException  e) {
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
