package beans;

import java.io.Serializable;

public class Video implements Serializable{

	protected int id, category, likes;
	protected String url, description, thumbnail, date;
	protected boolean liked;
	
	public Video(){}
	
	public Video(int id, int category, int likes, String url, String description, String thumbnail, boolean liked, String date) {
		super();
		this.id = id;
		this.category = category;
		this.likes = likes;
		this.url = url;
		this.description = description;
		this.thumbnail = thumbnail;
		this.liked = liked;
		this.date = date;
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

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getThumbnail() {
		return thumbnail;
	}

	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}
	
	public boolean isLiked() {
		return liked;
	}

	public void setLiked(boolean liked) {
		this.liked = liked;
	}
	
	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}
}
