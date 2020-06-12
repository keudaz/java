package vehicleRental.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import vehicleRental.model.Inquiries;
import vehicleRental.util.DBConnect;

public class inquiriesServices {
	
public void sendInquiry(Inquiries inq) {
		
		Connection con;
		PreparedStatement pst;
		try {
			con = DBConnect.getDBConnection();

			pst = con.prepareStatement("INSERT INTO inquiries (category,subject,message) VALUES (?,?,?)");

			pst.setString(1,inq.getCategory());
			pst.setString(2,inq.getSubject());
			pst.setString(3,inq.getMessage());
			
			pst.execute();
		
			
		} catch (ClassNotFoundException | SQLException | InstantiationException | IllegalAccessException e) {

			System.out.println(e.getMessage());
				
		}
			
	}
	
	public ArrayList<Inquiries> displayInquiries(){
		ArrayList<Inquiries> inqList = new ArrayList<Inquiries>();
		
		Connection con;
		PreparedStatement pst;
		
		try {
			con = DBConnect.getDBConnection();
			pst = con.prepareStatement("SELECT * FROM inquiries");
			ResultSet result = pst.executeQuery();
			
			while (result.next()) {
				Inquiries inq = new Inquiries();
				
				inq.setId(Integer.parseInt(result.getString(1)));
				inq.setCategory(result.getString(2));
				inq.setSubject(result.getString(3));
				inq.setMessage(result.getString(4));
				
				inqList.add(inq);
			}
			pst.close();
			con.close();
		}catch (NumberFormatException | ClassNotFoundException | SQLException | InstantiationException | IllegalAccessException e) {

			System.out.println("ArrayList Error!-in inquiriesServices");
		}
		return inqList;
	}
	
	public void deleteInquiry(Inquiries inq){
		
		Connection con;
		PreparedStatement pst;
		
		try {
			con = DBConnect.getDBConnection();
			
			pst = con.prepareStatement("DELETE FROM inquiries WHERE id=?");
			
			pst.setInt(1, inq.getId());
			
			pst.execute();

		} catch (ClassNotFoundException | SQLException | InstantiationException | IllegalAccessException e) {

			System.out.println(e.getMessage());
				
		}

	}
	
	public ArrayList<Inquiries> searchInquiries(String searchText) throws SQLException, ClassNotFoundException, InstantiationException, IllegalAccessException {
		
		ArrayList<Inquiries> accList = new ArrayList<Inquiries>();
		Connection con;
		PreparedStatement pst;
		
		String f = "%";
		searchText = f + searchText + f;
		
		try {
			con = DBConnect.getDBConnection();
			
			pst = con.prepareStatement("SELECT id, category, subject, message FROM inquiries WHERE subject LIKE ?");
			pst.setString(1, searchText);

			ResultSet rs = pst.executeQuery();
			
			while (rs.next()) {
				Inquiries acc = new Inquiries();
				// retrieve and print the values for the current row
				acc.setId(rs.getInt("id"));
				acc.setCategory(rs.getString("category"));
				acc.setSubject(rs.getString("subject"));
				acc.setMessage(rs.getString("message"));
				
				accList.add(acc);
			}

		} catch (ClassNotFoundException | SQLException | InstantiationException | IllegalAccessException e) {

			System.out.println(e.getMessage());
				
		}
		return accList;
	}

}
