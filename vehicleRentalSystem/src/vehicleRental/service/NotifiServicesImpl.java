package vehicleRental.service;
import java.sql.ResultSet;

import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.sql.Connection;

import vehicleRental.model.Notifi;
import vehicleRental.util.DBConnect;

public class NotifiServicesImpl implements NotifiServices{
	
	Connection connection;
java.sql.PreparedStatement preparedStatement;


ResultSet resultSet = null; Statement statement = null;


public void addNotifi(Notifi notifi) {
	try {

		connection = DBConnect.getDBConnection();

		preparedStatement = connection
				.prepareStatement("insert into notifi (notifiId,notifiUserType,notifiDescription) values (?,?,?)");

		preparedStatement.setInt(1, notifi.getNotifiId());
		preparedStatement.setString(2, notifi.getUserType());
		preparedStatement.setString(3, notifi.getDescription());

		preparedStatement.execute();
		preparedStatement.close();
		connection.close();

	} catch (ClassNotFoundException | SQLException | InstantiationException | IllegalAccessException e) {

		System.out.println(e.getMessage());

	}

}

/**
	 
	 * @throws SQLException
	 *             - Thrown when database access error occurs or this method is
	 *             called on a closed connection
	 * @throws ClassNotFoundException
	 *             - Thrown when an application tries to load in a class through
	 *             its string name using
	 * @throws SAXException
	 *             - Encapsulate a general SAX error or warning
	 * @throws IOException
	 *             - Exception produced by failed or interrupted I/O operations.
	 * @throws ParserConfigurationException
	 *             - Indicates a serious configuration error
	 * @throws NullPointerException
	 *             - Service is not available
	 * 
	 */

public Notifi getNotifiByID(String notifiId) {

	return actionOnNotifi(notifiId).get(0);
}

public ArrayList<Notifi> getNotifi() {

	return actionOnNotifi(null);
}

private ArrayList<Notifi> actionOnNotifi(String notifiId) {
	ArrayList<Notifi> notifiList = new ArrayList<Notifi>();
	try {

		connection = DBConnect.getDBConnection();

		/*
			 * Before fetching notification it checks whether notification ID is
			 * available
			 */

		if (notifiId != null && !notifiId.isEmpty()) {

			
			  preparedStatement =
			  connection.prepareStatement("SELECT * FROM notifi WHERE notifi.notifiId = ?");
			  
			  preparedStatement.setString(1, notifiId);
			 
		}
		/*
		 * If notification ID is not provided for get notification option it display all notifications
		 */
		else {
			preparedStatement = connection.prepareStatement("SELECT * FROM notifi");
		}
		ResultSet resultSet = preparedStatement.executeQuery();

		while (resultSet.next()) {
			Notifi notifi= new Notifi();

			notifi.setNotifiId(resultSet.getInt(1));
			notifi.setUserType(resultSet.getString(2));
			notifi.setDescription(resultSet.getString(3));

			notifiList.add(notifi);
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
	return notifiList;
}

public Notifi updateNotifi(String notifiId, Notifi notifi) {

	if (notifiId != null && !notifiId.isEmpty()) {

		try {
			connection = DBConnect.getDBConnection();
			preparedStatement = connection
					.prepareStatement("UPDATE notifi SET notifiDescription = ?  where  notifiId =?");

			preparedStatement.setString(1, notifi.getDescription());
			preparedStatement.setInt(2, notifi.getNotifiId());

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
	return getNotifiByID(notifiId);
}

public void deleteNotifi(String notifiId) {

	if (notifiId != null && !notifiId.isEmpty()) {

		try {
			connection = DBConnect.getDBConnection();
			preparedStatement = connection.prepareStatement("delete from notifi where notifi.notifiId = ?");

			preparedStatement.setString(1, notifiId);
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
}
