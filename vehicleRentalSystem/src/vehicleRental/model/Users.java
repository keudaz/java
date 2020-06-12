package vehicleRental.model;

public class Users {
	
	
	
	private int userID;   

	private String username;

	private String name;  
	
	private String email; 
	
	private  String phoneNum;
	
	private String NIC;

	private String password; 

	private String address;
	
	private String user_type;
	
	
	
	
	
	
	
	
	

	public String getUser_type() {
		return user_type;
	}

	public void setUser_type(String user_type) {
		this.user_type = user_type;
	}

	public int getUserID() {
		return userID;
	}

	public void setUserID(int userID) {
		this.userID = userID;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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

	public String getNIC() {
		return NIC;
	}

	public void setNIC(String nIC) {
		NIC = nIC;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	@Override
	public String toString() {
		return "Users [userID=" + userID + ", username=" + username + ", name=" + name + ", email=" + email
				+ ", phoneNum=" + phoneNum + ", NIC=" + NIC + ", password=" + password + ", address=" + address
				+ ", user_type=" + user_type + "]";
	}
	
	
	
	


}
