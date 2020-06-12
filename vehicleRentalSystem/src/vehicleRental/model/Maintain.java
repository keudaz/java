package vehicleRental.model;

public class Maintain {
	
private int manId;
	
	private String vno;
	
	private String date;

	private String details;

	private int cost;
	

	public int getManId() {
		return manId;
	}

	public void setManId(int manId) {
		this.manId = manId;
	}


	public String getVno() {
		return vno;
	}

	public void setVno(String vno) {
		this.vno = vno;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getDetails() {
		return details;
	}

	public void setDetails(String details) {
		this.details = details;
	}

	public int getCost() {
		return cost;
	}
	
	public void setCost(int cost) {
		this.cost = cost;
	}

	public String toString() {
		return "manId=" + manId+ "\n" + ", vno=" + vno+ "\n" + ", date=" + date + "\n" + ", details=" + details + "\n" + ", cost=" + cost;

	}

	
}
