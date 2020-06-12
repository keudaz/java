package vehicleRental.model;

public class Employee {
	
	private int empId;

	private String name;
	
	private String address;
	
	private String email;
	
	private String phoneNum;
	
	private String designation;
	
	
	private String username;
	
	private String password;
	
	
	private String NIC;
	
	private String user_type;
	
	
	
	public String getUser_type() {
		return user_type;
	}

	public void setUser_type(String user_type) {
		this.user_type = user_type;
	}

	public String getNIC() {
		return NIC;
	}

	public void setNIC(String nIC) {
		NIC = nIC;
	}

	public int getEmpId() {
		return empId;
	}

	public void setEmpId(int empId) {
		this.empId = empId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhoneNum() {
		return phoneNum;
	}

	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}

	public String getDesignation() {
		return designation;
	}

	public void setDesignation(String designation) {
		this.designation = designation;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "Employee [empId=" + empId + ", name=" + name + ", address=" + address + ", email=" + email
				+ ", phoneNum=" + phoneNum + ", designation=" + designation + ", username=" + username + ", password="
				+ password + ", NIC=" + NIC + ", user_type=" + user_type + "]";
	}

	
	

	
	
	
	

}
