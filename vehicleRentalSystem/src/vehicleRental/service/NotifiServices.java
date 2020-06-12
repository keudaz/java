package vehicleRental.service;

import java.util.ArrayList;


import vehicleRental.model.Notifi;

public interface NotifiServices {
	
	public void addNotifi(Notifi notifi); //add Notification to the Notification table

	public ArrayList<Notifi> getNotifi(); //get all list of Notification

	public Notifi getNotifiByID(String notifiID); //get particular Notification

	public Notifi updateNotifi(String notifiID, Notifi notifi); //update existing Notifications

	public void deleteNotifi(String notifiID); //remove existing Notifications

}
