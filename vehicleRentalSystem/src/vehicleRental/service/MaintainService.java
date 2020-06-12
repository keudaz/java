package vehicleRental.service;

import java.sql.SQLException;
import java.util.ArrayList;

import vehicleRental.model.Maintain;;

public interface MaintainService {
	
	public void addMaintain(Maintain maintain);

	public ArrayList<Maintain> getMaintain();

	public Maintain getMaintainByID(String manId);

	public Maintain updateMaintain(String manId, Maintain maintain);

	public void deleteMaintain(String manId);
	
	public ArrayList<Maintain> searchMaintain(String searchText) throws SQLException, ClassNotFoundException, InstantiationException, IllegalAccessException;


}
