package beans;

import java.io.Serializable;

public class Group implements Serializable {

	protected int id;
	protected String name, project;
	protected int classe;
	
	public Group() {
		// TODO Auto-generated constructor stub
	}
	
	
	
	



	public Group(int id, String name, String project, int classe) {
		super();
		this.id = id;
		this.name = name;
		this.project = project;
		this.classe = classe;
	}







	public String getProject() {
		return project;
	}





	public void setProject(String project) {
		this.project = project;
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

	public int getClasse() {
		return classe;
	}

	public void setClasse(int classe) {
		this.classe = classe;
	}

	
}
