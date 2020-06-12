package vehicleRental.model;

public class Feedback {
	
private String name;
	
	private String msg;
	private int fid;
	
	public int getFid() {
		return fid;
	}
	public void setFid(int fid) {
		this.fid = fid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	
	@Override
	public String toString() {
		return "Feedback [name=" + name + ", msg=" + msg + ", fid=" + fid + "]";
	}

}
