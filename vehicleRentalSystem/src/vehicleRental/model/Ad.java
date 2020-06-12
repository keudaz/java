package vehicleRental.model;

public class Ad {

	private int adId;

	private String category;

	private String description;

	private String date;
	
	private String company;
	
	private String email;
	
	private String mobile;
	

	public int getAdId() {
		return adId;
	}

	public void setAdId(int adId) {
		this.adId = adId;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}
	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String toString() {
		return "adId=" + adId + "\n" + ", category=" + category + "\n" + ", description=" + description +  "\n" + 
				", date=" + date + "\n" + ", company=" + company + "\n" + ", email=" + email + "\n" + ", mobile=" + mobile;

	}

	

	

}
