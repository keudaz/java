package vehicleRental.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;





import java.sql.Statement;


import vehicleRental.model.Reservation;

import vehicleRental.util.DBConnect;
import vehicleRental.servlet.ShowReservation;


public class ReservationService {
	
	
	
	/*public boolean isAvailable(Reservation res)  {

	Connection connection;
	PreparedStatement preparedStatement;
	boolean status=false;
	try {
		connection = DBConnect.getDBConnection();
		preparedStatement = connection.prepareStatement("select date , ddate from reservation where nic=?");
		preparedStatement.setString(1, res.getNic());
		ResultSet resultSet = preparedStatement.executeQuery();
		
		SimpleDateFormat sdfo = new SimpleDateFormat("yyyy-MM-dd"); 
		Date pickDate = null,dropDate;

		try {
			
			
			Date pDate = sdfo.parse(res.getDate().replaceAll("/", "-"));
			Date dDate = sdfo.parse(res.getDate().replaceAll("/", "-"));
			while (resultSet.next()) {
				 pickDate =sdfo.parse(resultSet.getString("date"));
				 dropDate =sdfo.parse(resultSet.getString("ddate"));
			}
			
			if (pickDate.before(pDate)) {
				status = true;
			}

	
		} catch ( ParseException e) {
			
			e.printStackTrace();
		}
		
		
		
		
	}catch(ClassNotFoundException | SQLException | InstantiationException | IllegalAccessException e) {
		e.printStackTrace();
	}
	
	return status;
	
}*/
	
public void addReservation(Reservation reservation)  {
	Connection connection;
		PreparedStatement preparedStatement;
		
		
		
		try {
			connection = DBConnect.getDBConnection();
			
			
		//if(isAvailable(reservation)) {
			
			preparedStatement = connection.prepareStatement("insert into reservation values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
		
			preparedStatement.setInt(1,reservation.getRno());
			preparedStatement.setString(2, reservation.getNic());
			preparedStatement.setString(3, reservation.getName());
			preparedStatement.setString(4, reservation.getLocation());
			preparedStatement.setString(5, reservation.getDate());
			preparedStatement.setString(6, reservation.getTime());
			preparedStatement.setString(7, reservation.getDlocation());
			preparedStatement.setString(8, reservation.getDdate());
			preparedStatement.setString(9, reservation.getDtime());
			preparedStatement.setFloat(10, reservation.getDistance());
			preparedStatement.setString(11, reservation.getVtype());
			preparedStatement.setInt(12,reservation.getPrice());
			preparedStatement.setInt(13,reservation.getCharge());
			preparedStatement.setString(14, reservation.getItype());
			preparedStatement.setString(15,reservation.getNdriver());
			preparedStatement.setInt(16,reservation.getEmpid());
			preparedStatement.setInt(17,reservation.getPaymentId());
			
			preparedStatement.execute();			
		//}
		} catch (ClassNotFoundException | SQLException | InstantiationException | IllegalAccessException e) {

			System.out.println(e.getMessage());
		}
		
		
		
}

 public ArrayList<Reservation>viewReservations(){
	
	ArrayList<Reservation> requestList = new ArrayList<>();
	Connection connection;
	
	PreparedStatement preparedStatement;

	try {
		connection = DBConnect.getDBConnection();
		
	//	String val1=new AddReservation().returnVal();
		//String val=new ShowReservation().returnVal();
		preparedStatement = connection.prepareStatement("select * from reservation ORDER BY rno DESC LIMIT 1");
		//preparedStatement.setString(1, val);
		//if (val1 != null) {
		//	preparedStatement.setString(1, val1);
	//	} else if (val != null) {
		//	preparedStatement.setString(1, val);
		//}
		
	ResultSet resultSet = preparedStatement.executeQuery();

		
		while (resultSet.next()) {
			Reservation reservation = new Reservation();
		//	reservation.setNic(resultSet.getString(1));
			reservation.setRno(resultSet.getInt(1));
			reservation.setName(resultSet.getString(3));
			reservation.setLocation(resultSet.getString(4));
			
			reservation.setDate(resultSet.getString(5));
			reservation.setTime(resultSet.getString(6));
            reservation.setDlocation(resultSet.getString(7));
			reservation.setDdate(resultSet.getString(8));
			reservation.setDtime(resultSet.getString(9));
			reservation.setDistance(resultSet.getFloat(10));
			reservation.setVtype(resultSet.getString(11));
			reservation.setPrice(resultSet.getInt(12));
			reservation.setCharge(resultSet.getInt(13));
		
		    
		    requestList.add(reservation);
		    
		  
		}
		
	
	} catch (ClassNotFoundException | SQLException | InstantiationException | IllegalAccessException e) {

		System.out.println(e.getMessage());
	}
	return requestList;
}
 
 public ArrayList<Reservation>viewReservations1(){
		
		ArrayList<Reservation> requestList = new ArrayList<>();
		Connection connection;
		
		PreparedStatement preparedStatement;

		try {
			connection = DBConnect.getDBConnection();
			
			//String val1=new AddReservation().returnVal();
			String val=new ShowReservation().returnVal();
			preparedStatement = connection.prepareStatement("select * from reservation where nic=?");
		    	preparedStatement.setString(1, val);
			//if (val1 != null) {
				//preparedStatement.setString(1, val1);
		//	} else if (val != null) {
			//	preparedStatement.setString(1, val);
			//}
			
		ResultSet resultSet = preparedStatement.executeQuery();

			
			while (resultSet.next()) {
				Reservation reservation = new Reservation();
			//	reservation.setNic(resultSet.getString(1));
				reservation.setRno(resultSet.getInt(1));
				reservation.setName(resultSet.getString(3));
				reservation.setLocation(resultSet.getString(4));
				
				reservation.setDate(resultSet.getString(5 ));
			
			    
			    requestList.add(reservation);
			    
			  
			}
			
		
		} catch (ClassNotFoundException | SQLException | InstantiationException | IllegalAccessException e) {

			System.out.println(e.getMessage());
		}
		return requestList;
	}
 
 
 public ArrayList<Reservation>viewReservations2(){
		
	ArrayList<Reservation> requestList = new ArrayList<>();
	Connection connection;
	
	PreparedStatement preparedStatement;

	try {
		connection = DBConnect.getDBConnection();
		
	//	String val1=new AddReservation().returnVal();
		//String val=new ShowReservation().returnVal();
		preparedStatement = connection.prepareStatement("select * from reservation ");
		//preparedStatement.setString(1, val);
		//if (val1 != null) {
		//	preparedStatement.setString(1, val1);
	//	} else if (val != null) {
		//	preparedStatement.setString(1, val);
		//}
		
	ResultSet resultSet = preparedStatement.executeQuery();

		
		while (resultSet.next()) {
			Reservation reservation = new Reservation();
		//	reservation.setNic(resultSet.getString(1));
			reservation.setRno(resultSet.getInt(1));
			reservation.setName(resultSet.getString(3));
			reservation.setLocation(resultSet.getString(4));
			
			reservation.setDate(resultSet.getString(5 ));
			reservation.setTime(resultSet.getString(6));
            reservation.setDlocation(resultSet.getString(7));
			reservation.setDdate(resultSet.getString(8));
			reservation.setDtime(resultSet.getString(9));
			reservation.setVtype(resultSet.getString(10));
		
		    
		    requestList.add(reservation);
		    
		  
		}
		
	
	} catch (ClassNotFoundException | SQLException | InstantiationException | IllegalAccessException e) {

		System.out.println(e.getMessage());
	}
	return requestList;
}
	 
 
 

 public void removeReservation(Reservation reservation ) { 
		
		Connection connection;
		PreparedStatement preparedStatement;
		
		
		try {
			connection = DBConnect.getDBConnection();
			
			preparedStatement = connection.prepareStatement("delete from reservation where rno=? ");
			preparedStatement.setInt(1,reservation.getRno());
		//	preparedStatement.setString(1,reservation.getNic());
			
			preparedStatement.executeUpdate();
	} catch (ClassNotFoundException | SQLException | InstantiationException | IllegalAccessException e) {

		System.out.println(e.getMessage());
	}
	

	
}
 
 public void removeReservation1(Reservation reservation ) { 
		
		Connection connection;
		PreparedStatement preparedStatement;
		
		
		try {
			connection = DBConnect.getDBConnection();
			
			preparedStatement = connection.prepareStatement("delete from reservation where rno=? ");
			preparedStatement.setInt(1,reservation.getRno());
		//	preparedStatement.setString(1,reservation.getNic());
			
			preparedStatement.executeUpdate();
	} catch (ClassNotFoundException | SQLException | InstantiationException | IllegalAccessException e) {

		System.out.println(e.getMessage());
	}
	

	
}

 
 
 public void updateReservation(Reservation reservation ) { 
		//int n=0;
		Connection connection;
		PreparedStatement preparedStatement;
		
		
		try {
			connection = DBConnect.getDBConnection();
			
			preparedStatement = connection.prepareStatement("UPDATE reservation SET location=? , date=?  where rno=?  ");
			
	     	//preparedStatement.setString(1,reservation.getNic());
			preparedStatement.setString(1,reservation.getLocation());
			preparedStatement.setString(2,reservation.getDate());
		//	preparedStatement.setInt(3, reservation.getNdays());
			//preparedStatement.setString(4,reservation.getnDriver());
			preparedStatement.setInt(3,reservation.getRno());
			preparedStatement.executeUpdate();
	} catch (ClassNotFoundException | SQLException | InstantiationException | IllegalAccessException e) {

		System.out.println(e.getMessage());
	}
	
       
	
}
 
 
 public void updateReservation1(Reservation reservation ) { 
		
		Connection connection;
		PreparedStatement preparedStatement;
		
		
		try {
			connection = DBConnect.getDBConnection();
			
			preparedStatement = connection.prepareStatement("UPDATE reservation SET vtype=?, price=?, charge=? ORDER BY rno DESC LIMIT 1  ");
			
			preparedStatement.setString(1,reservation.getVtype());
			preparedStatement.setInt(2,reservation.getPrice());
			preparedStatement.setInt(3,reservation.getCharge());
			
			preparedStatement.executeUpdate();
	} catch (ClassNotFoundException | SQLException | InstantiationException | IllegalAccessException e) {

		System.out.println(e.getMessage());
	}
	
    
	
}


 public void updateReservation2(Reservation reservation ) { 
		
		Connection connection;
		PreparedStatement preparedStatement;
		
		
		try {
			connection = DBConnect.getDBConnection();
			
			preparedStatement = connection.prepareStatement("UPDATE reservation SET itype=? , ndriver=?, empid=? ORDER BY rno DESC LIMIT 1  ");
			
			preparedStatement.setString(1,reservation.getItype());
			preparedStatement.setString(2,reservation.getNdriver());
			preparedStatement.setInt(3, reservation.getEmpid());
			preparedStatement.executeUpdate();
	} catch (ClassNotFoundException | SQLException | InstantiationException | IllegalAccessException e) {

		System.out.println(e.getMessage());
	}
	
 
	
}
 
 	public void updatePaymentReservation(Reservation reservation) { 
		
		Connection connection;
		PreparedStatement preparedStatement;
		
		try {
			connection = DBConnect.getDBConnection();
			
			preparedStatement = connection.prepareStatement("UPDATE reservation SET paymentId = ? ORDER BY rno DESC LIMIT 1  ");
			
			preparedStatement.setInt(1,reservation.getPaymentId());
			preparedStatement.executeUpdate();
		} catch (ClassNotFoundException | SQLException | InstantiationException | IllegalAccessException e) {

		System.out.println(e.getMessage());
		}
	
 	}

}

