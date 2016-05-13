package beans;

import java.io.Serializable;
import java.util.Date;

public class Message implements Serializable{
	
	int id;
	String from, message, subject, date, email;

	public Message(){
		
	}

	public Message(int id, String from, String email, String subject, String message, String date) {
		super();
		this.id = id;
		this.from = from;
		this.message = message;
		this.date = date;
		this.subject = subject;
		this.email = email;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFrom() {
		return from;
	}

	public void setFrom(String from) {
		this.from = from;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
	
	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}
	
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	
	
}
