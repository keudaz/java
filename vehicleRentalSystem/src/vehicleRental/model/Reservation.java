 package vehicleRental.model;
public class Reservation {
	
	private String itype;
	
	public String getItype() {
		return itype;
	}
	public void setItype(String itype) {
		this.itype = itype;
	}

	private int rno;
	public int getRno() {
		return rno;
	}
	public void setRno(int rno) {
		this.rno = rno;
	}
	
	private String vtype;

	public String getVtype() {
		return vtype;
	}
	public void setVtype(String vtype) {
		this.vtype = vtype;
	}

	private String name;

	private String nic;
	private long phone;
	private String location;
	
	private String date;
	

	private String time;
	
	private String dlocation;
	

	private String ddate;
	private String dtime;
	
	
	private int ndays;
	private String ndriver;
	
	
	public String getNdriver() {
		return ndriver;
	}
	public void setNdriver(String ndriver) {
		this.ndriver = ndriver;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNic() {
		return nic;
	}
	public void setNic(String nic) {
		this.nic = nic;
	}
	public long getPhone() {
		return phone;
	}
	public void setPhone(long phone) {
		this.phone = phone;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	
	public String getDlocation() {
		return dlocation;
	}
	public void setDlocation(String dlocation) {
		this.dlocation = dlocation;
	}
	public String getDdate() {
		return ddate;
	}
	public void setDdate(String ddate) {
		this.ddate = ddate;
	}
	public String getDtime() {
		return dtime;
	}
	public void setDtime(String dtime) {
		this.dtime = dtime;
	}
	
	
	public int getNdays() {
		return ndays;
	}
	public void setNdays(int ndays) {
		this.ndays = ndays;
	}
	
	private int empid;
	
	public int getEmpid() {
		return empid;
	}
	public void setEmpid(int empid) {
		this.empid = empid;
	}
	
	
	@Override
	public String toString() {
		return "Reservation [itype=" + itype + ", rno=" + rno + ", vtype=" + vtype + ", name=" + name + ", nic=" + nic
				+ ", phone=" + phone + ", location=" + location + ", date=" + date + ", time=" + time + ", dlocation="
				+ dlocation + ", ddate=" + ddate + ", dtime=" + dtime + ", ndays=" + ndays + ", ndriver=" + ndriver
				+ "]";
	} 
	
	private float distance;
	public float getDistance() {
		return distance;
	}
	public void setDistance(float distance) {
		this.distance = distance;
	}
	
	private int price;
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
	private int charge;
	public int getCharge() {
		return charge;
	}
	public void setCharge(int charge) {
		this.charge = charge;
	}
	
	private int paymentId;
	public int getPaymentId() {
		return paymentId;
	}
	public void setPaymentId(int paymentId) {
		this.paymentId = paymentId;
	}
}
