package vehicleRental.service;

import java.sql.SQLException;
import java.util.ArrayList;

import vehicleRental.model.Payment;

public interface PaymentService {
	
	public void addPayment(Payment payment);

	public ArrayList<Payment> getPayment();

	public Payment getPaymentByID(String payId);

	public Payment updatePayment(String payId, Payment payment);

	public void deletePayment(String payId);
	
	public ArrayList<Payment> searchPayment(String searchText) throws SQLException, ClassNotFoundException, InstantiationException, IllegalAccessException;

}

