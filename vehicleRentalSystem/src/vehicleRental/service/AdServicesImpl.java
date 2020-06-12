package vehicleRental.service;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.sql.Connection;

import vehicleRental.model.Ad;
import vehicleRental.util.DBConnect;
import java.sql.PreparedStatement;

//import com.mysql.jdbc.Statement;

public class AdServicesImpl implements AdServices {

	Connection connection;
	java.sql.PreparedStatement preparedStatement;

	
	  ResultSet resultSet = null; Statement statement = null;
	  
	 

	public void addAd(Ad ad) {
		try {

			connection = DBConnect.getDBConnection();

			preparedStatement = connection
					.prepareStatement("insert into ad (adId,adCategory,adDescription,adDate,adCompany,adEmail,adMobile) values (?,?,?,?,?,?,?)");

			preparedStatement.setInt(1, ad.getAdId());
			preparedStatement.setString(2, ad.getCategory());
			preparedStatement.setString(3, ad.getDescription());
			preparedStatement.setString(4, ad.getDate());
			preparedStatement.setString(5, ad.getCompany());
			preparedStatement.setString(6, ad.getEmail());
			preparedStatement.setString(7, ad.getMobile());
			
		/*	Blob InputStream = null;
			preparedStatement.setBlob(4, InputStream);*/

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

	public Ad getAdByID(String adId) {

		return actionOnAd(adId).get(0);
	}

	public ArrayList<Ad> getAd() {

		return actionOnAd(null);
	}

	private ArrayList<Ad> actionOnAd(String adId) {
		ArrayList<Ad> adList = new ArrayList<Ad>();
		try {

			connection = DBConnect.getDBConnection();
			/*
			 * Before fetching ad it checks whether ad ID is
			 * available
			 */

			if (adId != null && !adId.isEmpty()) {

				
				  preparedStatement =
				  connection.prepareStatement("SELECT * FROM ad WHERE ad.adId = ?");
				  
				  preparedStatement.setString(1, adId);
				 
			}
			/*
			 * If ad ID is not provided for get ad option it display all ads
			 */
			else {
				preparedStatement = connection.prepareStatement("SELECT * FROM ad");
			}
			ResultSet resultSet = preparedStatement.executeQuery();

			while (resultSet.next()) {
				Ad ad = new Ad();

				ad.setAdId(resultSet.getInt(1));
				ad.setCategory(resultSet.getString(2));
				ad.setDescription(resultSet.getString(3));
				ad.setDate(resultSet.getString(4));
				ad.setCompany(resultSet.getString(5));
				ad.setEmail(resultSet.getString(6));
				ad.setMobile(resultSet.getString(7));
				

				adList.add(ad);
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
		return adList;
	}

	public Ad updateAd(String adId, Ad ad) {

		if (adId != null && !adId.isEmpty()) {

			try {
				connection = DBConnect.getDBConnection();
				preparedStatement = connection
						.prepareStatement("UPDATE ad SET adCategory = ? , adDescription = ? ,adDate = ? ,adCompany=?, adEmail=?, adMobile=? where  adId =?");

				
				preparedStatement.setString(1, ad.getCategory());
				preparedStatement.setString(2, ad.getDescription());
				preparedStatement.setString(3, ad.getDate());
				preparedStatement.setString(4, ad.getCompany());
				preparedStatement.setString(5, ad.getEmail());
				preparedStatement.setString(6, ad.getMobile());
				preparedStatement.setInt(7, ad.getAdId());

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
		return getAdByID(adId);
	}

	public void deleteAd(String adId) {

		if (adId != null && !adId.isEmpty()) {

			try {
				connection = DBConnect.getDBConnection();
				preparedStatement = connection.prepareStatement("delete from ad where ad.adId = ?");

				preparedStatement.setString(1, adId);
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
	
	
	
	
	
	
	
	
	
	public ArrayList<Ad> searchAds(String searchText) throws SQLException, ClassNotFoundException, InstantiationException, IllegalAccessException {
		
		ArrayList<Ad> adList = new ArrayList<Ad>();
		Connection con;
		PreparedStatement pst;
		
		String f = "%";
		searchText = f + searchText + f; // %o%
		
		System.out.println(searchText+" :ad_servicesImpl");
		
		try {
			con = DBConnect.getDBConnection();
			
			pst = con.prepareStatement("SELECT adId,adCategory,adDescription,adDate,adCompany,adEmail,adMobile FROM ad WHERE adCategory LIKE ?");
			pst.setString(1, searchText);

			ResultSet rs = pst.executeQuery();
			
			while (rs.next()) {
				Ad ad = new Ad();
				// retrieve and print the values for the current row
				ad.setAdId(rs.getInt("adId"));
				ad.setCategory(rs.getString("adCategory"));
				ad.setDescription(rs.getString("adDescription"));
				ad.setDate(rs.getString("adDate"));
				
				ad.setCompany(rs.getString("adCompany"));
				ad.setEmail(rs.getString("adEmail"));
				ad.setMobile(rs.getString("adMobile"));
				
				adList.add(ad);
				
				System.out.println("Aa: "+ad.getCategory());
			}

		} catch (ClassNotFoundException | SQLException | InstantiationException | IllegalAccessException e) {

			System.out.println(e.getMessage());
				
		}
		return adList;
		
	}
	
	
	
	
	
	
	
	
	
}
