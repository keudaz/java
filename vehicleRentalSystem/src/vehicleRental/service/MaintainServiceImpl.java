package vehicleRental.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import vehicleRental.model.Maintain;
import vehicleRental.util.DBConnect;

public class MaintainServiceImpl implements MaintainService {
	
	Connection connection;
	java.sql.PreparedStatement preparedStatement;

	
	  ResultSet resultSet = null; Statement statement = null;

	@Override
	public void addMaintain(Maintain maintain) {
		try {

			connection = DBConnect.getDBConnection();

			preparedStatement = connection
					.prepareStatement("insert into maintain (manId,vno,date,details,cost) values (?,?,?,?,?)");

			preparedStatement.setInt(1, maintain.getManId());
			preparedStatement.setString(2, maintain.getVno());
			preparedStatement.setString(3, maintain.getDate());
			preparedStatement.setString(4, maintain.getDetails());
			preparedStatement.setInt(5, maintain.getCost());

			preparedStatement.execute();
			preparedStatement.close();
			connection.close();

		} catch (ClassNotFoundException | SQLException | InstantiationException | IllegalAccessException e) {

			System.out.println(e.getMessage());

		}
		
	}

	@Override
	public ArrayList<Maintain> getMaintain() {
		return actionOnMaintain(null);
	}
	
	private ArrayList<Maintain> actionOnMaintain(String manId) {
		ArrayList<Maintain> maintainList = new ArrayList<Maintain>();
		try {

			connection = DBConnect.getDBConnection();

			if (manId != null && !manId.isEmpty()) {

				
				  preparedStatement =
				  connection.prepareStatement("SELECT * FROM maintain WHERE maintain.manId = ?");
				  
				  preparedStatement.setString(1, manId);
				 
			}
			/*
			 * If payment ID is not provided for get payment option it display all payments
			 */
			else {
				preparedStatement = connection.prepareStatement("SELECT * FROM maintain");
			}
			ResultSet resultSet = preparedStatement.executeQuery();

			while (resultSet.next()) {
				Maintain maintain = new Maintain();

				maintain.setManId(resultSet.getInt(1));
				maintain.setVno(resultSet.getString(2));
				maintain.setDate(resultSet.getString(3));
				maintain.setDetails(resultSet.getString(4));
				maintain.setCost(resultSet.getInt(5));

				maintainList.add(maintain);
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
		return maintainList;
	}

	@Override
	public Maintain getMaintainByID(String manId) {
		return actionOnMaintain(manId).get(0);
	}

	@Override
	public Maintain updateMaintain(String manId, Maintain maintain) {
		if (manId != null && !manId.isEmpty()) {

			try {
				connection = DBConnect.getDBConnection();
				preparedStatement = connection
						.prepareStatement("UPDATE maintain SET vno = ?, date = ? , details= ? , cost= ?  where  manId =?");

				
				preparedStatement.setString(1, maintain.getVno());
				preparedStatement.setString(2, maintain.getDate());
				preparedStatement.setString(3, maintain.getDetails());
				preparedStatement.setInt(4, maintain.getCost());
				preparedStatement.setInt(5, maintain.getManId());

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
		return getMaintainByID(manId);
	}

	@Override
	public void deleteMaintain(String manId) {
		if (manId != null && !manId.isEmpty()) {

			try {
				connection = DBConnect.getDBConnection();
				preparedStatement = connection.prepareStatement("delete from maintain where maintain.manId= ?");

				preparedStatement.setString(1, manId);
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
	
public ArrayList<Maintain> searchMaintain(String searchText) throws SQLException, ClassNotFoundException, InstantiationException, IllegalAccessException {
		
		ArrayList<Maintain> accList = new ArrayList<Maintain>();
		Connection con;
		PreparedStatement pst;
		
		String f = "%";
		searchText = f + searchText + f;
		
		System.out.println(searchText+" :acc_serv");
		
		try {
			con = DBConnect.getDBConnection();
			
			pst = con.prepareStatement("SELECT manId, vno, date, details, cost FROM maintain WHERE date LIKE ?");
			pst.setString(1, searchText);

			ResultSet rs = pst.executeQuery();
			
			while (rs.next()) {
				Maintain acc = new Maintain();
				// retrieve and print the values for the current row
				acc.setManId(rs.getInt("manId"));
				acc.setVno(rs.getString("vno"));
				acc.setDate(rs.getString("date"));
				acc.setDetails(rs.getString("details"));
				acc.setCost(rs.getInt("cost"));
				
				accList.add(acc);
				
				System.out.println("Aa: "+acc.getDate());
			}

		} catch (ClassNotFoundException | SQLException | InstantiationException | IllegalAccessException e) {

			System.out.println(e.getMessage());
				
		}
		return accList;	
		
	}
	
	

}
