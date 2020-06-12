package vehicleRental.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;


import vehicleRental.model.Ad;
import vehicleRental.model.Payment;
import vehicleRental.util.DBConnect;

public class PaymentServiceImpl implements PaymentService {
	
	Connection connection;
	java.sql.PreparedStatement preparedStatement;

	
	  ResultSet resultSet = null; Statement statement = null;

	@Override
	public void addPayment(Payment payment) {
		try {

			connection = DBConnect.getDBConnection();

			preparedStatement = connection
					.prepareStatement("insert into payment (payId,date,nic,card,cvv) values (?,?,?,?,?)");

			preparedStatement.setInt(1, payment.getPayId());
			preparedStatement.setString(2, payment.getDate());
			preparedStatement.setString(3, payment.getNic());
			preparedStatement.setInt(4, payment.getCard());
			preparedStatement.setInt(5, payment.getCvv());

			preparedStatement.execute();
			preparedStatement.close();
			connection.close();

		} catch (ClassNotFoundException | SQLException | InstantiationException | IllegalAccessException e) {

			System.out.println(e.getMessage());

		}
		
	}

	@Override
	public ArrayList<Payment> getPayment() {
		return actionOnPayment(null);
	}
	
	private ArrayList<Payment> actionOnPayment(String payId) {
		ArrayList<Payment> paymentList = new ArrayList<Payment>();
		try {

			connection = DBConnect.getDBConnection();

			if (payId != null && !payId.isEmpty()) {

				
				  preparedStatement =
				  connection.prepareStatement("SELECT * FROM payment WHERE payment.payId = ?");
				  
				  preparedStatement.setString(1, payId);
				 
			}
			/*
			 * If ad ID is not provided for get ad option it display all ads
			 */
			else {
				preparedStatement = connection.prepareStatement("SELECT * FROM payment");
			}
			ResultSet resultSet = preparedStatement.executeQuery();

			while (resultSet.next()) {
				Payment payment = new Payment();

				payment.setPayId(resultSet.getInt(1));
				payment.setDate(resultSet.getString(2));
				payment.setNic(resultSet.getString(3));
				payment.setCard(resultSet.getInt(4));
				payment.setCvv(resultSet.getInt(5));

				paymentList.add(payment);
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
		return paymentList;
	}

	@Override
	public Payment getPaymentByID(String payId) {
		return actionOnPayment(payId).get(0);
	}

	@Override
	public Payment updatePayment(String payId, Payment payment) {
		if (payId != null && !payId.isEmpty()) {

			try {
				connection = DBConnect.getDBConnection();
				preparedStatement = connection
						.prepareStatement("UPDATE payment SET date = ?, nic = ? , card= ? , cvv= ?  where  payId =?");

				
				preparedStatement.setString(1, payment.getDate());
				preparedStatement.setString(2, payment.getNic());
				preparedStatement.setInt(3, payment.getCard());
				preparedStatement.setInt(4, payment.getCvv());
				preparedStatement.setInt(5, payment.getPayId());

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
		return getPaymentByID(payId);
	}

	@Override
	public void deletePayment(String payId) {
		if (payId != null && !payId.isEmpty()) {

			try {
				connection = DBConnect.getDBConnection();
				preparedStatement = connection.prepareStatement("delete from payment where payment.payId= ?");

				preparedStatement.setString(1, payId);
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
	
	
	public ArrayList<Payment> searchPayment(String searchText) throws SQLException, ClassNotFoundException, InstantiationException, IllegalAccessException {
		
		ArrayList<Payment> accList = new ArrayList<Payment>();
		Connection con;
		PreparedStatement pst;
		
		String f = "%";
		searchText = f + searchText + f;
		
		System.out.println(searchText+" :acc_serv");
		
		try {
			con = DBConnect.getDBConnection();
			
			pst = con.prepareStatement("SELECT payId, date, nic, card, cvv FROM payment WHERE nic LIKE ?");
			pst.setString(1, searchText);

			ResultSet rs = pst.executeQuery();
			
			while (rs.next()) {
				Payment acc = new Payment();
				// retrieve and print the values for the current row
				acc.setPayId(rs.getInt("payId"));
				acc.setDate(rs.getString("date"));
				acc.setNic(rs.getString("nic"));
				acc.setCard(rs.getInt("card"));
				acc.setCvv(rs.getInt("cvv"));
				
				accList.add(acc);
				
				System.out.println("Aa: "+acc.getNic());
			}

		} catch (ClassNotFoundException | SQLException | InstantiationException | IllegalAccessException e) {

			System.out.println(e.getMessage());
				
		}
		return accList;	
		
	}
	
	

}
