package vehicleRental.model;

public class Vehicle {
	private int vehicleId;
	private String vehicleNo;
	private String ownerName;
	private String vehicleType;
	private String phone;
	private String regNo;
	private String numberEtched;
	private String chassisNo;
	private String model;
	private String year;
	private String color;
	private String image;
	private String milage;
	
	public int getVehicleId() {
		return vehicleId;
	}

	public void setVehicleId(int vehicleId) {
		this.vehicleId = vehicleId;
	}

	public String getRegNo() {
		return regNo;
	}

	public void setRegNo(String regNo) {
		this.regNo = regNo;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getMilage() {
		return milage;
	}

	public void setMilage(String milage) {
		this.milage = milage;
	}

	public int getSeats() {
		return seats;
	}

	public void setSeats(int seats) {
		this.seats = seats;
	}

	private int seats;
	
	public String getVehicleNo() {
		return vehicleNo;
	}

	public void setVehicleNo(String vehicleNo) {
		this.vehicleNo = vehicleNo;
	}

	public String getOwnerName() {
		return ownerName;
	}

	public void setOwnerName(String ownerName) {
		this.ownerName = ownerName;
	}

	public String getVehicleType() {
		return vehicleType;
	}

	public void setVehicleType(String vehicleType) {
		this.vehicleType = vehicleType;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getChassisNo() {
		return chassisNo;
	}

	public void setChassisNo(String chassisNo) {
		this.chassisNo = chassisNo;
	}

	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}
	
	public String getNumberEtched() {
		return numberEtched;
	}

	public void setNumberEtched(String numberEtched) {
		this.numberEtched = numberEtched;
	}

}

