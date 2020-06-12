package vehicleRental.model;  

public class Notifi {
	
private int notifiId;
	
	private String userType;

	private String description;

	public int getNotifiId() {
		return notifiId;
	}

	public void setNotifiId(int notifiId) {
		this.notifiId = notifiId;
	}
	
	public String getUserType() {
		return userType;
	}

	public void setUserType(String userType) {
		this.userType = userType;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	

	
	public String toString() {
		return "notifiId=" + notifiId + "\n" + ", userType=" + userType+ "\n"  + ", description=" + description;

	}

	
}
