package vehicleRental.model;

public class Driver {

	int id,empid,Age;
	String name,jobType,lNumber,phone;
	
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getEmpid() {
		return empid;
	}
	public void setEmpid(int empid) {
		this.empid = empid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getJobType() {
		return jobType;
	}
	public void setJobType(String jobType) {
		this.jobType = jobType;
	}
	public String getlNumber() {
		return lNumber;
	}
	public void setlNumber(String lNumber) {
		this.lNumber = lNumber;
	}
	public int getAge() {
		return Age;
	}
	public void setAge(int age) {
		this.Age = age;
	}
	
}

