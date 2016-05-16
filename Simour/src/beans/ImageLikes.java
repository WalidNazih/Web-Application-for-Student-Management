package beans;

import java.io.Serializable;

public class ImageLikes implements Serializable{
	
	int id;
	String image, visitor;
	
	public ImageLikes(){
		
	}

	public ImageLikes(int id, String image, String visitor) {
		super();
		this.id = id;
		this.image = image;
		this.visitor = visitor;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getVisitor() {
		return visitor;
	}

	public void setVisitor(String visitor) {
		this.visitor = visitor;
	}
	
	

}
