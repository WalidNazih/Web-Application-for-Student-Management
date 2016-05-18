package beans;

public class Slide {
	
	int id;
	String url;
	
	public Slide(){
		
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

	public Slide(int id, String url) {
		super();
		this.id = id;
		this.url = url;
	}
	
	

}
