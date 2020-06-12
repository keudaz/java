package vehicleRental.model;

public class Payment {
	
private String date;
	
	private int payId;

	private String nic;

	private int card;
	
	private int cvv;

	public int getPayId() {
		return payId;
	}

	public void setPayId(int payId) {
		this.payId = payId;
	}

	public String getNic() {
		return nic;
	}

	public void setNic(String nic) {
		this.nic = nic;
	}

	public int getCard() {
		return card;
	}

	public void setCard(int card) {
		this.card = card;
	}

	public int getCvv() {
		return cvv;
	}

	public void setCvv(int cvv) {
		this.cvv = cvv;
	}
	
	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	
	public String toString() {
		return "date=" + date+ "\n" + ", payId=" + payId + "\n" + ", nic=" + nic + "\n" + ", card=" + card+ "\n" + ",cvv=" + cvv;

	}

	
	
	

}
