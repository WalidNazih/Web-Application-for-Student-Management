package beans;

public class Lesson {
	
	int id;
	String url, title, icon;
	int classe;
	int downloads;

	public Lesson(){
		
	}

	public Lesson(int id, String url, String title, String icon, int classe, int downloads) {
		super();
		this.id = id;
		this.url = url;
		this.title = title;
		this.icon = icon;
		this.classe = classe;
		this.downloads = downloads;
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

	public int getDownloads() {
		return downloads;
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
