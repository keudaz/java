package vehicleRental.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.sql.SQLException;

import vehicleRental.model.Accidents;
import vehicleRental.util.DBConnect;

public class accidentServices {
	
public void insertAccident(Accidents acc) {
		
		Connection con;
		PreparedStatement pst;
		try {
			con = DBConnect.getDBConnection();

			pst = con.prepareStatement("INSERT INTO accidents (date,vNum,amount) VALUES (?,?,?)");

			pst.setString(1,acc.getDate());
			pst.setString(2,acc.getvNum());
			pst.setString(3,acc.getAmount());
			
			pst.execute();
		
			
		} catch (ClassNotFoundException | SQLException | InstantiationException | IllegalAccessException e) {

			System.out.println(e.getMessage());
				
		}
			
	}


public ArrayList<Accidents> displayAccidents(){
	ArrayList<Accidents> accList = new ArrayList<Accidents>();
	
	Connection con;
	PreparedStatement pst;
	
	try {
		con = DBConnect.getDBConnection();
		pst = con.prepareStatement("SELECT * FROM accidents");
		ResultSet result = pst.executeQuery();
		
		while (result.next()) {
			Accidents acc = new Accidents();
			
			acc.setId(Integer.parseInt(result.getString(1)));
			acc.setDate(result.getString(2));
			acc.setvNum(result.getString(3));
			acc.setAmount(result.getString(4));
			
			accList.add(acc);
		}
		pst.close();
		con.close();
	}catch (NumberFormatException | ClassNotFoundException | SQLException | InstantiationException | IllegalAccessException e) {

		System.out.println("ArrayList Error!-in accidentServices");
	}
	return accList;
}



public Accidents displayAccident(Accidents acc){
	
	String accId;
	Connection con;
	PreparedStatement pst;
	
	accId = String.valueOf(acc.getId());
	
	Accidents acc1 = new Accidents();
	
	try {
		con = DBConnect.getDBConnection();
		pst = con.prepareStatement("SELECT * FROM accidents WHERE id=?");
		pst.setString(1,accId);
		
		ResultSet result = pst.executeQuery();
					
			acc1.setId(Integer.parseInt(result.getString(1)));
			acc1.setDate(result.getString(2));
			acc1.setvNum(result.getString(3));
			acc1.setAmount(result.getString(4));
		
		pst.close();
		con.close();
	}catch (NumberFormatException | ClassNotFoundException | SQLException | InstantiationException | IllegalAccessException e) {

		System.out.println("Error!-in displayAccident");
	}
	return acc1;
}



public void updateAccident(Accidents acc2) {
	
	Connection con;
	PreparedStatement pst;
	
	try {
		con = DBConnect.getDBConnection();

		pst = con.prepareStatement("UPDATE accidents SET date = ?, vNum = ?, amount = ? WHERE id = ?");

		pst.setString(1,acc2.getDate());
		pst.setString(2,acc2.getvNum());
		pst.setString(3,acc2.getAmount());
		pst.setInt(4,acc2.getId());
		
		pst.execute();
	
		
	} catch (ClassNotFoundException | NumberFormatException | SQLException | InstantiationException | IllegalAccessException e) {

		System.out.println(e.getMessage());
			
	}
	
}

public void deleteAccident(Accidents acc){
		
	Connection con;
	PreparedStatement pst;
	
	try {
		con = DBConnect.getDBConnection();
		
		pst = con.prepareStatement("DELETE FROM accidents WHERE id=?");
		
		pst.setInt(1, acc.getId());
		
		pst.execute();

	} catch (ClassNotFoundException | SQLException | InstantiationException | IllegalAccessException e) {

		System.out.println(e.getMessage());
			
	}

}



public ArrayList<Accidents> searchAccidents(String searchText) throws SQLException, ClassNotFoundException, InstantiationException, IllegalAccessException {
	
	ArrayList<Accidents> accList = new ArrayList<Accidents>();
	Connection con;
	PreparedStatement pst;
	
	String f = "%";
	searchText = f + searchText + f;
	
	try {
		con = DBConnect.getDBConnection();
		
		pst = con.prepareStatement("SELECT id, date, vNum, amount FROM accidents WHERE vNum LIKE ?");
		pst.setString(1, searchText);

		ResultSet rs = pst.executeQuery();
		
		while (rs.next()) {
			Accidents acc = new Accidents();
			// retrieve and print the values for the current row
			acc.setId(rs.getInt("id"));
			acc.setDate(rs.getString("date"));
			acc.setvNum(rs.getString("vNum"));
			acc.setAmount(rs.getString("amount"));
			
			accList.add(acc);
		}

	} catch (ClassNotFoundException | SQLException | InstantiationException | IllegalAccessException e) {

		System.out.println(e.getMessage());
			
	}
	return accList;
}

}
