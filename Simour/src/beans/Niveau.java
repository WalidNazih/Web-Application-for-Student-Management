package beans;

import java.io.Serializable;

public class Niveau  implements Serializable{

	int id;
	String name;
	
	public Niveau(){
		
	}

	public Niveau(int id, String name) {
		super();
		this.id = id;
		this.name = name;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	
	
}
