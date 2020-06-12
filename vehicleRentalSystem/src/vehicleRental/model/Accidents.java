package vehicleRental.model;

public class Accidents {
	
	private int id;
	private String date;
	private String vNum;
	private String amount;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getvNum() {
		return vNum;
	}
	public void setvNum(String vNum) {
		this.vNum = vNum;
	}
	public String getAmount() {
		return amount;
	}
	public void setAmount(String amount) {
		this.amount = amount;
	}

}
