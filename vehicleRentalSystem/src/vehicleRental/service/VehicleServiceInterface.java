package vehicleRental.service;

import java.util.ArrayList;


import vehicleRental.model.Vehicle;

public interface VehicleServiceInterface {
	
	public void addVehicle(Vehicle vehicle);

	public ArrayList<Vehicle> getVehicle();

	public Vehicle getVehicleByID(String vehicleID);

	public Vehicle updateVehicle(String vehicleID, Vehicle vehicle);

	public void deleteVehicle(String vehicleID);

}
