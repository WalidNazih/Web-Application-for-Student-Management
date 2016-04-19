package beans;

import java.io.Serializable;

public class Image implements Serializable{
	private int id, category;
	private String url, title, description;

	public Image(int id, int category, String url, String title,
			String description) {
		super();
		this.id = id;
		this.category = category;
		this.url = url;
		this.title = title;
		this.description = description;
	}

	public Image() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getCategory() {
		return category;
	}

	public void setCategory(int category) {
		this.category = category;
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

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

}
