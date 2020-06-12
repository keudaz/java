package vehicleRental.service;

import java.util.ArrayList;


import vehicleRental.model.Vehicle;

public interface VehicleServiceInterface2 {
	
	public void addVehicle(Vehicle vehicle);

	public ArrayList<Vehicle> getVehicles();

	public Vehicle getVehicleByID(String vehicleID);

	public Vehicle updateVehicle(String vehicleID, Vehicle vehicle);

	public void deleteVehicle(String vehicleID);

}