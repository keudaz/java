package vehicleRental.model;

public class Assigning {
	private String assignId;
	private String reservationON;
	private String vehicleId;
	private String VehicleNo;
	private String VehicleType;
	private String PickUpDate;
	private String PickUpTime;
	private String DropoffDate;
	private String DropoffTime;
	
	
	public String getReservationON() {
		return reservationON;
	}
	public void setReservationON(String reservationON) {
		this.reservationON = reservationON;
	}
	public String getVehicleId() {
		return vehicleId;
	}
	public void setVehicleId(String vehicleId) {
		this.vehicleId = vehicleId;
	}
	public String getVehicleNo() {
		return VehicleNo;
	}
	public void setVehicleNo(String vehicleNo) {
		VehicleNo = vehicleNo;
	}
	public String getVehicleType() {
		return VehicleType;
	}
	public void setVehicleType(String vehicleType) {
		VehicleType = vehicleType;
	}
	public String getPickUpDate() {
		return PickUpDate;
	}
	public void setPickUpDate(String pickUpDate) {
		PickUpDate = pickUpDate;
	}
	public String getPickUpTime() {
		return PickUpTime;
	}
	public void setPickUpTime(String pickUpTime) {
		PickUpTime = pickUpTime;
	}
	public String getDropoffDate() {
		return DropoffDate;
	}
	public void setDropoffDate(String dropoffDate) {
		DropoffDate = dropoffDate;
	}
	public String getDropoffTime() {
		return DropoffTime;
	}
	public void setDropoffTime(String dropoffTime) {
		DropoffTime = dropoffTime;
	}
	public String getAssignId() {
		return assignId;
	}
	public void setAssignId(String assignId) {
		this.assignId = assignId;
	}

	
	@Override
	public String toString() {
		return "Assigning [assignId=" + assignId + ", reservationON=" + reservationON + ", vehicleId=" + vehicleId
				+ ", VehicleNo=" + VehicleNo + ", VehicleType=" + VehicleType + ", PickUpDate=" + PickUpDate
				+ ", PickUpTime=" + PickUpTime + ", DropoffDate=" + DropoffDate + ", DropoffTime=" + DropoffTime + "]";
	}
	
}


