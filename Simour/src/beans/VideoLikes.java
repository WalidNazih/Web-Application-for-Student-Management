package beans;

import java.io.Serializable;

public class VideoLikes implements Serializable{

	int id;
	String video, visitor;
	
	public VideoLikes(){
		
	}

	public VideoLikes(int id, String video, String visitor) {
		super();
		this.id = id;
		this.video = video;
		this.visitor = visitor;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getVideo() {
		return video;
	}

	public void setVideo(String video) {
		this.video = video;
	}

	public String getVisitor() {
		return visitor;
	}

	public void setVisitor(String visitor) {
		this.visitor = visitor;
	}
	
	
}
