package vehicleRental.service;

import java.sql.SQLException;

import java.util.ArrayList;

import vehicleRental.model.Ad;

public interface AdServices {

	public void addAd(Ad ad); //add AD to the AD table

	public ArrayList<Ad> getAd(); //get all list of AD
	
	public Ad getAdByID(String adID); //get particular AD
	
	public Ad updateAd(String adID, Ad ad); //update existing ADs

	public void deleteAd(String adID); //remove existing ADs
	
	public ArrayList<Ad> searchAds(String searchText) throws SQLException, ClassNotFoundException, InstantiationException, IllegalAccessException; //search Ads

}
