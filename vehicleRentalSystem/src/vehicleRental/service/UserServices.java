package vehicleRental.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import vehicleRental.model.Employee;
import vehicleRental.model.Users;
import vehicleRental.model.Users;
import vehicleRental.util.DBConnect;





public class UserServices {
	
	
	Connection connection;
	PreparedStatement preparedStatement;
	
	
	ResultSet resultSet = null;
	Statement statement = null;
	
public void registerUser(Users user) {
		
		Connection connection;
		PreparedStatement preparedStatement;
		try {
			connection = DBConnect.getDBConnection();

			preparedStatement = connection.prepareStatement("insert into user(uname,upass,uemail,fullname,phonenum,NIC,address,user_type) values (?,?,?,?,?,?,?,?)");
		
			preparedStatement.setString(1,user.getUsername());
			preparedStatement.setString(2,user.getPassword());
			preparedStatement.setString(3,user.getEmail() );
			preparedStatement.setString(4,user.getName() );
			preparedStatement.setString(5,user.getPhoneNum() );
			preparedStatement.setString(6,user.getNIC() );
			preparedStatement.setString(7,user.getAddress());
			preparedStatement.setString(8,user.getUser_type());
			
			preparedStatement.execute();			
		
			
		} catch (ClassNotFoundException | SQLException | InstantiationException | IllegalAccessException e) {

			System.out.println(e.getMessage());
			
			
			
		}
		

			
			
			
		
	}










public ArrayList<Users> getUsers() {
	
	
	return actionOnUsers(null);
	
	
	
}


private ArrayList<Users> actionOnUsers(String userID) {

	ArrayList<Users> userlist = new ArrayList<Users>();
	try {
		
		connection = DBConnect.getDBConnection();
		
		
		
		if (userID != null && !userID.isEmpty()) {
			
			preparedStatement = connection.prepareStatement("select * from user  where user.uid = ? and  	user_type = ?");
			
			preparedStatement.setString(1, userID);
			preparedStatement.setString(2, "customer");
		}
		/*
		 * If employee ID is not provided for get employee option it display
		 * all employees
		 */
		else {
			preparedStatement = connection.prepareStatement("SELECT * FROM user where  user_type = ?");
			
			preparedStatement.setString(1, "customer");
		}
		
		
		
		
		
	
	
			//preparedStatement = connection.prepareStatement("SELECT * FROM employee");
			
	
		
		ResultSet resultSet = preparedStatement.executeQuery();

		while (resultSet.next()) {
			
			Users users = new Users();
			
			users.setUserID(resultSet.getInt(1));
			users.setUsername(resultSet.getString(2));
			users.setPassword(resultSet.getString(3));
			users.setEmail(resultSet.getString(4));
			users.setName(resultSet.getString(5));
			users.setPhoneNum(resultSet.getString(6));
			users.setNIC(resultSet.getString(7));
			users.setAddress(resultSet.getString(8));
			
			userlist.add(users);
			
		}
		
	 
	
		


	
		
	}catch(Exception e) {
		
		
	}
	
	
	finally {
		/*
		 * Close prepared statement and database connectivity at the end of
		 * transaction
		 */
		try {
			if (preparedStatement != null) {
				preparedStatement.close();
			}
			if (connection != null) {
				connection.close();
			}
		} catch (SQLException e) {
			//log.log(Level.SEVERE, e.getMessage());
		}
	}
	return userlist;
}



public Users getUsereByID(String userID) {
	
	return actionOnUsers(userID).get(0);
}







public void deleteUser(String userId) {
	
	
	if (userId != null && !userId.isEmpty()) {
		
				try {
							connection = DBConnect.getDBConnection();
							preparedStatement = connection
									.prepareStatement("delete from user where user.uid = ?");
							
							
							
							//int id = Integer.parseInt(employeeID);
							
							//preparedStatement.setInt(1, id);
							
							preparedStatement.setString(1, userId);
							preparedStatement.executeUpdate();
					
					
				
				} catch(Exception e) {
					
					
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
						//log.log(Level.SEVERE, e.getMessage());
					}
				}

	}
	
	
	
	
}



public ArrayList<Users> searchclients(String searchText) throws SQLException, ClassNotFoundException, InstantiationException, IllegalAccessException {
	
	ArrayList<Users> uList = new ArrayList<Users>();
	Connection con;
	PreparedStatement pst;
	
	String f = "%";
	searchText = f + searchText + f; // %o%
	
	System.out.println(searchText+" :ad_servicesImpl");
	
	try {
		con = DBConnect.getDBConnection();
		
		pst = con.prepareStatement("SELECT uid,uname,uemail,fullname,phonenum,NIC,address  FROM user WHERE  uname LIKE ?");
		
		pst.setString(1, searchText);

		ResultSet rs = pst.executeQuery();
		
		while (rs.next()) {
			Users user = new Users();
			// retrieve and print the values for the current row
			user.setUserID(rs.getInt("uid"));
			user.setUsername(rs.getString("uname"));
			user.setEmail(rs.getString("uemail"));
			user.setName(rs.getString("fullname"));
			user.setPhoneNum(rs.getString("phonenum"));
			user.setNIC(rs.getString("NIC"));
			user.setAddress(rs.getString("address"));
			
			
			
			uList.add(user);
			
			System.out.println("Aa: "+user.getUsername());
		}

	} catch (ClassNotFoundException | SQLException | InstantiationException | IllegalAccessException e) {

		System.out.println(e.getMessage());
			
	}
	return uList;
	
}
	
	

















}
