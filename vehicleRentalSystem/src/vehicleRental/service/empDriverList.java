package vehicleRental.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import vehicleRental.model.Driver;
import vehicleRental.util.DBConnect;

public class empDriverList {
		
	public ArrayList<Driver> getDrivers() {
		
		ArrayList<Driver> driverList = new ArrayList<Driver>();
		Connection connection;
		PreparedStatement preparedStatement;
		
		try {
			
			connection = DBConnect.getDBConnection();
			preparedStatement = connection.prepareStatement("SELECT eid,efullname FROM employee WHERE designation='Driver' and DATE_ADD(date, INTERVAL 90 DAY)< CURDATE()");
			
			ResultSet resultSet = preparedStatement.executeQuery();
			
			while (resultSet.next()) {
				
				Driver driver = new Driver();
				
				driver.setEmpid(Integer.parseInt(resultSet.getString(1)));
				driver.setName(resultSet.getString(2));
				
				driverList.add(driver);
				
			}
			
			preparedStatement.close();
			connection.close();
			
		}catch (ClassNotFoundException | SQLException | InstantiationException | IllegalAccessException  e) {

			System.out.println(e.getMessage());
		}
		
		return driverList;
	}
	
	public ArrayList<Driver> getDriversList() {
		
		ArrayList<Driver> driverList = new ArrayList<Driver>();
		Connection connection;
		PreparedStatement preparedStatement;
		
		try {
			
			connection = DBConnect.getDBConnection();
			preparedStatement = connection.prepareStatement("SELECT id,eid,efullname,type,lnumber,age,ephonenum FROM employee e,driver d WHERE e.eid=d.empid");
			
			ResultSet resultSet = preparedStatement.executeQuery();
			
			while (resultSet.next()) {
				
				Driver driver = new Driver();
				
				driver.setId(resultSet.getInt(1));
				driver.setEmpid(Integer.parseInt(resultSet.getString(2)));
				driver.setName(resultSet.getString(3));
				driver.setJobType(resultSet.getString(4));
				driver.setlNumber(resultSet.getString(5));
				driver.setAge(resultSet.getInt(6));
				driver.setPhone(resultSet.getString(7));
				
				driverList.add(driver);
				
			}
			
			preparedStatement.close();
			connection.close();
			
		}catch (ClassNotFoundException | SQLException | InstantiationException | IllegalAccessException  e) {

			System.out.println(e.getMessage());
		}
		
		return driverList;
	}
	
	public ArrayList<Driver> getDriversAvailableList() {
		
		ArrayList<Driver> driverList = new ArrayList<Driver>();
		Connection connection;
		PreparedStatement preparedStatement;
		
		try {
			
			connection = DBConnect.getDBConnection();
			preparedStatement = connection.prepareStatement("SELECT id,eid,efullname,type,lnumber,age,ephonenum FROM employee e,driver d WHERE e.eid=d.empid");
			
			ResultSet resultSet = preparedStatement.executeQuery();
			
			while (resultSet.next()) {
				
				Driver driver = new Driver();
				
				driver.setId(resultSet.getInt(1));
				driver.setEmpid(Integer.parseInt(resultSet.getString(2)));
				driver.setName(resultSet.getString(3));
				driver.setJobType(resultSet.getString(4));
				driver.setlNumber(resultSet.getString(5));
				driver.setAge(resultSet.getInt(6));
				driver.setPhone(resultSet.getString(7));
				
				driverList.add(driver);
				
			}
			
			preparedStatement.close();
			connection.close();
			
		}catch (ClassNotFoundException | SQLException | InstantiationException | IllegalAccessException  e) {

			System.out.println(e.getMessage());
		}
		
		return driverList;
	}
	
	public ArrayList<Driver> getAvailableDriverList(String date,String ddate) {
		
		ArrayList<Driver> driverList = new ArrayList<Driver>();
		Connection connection;
		PreparedStatement preparedStatement;
		
		try {
			
			connection = DBConnect.getDBConnection();
			preparedStatement = connection.prepareStatement("SELECT id,eid,efullname,type,lnumber,age,ephonenum FROM employee e,driver d WHERE e.eid=d.empid and !(empid in (SELECT empid FROM reservation WHERE ((? > date or ? > date) and (? < ddate or ? < ddate) and empid != 0)))");
			preparedStatement.setString(1, date);
			preparedStatement.setString(2, ddate);
			preparedStatement.setString(3, date);
			preparedStatement.setString(4, ddate);
			
			ResultSet resultSet = preparedStatement.executeQuery();
			
			while (resultSet.next()) {
				
				Driver driver = new Driver();
				
				driver.setId(resultSet.getInt(1));
				driver.setEmpid(Integer.parseInt(resultSet.getString(2)));
				driver.setName(resultSet.getString(3));
				driver.setJobType(resultSet.getString(4));
				driver.setlNumber(resultSet.getString(5));
				driver.setAge(resultSet.getInt(6));
				driver.setPhone(resultSet.getString(7));
				
				driverList.add(driver);
				
			}
			
			preparedStatement.close();
			connection.close();
			
		}catch (ClassNotFoundException | SQLException | InstantiationException | IllegalAccessException  e) {

			System.out.println(e.getMessage());
		}
		
		return driverList;
	}
	
	public ArrayList<Driver> getDriversLists(String date,String days) {
		
		ArrayList<Driver> driverList = new ArrayList<Driver>();
		Connection connection;
		PreparedStatement preparedStatement;
		
		try {
			
			connection = DBConnect.getDBConnection();
			preparedStatement = connection.prepareStatement("SELECT id,eid,efullname,type,lnumber,age,ephonenum FROM employee e,driver d WHERE e.eid=d.empid and !(empid in (SELECT empid FROM reservation WHERE ((?<=date) and (DATE_ADD(?, INTERVAL ? DAY)>=date)) or ((?<=DATE_ADD(date, INTERVAL ndays DAY)) and (DATE_ADD(?, INTERVAL ? DAY)>=DATE_ADD(date, INTERVAL ndays DAY))) or ((?>=date) and (?<=DATE_ADD(date, INTERVAL ndays DAY))) or ((DATE_ADD(?, INTERVAL ? DAY)>=date) and (DATE_ADD(?, INTERVAL ? DAY)<=DATE_ADD(date, INTERVAL ndays DAY)))))");
			preparedStatement.setString(1, date);
			preparedStatement.setString(2, date);
			preparedStatement.setInt(3, Integer.parseInt(days));
			preparedStatement.setString(4, date);
			preparedStatement.setString(5, date);
			preparedStatement.setInt(6, Integer.parseInt(days));
			preparedStatement.setString(7, date);
			preparedStatement.setString(8, date);
			preparedStatement.setString(9, date);
			preparedStatement.setInt(10, Integer.parseInt(days));
			preparedStatement.setString(11, date);
			preparedStatement.setInt(12, Integer.parseInt(days));
			
			ResultSet resultSet = preparedStatement.executeQuery();
			
			while (resultSet.next()) {
				
				Driver driver = new Driver();
				
				driver.setId(resultSet.getInt(1));
				driver.setEmpid(Integer.parseInt(resultSet.getString(2)));
				driver.setName(resultSet.getString(3));
				driver.setJobType(resultSet.getString(4));
				driver.setlNumber(resultSet.getString(5));
				driver.setAge(resultSet.getInt(6));
				driver.setPhone(resultSet.getString(7));
				
				driverList.add(driver);
				
			}
			
			preparedStatement.close();
			connection.close();
			
		}catch (ClassNotFoundException | SQLException | InstantiationException | IllegalAccessException  e) {

			System.out.println(e.getMessage());
		}
		
		return driverList;
	}
		
}
