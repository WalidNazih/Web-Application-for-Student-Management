package beans;

import java.io.Serializable;

public class Classe implements Serializable{
	
	int id;
	String niveau, option;
	
	public Classe(){
		
	}

	public Classe(int id, String niveau, String option) {
		super();
		this.id = id;
		this.niveau = niveau;
		this.option = option;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNiveau() {
		return niveau;
	}

	public void setNiveau(String niveau) {
		this.niveau = niveau;
	}

	public String getOption() {
		return option;
	}

	public void setOption(String option) {
		this.option = option;
	}

	
	
	
}
