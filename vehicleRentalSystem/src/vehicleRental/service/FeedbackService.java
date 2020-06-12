package vehicleRental.service;




import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import vehicleRental.model.Feedback;
import vehicleRental.util.DBConnect;

public class FeedbackService {
	
public void addFeedback(Feedback feedback) {
		
		Connection connection;
		PreparedStatement preparedStatement;
		try {
			connection = DBConnect.getDBConnection();

			preparedStatement = connection.prepareStatement("insert into feedback values (?,?,?)");
		    preparedStatement.setInt(1, feedback.getFid());
			preparedStatement.setString(2, feedback.getName());
			preparedStatement.setString(3, feedback.getMsg());
			
			
			preparedStatement.execute();			
			
		} catch (ClassNotFoundException | SQLException | InstantiationException | IllegalAccessException e) {

			System.out.println(e.getMessage());
		}
		
		
		
	}

public ArrayList<Feedback>viewfeedback(){
	
	ArrayList<Feedback> requestList = new ArrayList<>();
	Connection connection;
	
	PreparedStatement preparedStatement;

	try {
		connection = DBConnect.getDBConnection();
		
	//	String val1=new AddReservation().returnVal();
	//	String val=new ShowReservation().returnVal();
		preparedStatement = connection.prepareStatement("select * from feedback ");
	//	preparedStatement.setString(1, val);
	//	preparedStatement.setString(1, val1);
		ResultSet resultSet = preparedStatement.executeQuery();

		
		while (resultSet.next()) {
			Feedback feedback = new Feedback();
		//	reservation.setNic(resultSet.getString(1));
			feedback.setFid(resultSet.getInt(1));
			feedback.setName(resultSet.getString(2));
			feedback.setMsg(resultSet.getString(3));
			
		//	reservation.setDate(resultSet.getString(5 ));
		
		    
		    requestList.add(feedback);
		    
		  
		}
		
	
	} catch (ClassNotFoundException | SQLException | InstantiationException | IllegalAccessException e) {

		System.out.println(e.getMessage());
	}
	return requestList;
}



public void removeFeedback(Feedback feedback ) { 
	
	Connection connection;
	PreparedStatement preparedStatement;
	
	
	try {
		connection = DBConnect.getDBConnection();
		
		preparedStatement = connection.prepareStatement("delete from feedback where fid=? ");
		preparedStatement.setInt(1,feedback.getFid());
	//	preparedStatement.setString(1,reservation.getNic());
		
		preparedStatement.executeUpdate();
} catch (ClassNotFoundException | SQLException | InstantiationException | IllegalAccessException e) {

	System.out.println(e.getMessage());
}



}

 
 
	

}

