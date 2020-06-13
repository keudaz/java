package vehicleRental.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import vehicleRental.model.Driver;
import vehicleRental.model.Vehicle;
import vehicleRental.util.DBConnect;

public class VehicleService {


	Connection connection;
	java.sql.PreparedStatement preparedStatement;

	
	  ResultSet resultSet = null; Statement statement = null;
	 

	public void addVehicle(Vehicle vehicle) {
		// TODO Auto-generated method stub
		try {

			connection = DBConnect.getDBConnection();

			preparedStatement = connection
					.prepareStatement("insert into vehicle (vehicleNo, ownerName, vehicleType, phone, regNo, numEtched, chassisNum, model, color, year, mileage, seats, image) values (?,?,?,?,?,?,?,?,?,?,?,?,?)");

			preparedStatement.setString(1, vehicle.getVehicleNo());
			preparedStatement.setString(2, vehicle.getOwnerName());
			preparedStatement.setString(3, vehicle.getVehicleType());
			preparedStatement.setString(4, vehicle.getPhone());
			preparedStatement.setString(5, vehicle.getRegNo());
			preparedStatement.setString(6, vehicle.getNumberEtched());
			preparedStatement.setString(7, vehicle.getChassisNo());
			preparedStatement.setString(8, vehicle.getModel());
			preparedStatement.setString(9, vehicle.getColor());
			preparedStatement.setString(10, vehicle.getYear());
			preparedStatement.setString(11, vehicle.getMilage());
			preparedStatement.setInt(12, vehicle.getSeats());
			preparedStatement.setString(13, vehicle.getImage());

			preparedStatement.execute();
			preparedStatement.close();
			connection.close();

		} catch (ClassNotFoundException | SQLException | InstantiationException | IllegalAccessException e) {

			System.out.println(e.getMessage());

		}

		
	}
	
	public void editVehicle(Vehicle vehicle) {
		// TODO Auto-generated method stub
		try {

			connection = DBConnect.getDBConnection();

			preparedStatement = connection
					.prepareStatement("UPDATE vehicle SET vehicleNo=?, ownerName=?, vehicleType=?, phone=?, regNo=?, numEtched=?, chassisNum=?, model=?, color=?, year=?, mileage=?, seats=?, image=? where vehicleID=?");

			preparedStatement.setString(1, vehicle.getVehicleNo());
			preparedStatement.setString(2, vehicle.getOwnerName());
			preparedStatement.setString(3, vehicle.getVehicleType());
			preparedStatement.setString(4, vehicle.getPhone());
			preparedStatement.setString(5, vehicle.getRegNo());
			preparedStatement.setString(6, vehicle.getNumberEtched());
			preparedStatement.setString(7, vehicle.getChassisNo());
			preparedStatement.setString(8, vehicle.getModel());
			preparedStatement.setString(9, vehicle.getColor());
			preparedStatement.setString(10, vehicle.getYear());
			preparedStatement.setString(11, vehicle.getMilage());
			preparedStatement.setInt(12, vehicle.getSeats());
			preparedStatement.setString(13, vehicle.getImage());
			preparedStatement.setInt(14, vehicle.getVehicleId());

			preparedStatement.execute();
			preparedStatement.close();
			connection.close();

		} catch (ClassNotFoundException | SQLException | InstantiationException | IllegalAccessException e) {

			System.out.println(e.getMessage());

		}

		
	}

	public ArrayList<Vehicle> getVehicleList() {
		
		ArrayList<Vehicle> vehicleList = new ArrayList<Vehicle>();
		Connection connection;
		PreparedStatement preparedStatement;
		
		try {
			
			connection = DBConnect.getDBConnection();
			preparedStatement = connection.prepareStatement("SELECT * FROM vehicle");
			
			ResultSet resultSet = preparedStatement.executeQuery();
			
			while (resultSet.next()) {
				
				Vehicle vehicle = new Vehicle();
				
				vehicle.setVehicleId(resultSet.getInt(1));
				vehicle.setVehicleNo(resultSet.getString(2));
				vehicle.setOwnerName(resultSet.getString(3));
				vehicle.setVehicleType(resultSet.getString(4));
				vehicle.setPhone(resultSet.getString(5));
				vehicle.setRegNo(resultSet.getString(6));
				vehicle.setNumberEtched(resultSet.getString(7));
				vehicle.setChassisNo(resultSet.getString(8));
				vehicle.setModel(resultSet.getString(9));
				vehicle.setColor(resultSet.getString(10));
				vehicle.setYear(resultSet.getString(11));
				vehicle.setMilage(resultSet.getString(12));
				vehicle.setSeats(resultSet.getInt(13));
				vehicle.setImage(resultSet.getString(14));
				
				vehicleList.add(vehicle);
				
			}
			
			preparedStatement.close();
			connection.close();
			
		}catch (ClassNotFoundException | SQLException | InstantiationException | IllegalAccessException  e) {

			System.out.println(e.getMessage());
		}
		
		return vehicleList;
	}
	
	public ArrayList<Vehicle> getAvailableVehicleList() {
		
		ArrayList<Vehicle> vehicleList = new ArrayList<Vehicle>();
		Connection connection;
		PreparedStatement preparedStatement;
		
		try {

			DateFormat df = new SimpleDateFormat("yy-MM-dd");
			Date dateobj = new Date();
			System.out.println(df.format(dateobj));
			
			connection = DBConnect.getDBConnection();
			
			preparedStatement = connection.prepareStatement("UPDATE vehicle SET available=?, resDate=? where resDate<?");
			
			preparedStatement.setInt(1,0);
			preparedStatement.setString(2,null);
			preparedStatement.setString(3,df.format(dateobj).toString());
			
			preparedStatement.executeUpdate();
			
			
			preparedStatement = connection.prepareStatement("SELECT * FROM vehicle where available=0");
			
			ResultSet resultSet = preparedStatement.executeQuery();
			
			while (resultSet.next()) {
				
				Vehicle vehicle = new Vehicle();
				
				vehicle.setVehicleId(resultSet.getInt(1));
				vehicle.setVehicleNo(resultSet.getString(2));
				vehicle.setOwnerName(resultSet.getString(3));
				vehicle.setVehicleType(resultSet.getString(4));
				vehicle.setPhone(resultSet.getString(5));
				vehicle.setRegNo(resultSet.getString(6));
				vehicle.setNumberEtched(resultSet.getString(7));
				vehicle.setChassisNo(resultSet.getString(8));
				vehicle.setModel(resultSet.getString(9));
				vehicle.setColor(resultSet.getString(10));
				vehicle.setYear(resultSet.getString(11));
				vehicle.setMilage(resultSet.getString(12));
				vehicle.setSeats(resultSet.getInt(13));
				vehicle.setImage(resultSet.getString(14));
				
				vehicleList.add(vehicle);
				
			}
			
			preparedStatement.close();
			connection.close();
			
		}catch (ClassNotFoundException | SQLException | InstantiationException | IllegalAccessException  e) {

			System.out.println(e.getMessage());
		}
		
		return vehicleList;
	}

	public Vehicle getVehicleByID(String vehicleID) {
		// TODO Auto-generated method stub
		return actionOnAd(vehicleID).get(0);
	}
	
	private ArrayList<Vehicle> actionOnAd(String vehicleID) {
		ArrayList<Vehicle> vehicleList = new ArrayList<Vehicle>();
		try {

			connection = DBConnect.getDBConnection();

			if (vehicleID != null && !vehicleID.isEmpty()) {

				
				  preparedStatement =
				  connection.prepareStatement("SELECT * FROM vehicle WHERE vehicle.vehicleID = ?");
				  
				  preparedStatement.setString(1, vehicleID);
				 
			}
			/*
			 * If ad ID is not provided for get ad option it display all ads
			 */
			else {
				preparedStatement = connection.prepareStatement("SELECT * FROM vehicle");
			}
			ResultSet resultSet = preparedStatement.executeQuery();

			while (resultSet.next()) {
				Vehicle vehicle = new Vehicle();

				/*
				 * ad.setAdId(resultSet.getInt(1)); ad.setCategory(resultSet.getString(2));
				 * ad.setDescription(resultSet.getString(3));
				 */
				
				vehicle.setVehicleId(resultSet.getInt(1));
				vehicle.setVehicleNo(resultSet.getString(2));
				vehicle.setOwnerName(resultSet.getString(3));
				vehicle.setVehicleType(resultSet.getString(4));

				/* adList.add(ad); */
				
				vehicleList.add(vehicle);
			}

		} catch (Exception e) {

		}

		finally {
			/*
			 * Close prepared statement and database connectivity at the end of transaction
			 */
			try {
				if (preparedStatement != null) {
					preparedStatement.close();
				}
				if (connection != null) {
					connection.close();
				}
			} catch (SQLException e) {
				// log.log(Level.SEVERE, e.getMessage());
			}
		}
		return vehicleList;
	}

	public Vehicle updateVehicle(String vehicleID, Vehicle vehicle) {
		// TODO Auto-generated method stub
		if ( vehicleID != null && !vehicleID.isEmpty()) {

			try {
				connection = DBConnect.getDBConnection();
				preparedStatement = connection
						.prepareStatement("UPDATE vehicle SET vehicleNo = ?, ownerName = ?, vehicleType = ?  where  vehicleID = ?");

				
				/*
				 * preparedStatement.setString(1, ad.getCategory());
				 * preparedStatement.setString(2, ad.getDescription());
				 * preparedStatement.setInt(3, ad.getAdId());
				 */
				
				preparedStatement.setString(1, vehicle.getVehicleNo());
				preparedStatement.setString(2, vehicle.getOwnerName());
				preparedStatement.setString(3, vehicle.getVehicleType());
				
				preparedStatement.executeUpdate();

			} catch (Exception e) {
			} finally {

				try {
					if (preparedStatement != null) {
						preparedStatement.close();
					}
					if (connection != null) {
						connection.close();
					}
				} catch (SQLException e) {
					// log.log(Level.SEVERE, e.getMessage());
				}
			}

		}
		return getVehicleByID(vehicleID);
	}

	
	public void deleteVehicle(int vehicleID) {

			try {
				connection = DBConnect.getDBConnection();
				preparedStatement = connection.prepareStatement("delete from vehicle where vehicleID = ?");

				preparedStatement.setInt(1, vehicleID);
				preparedStatement.executeUpdate();

			} catch (Exception e) {

			}

			finally {

				try {
					if (preparedStatement != null) {
						preparedStatement.close();
					}
					if (connection != null) {
						connection.close();
					}
				} catch (SQLException e) {
					// log.log(Level.SEVERE, e.getMessage());
				}
			}
	
		
	}
	
}
