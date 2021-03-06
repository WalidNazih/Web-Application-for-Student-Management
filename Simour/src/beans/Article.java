package beans;

import java.io.Serializable;

public class Article implements Serializable{
	
	protected int id, likes;
	protected String url, title, description, icon, date;
	
	public Article(){}
	
	

	public Article(int id, int likes, String url, String title,
			String description, String icon, String date) {
		super();
		this.id = id;
		this.likes = likes;
		this.url = url;
		this.title = title;
		this.description = description;
		this.icon = icon;
		this.date = date;
	}



	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getLikes() {
		return likes;
	}

	public void setLikes(int likes) {
		this.likes = likes;
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
	
	public String getIcon() {
		return icon;
	}

	public void setIcon(String icon) {
		this.icon = icon;
	}
	
	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

}
