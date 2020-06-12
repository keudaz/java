package vehicleRental.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.ArrayList;


import vehicleRental.model.Employee;




import vehicleRental.model.Employee;
import vehicleRental.model.Users;
import vehicleRental.util.DBConnect;

public class EmployeeServices {
	
	
	Connection connection;
	PreparedStatement preparedStatement;
	
	
	ResultSet resultSet = null;
	Statement statement = null;
	
	
public void addEmployee(Employee employee) {
	
	
	
		
	
	
	
		
	
		try {
			connection = DBConnect.getDBConnection();

			preparedStatement = connection.prepareStatement("insert into user(uname,upass,uemail,fullname,phonenum,NIC,address,user_type) values (?,?,?,?,?,?,?,?)");
		
			preparedStatement.setString(1,employee.getUsername());
			preparedStatement.setString(2,employee.getPassword());
			preparedStatement.setString(3,employee.getEmail() );
			preparedStatement.setString(4,employee.getName() );
			preparedStatement.setString(5,employee.getPhoneNum() );
			preparedStatement.setString(6,employee.getNIC() );
			preparedStatement.setString(7,employee.getAddress());
			
			preparedStatement.setString(8,employee.getUser_type());
			
			preparedStatement.execute();			
		
			
		} catch (ClassNotFoundException | SQLException | InstantiationException | IllegalAccessException e) {

			System.out.println(e.getMessage());
			
			
			
		}
		

			
			
			
		
	}







//------------------------------------list employee section --------------------------
public ArrayList<Employee> getEmployees() {
	
	
	return actionOnEmployee(null);
	
	
	
}


private ArrayList<Employee> actionOnEmployee(String employeeID) {

	ArrayList<Employee> employeeList = new ArrayList<Employee>();
	try {
		
		connection = DBConnect.getDBConnection();
		
		
		
		if (employeeID != null && !employeeID.isEmpty()) {
			
			preparedStatement = connection.prepareStatement("select * from user where user.uid = ? and user_type = ?  or   user_type = ?");
			
			preparedStatement.setString(1, employeeID);
			
			preparedStatement.setString(2, "driver");
			
			preparedStatement.setString(3, "staffmember");
		}
		/*
		 * If employee ID is not provided for get employee option it display
		 * all employees
		 */
		else {
			preparedStatement = connection.prepareStatement("SELECT * FROM user where  user_type = ?  or   user_type = ?");
			preparedStatement.setString(1, "driver");
			preparedStatement.setString(2, "staffmember");
		}
		
		
		
		
		
	
	
			//preparedStatement = connection.prepareStatement("SELECT * FROM employee");
			
	
		
		ResultSet resultSet = preparedStatement.executeQuery();

		while (resultSet.next()) {
			Employee employee = new Employee();
			
			employee.setEmpId(resultSet.getInt(1));
			employee.setUsername(resultSet.getString(2));
			employee.setPassword(resultSet.getString(3));
			employee.setEmail(resultSet.getString(4));
			employee.setName(resultSet.getString(5));
			employee.setPhoneNum(resultSet.getString(6));
			employee.setNIC(resultSet.getString(7));
			employee.setAddress(resultSet.getString(8));
			employee.setDesignation(resultSet.getString(9));
			
			
			
			
			employeeList.add(employee);
			
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
	return employeeList;
}



public Employee getEmployeeByID(String empoyeeID) {
	
	return actionOnEmployee(empoyeeID).get(0);
}


//-------------------------------------End of the list employee section -------------------------------------





public Employee updateEmployee(String employeeID, Employee employee) {
	
	
	if (employeeID != null && !employeeID.isEmpty()) {


		try {
			connection = DBConnect.getDBConnection();
			preparedStatement = connection
					.prepareStatement("UPDATE employee SET efullname = ?, eemail = ? , ephonenum =?, NIC =? ,  		address =? ,  designation =?  where  eid =?" );
			
			preparedStatement.setString(1, employee.getName());
			preparedStatement.setString(2, employee.getEmail());
			preparedStatement.setString(3, employee.getPhoneNum());
			preparedStatement.setString(4, employee.getNIC());
			preparedStatement.setString(5, employee.getAddress());
			preparedStatement.setString(6, employee.getDesignation());
			preparedStatement.setInt(7, employee.getEmpId());
			
			
			
			preparedStatement.executeUpdate();

		}catch(Exception e) {
			
			
			
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
		
		return getEmployeeByID(employeeID);
	}


	
	






public void deleteEmployee(String employeeID) {
	
	
	if (employeeID != null && !employeeID.isEmpty()) {
		
				try {
							connection = DBConnect.getDBConnection();
							preparedStatement = connection
									.prepareStatement("delete from user where user.uid = ?");
							
							
							
							//int id = Integer.parseInt(employeeID);
							
							//preparedStatement.setInt(1, id);
							
							preparedStatement.setString(1, employeeID);
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
	
	
	
	
	
	
	
	

}
