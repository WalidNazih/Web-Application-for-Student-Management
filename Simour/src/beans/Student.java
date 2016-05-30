package beans;

import java.io.Serializable;

public class Student implements Serializable {

	protected int id;
	protected String cne, lastName, firstName;
	protected int classe;
	protected double note;
	protected double absence;
	
	public Student(){
		
	}
	
	

	public Student(int id, String cne, String lastName, String firstName, int classe, double note, double absence) {
		super();
		this.id = id;
		this.cne = cne;
		this.lastName = lastName;
		this.firstName = firstName;
		this.classe = classe;
		this.note = note;
		this.absence = absence;
	}



	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCne() {
		return cne;
	}

	public void setCne(String cne) {
		this.cne = cne;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public int getClasse() {
		return classe;
	}

	public void setClasse(int classe) {
		this.classe = classe;
	}

	public double getNote() {
		return note;
	}

	public void setNote(double note) {
		this.note = note;
	}

	public double getAbsence() {
		return absence;
	}

	public void setAbsence(double absence) {
		this.absence = absence;
	}
	
	
	
}
