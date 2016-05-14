package beans;

public class Lesson {
	
	int id;
	String url, title, icon;
	int classe;

	public Lesson(){
		
	}

	public Lesson(int id, String url, String title, String icon, int classe) {
		super();
		this.id = id;
		this.url = url;
		this.title = title;
		this.icon = icon;
		this.classe = classe;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getIcon() {
		return icon;
	}

	public void setIcon(String icon) {
		this.icon = icon;
	}

	public int getClasse() {
		return classe;
	}

	public void setClasse(int classe) {
		this.classe = classe;
	}
	
	
	
	
	
}
