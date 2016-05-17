package beans;

import java.io.Serializable;

public class Log implements Serializable{
	
	int id;
	String desc, ip, date;
	
	public Log(){
		
	}
	
	

	public Log(int id, String desc, String ip, String date) {
		super();
		this.id = id;
		this.desc = desc;
		this.ip = ip;
		this.date = date;
	}



	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

	public String getIp() {
		return ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}
	
	

}
