package classes;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Date;

public class DAO {
	
	Connection con;
	PreparedStatement preparedStatement;
	Statement statement;
	
	public DAO(String dbName, String dbUserName,String dbUserPassword) throws ClassNotFoundException, SQLException{
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager
				.getConnection("jdbc:mysql://localhost:3306/"+dbName, dbUserName, dbUserPassword);
		statement = con.createStatement();
		
	}
	
	public ResultSet getMessages() throws SQLException{
		String sql = "SELECT * FROM MESSAGES";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.executeQuery();
		return preparedStatement.executeQuery();
	}
	
	public ResultSet getImages() throws SQLException{
		String sql = "SELECT * FROM Images";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.executeQuery();
		return preparedStatement.executeQuery();
	}
	
	public ResultSet getVideos() throws SQLException{
		String sql = "SELECT * FROM videos";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.executeQuery();
		return preparedStatement.executeQuery();
	}
	
	public ResultSet getChapters() throws SQLException{
		String sql = "SELECT * FROM chapters";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.executeQuery();
		return preparedStatement.executeQuery();
	}
	
	public ResultSet getBooks() throws SQLException{
		String sql = "SELECT * FROM book";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.executeQuery();
		return preparedStatement.executeQuery();
	}
	
	public ResultSet getArticles() throws SQLException{
		String sql = "SELECT * FROM article";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.executeQuery();
		return preparedStatement.executeQuery();
	}
	
	public ResultSet getImageByCategory(int category) throws SQLException{
		String sql = "SELECT * FROM IMAGES WHERE CATEGORY=?";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.setInt(1,category);
		preparedStatement.executeQuery();
		return preparedStatement.executeQuery();
	}
	
	public ResultSet getLastImages(int count) throws SQLException{
		String sql = "SELECT * FROM ( SELECT * FROM images ORDER BY id DESC LIMIT ? ) sub ORDER BY id ASC";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.setInt(1,count);
		preparedStatement.executeQuery();
		return preparedStatement.executeQuery();
	}
	
	public ResultSet getMostLikedImages() throws SQLException{
		String sql = "SELECT * FROM Images order by likes desc";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.executeQuery();
		return preparedStatement.executeQuery();
	}
	
	
	public ResultSet getMessageById(int id) throws SQLException{
		String sql = "SELECT * FROM MESSAGES WHERE id=1";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.executeQuery();
		return preparedStatement.executeQuery();
	}
	
	public void insertMessage(String sender, String subject, String message) throws SQLException{
		String sql = "INSERT INTO messages (sender,subject,message,date) values(?,?,?,?)";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.setString(1, sender);
		preparedStatement.setString(2, subject);
		preparedStatement.setString(3, message);
		preparedStatement.setString(4, new java.util.Date().toString());
		preparedStatement.executeUpdate();
	}
	
	public void insertImage(String url, String title, String desc, int category) throws SQLException{
		String sql = "INSERT INTO images (url,title,description,category) values(?,?,?,?)";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.setString(1, url);
		preparedStatement.setString(2, title);
		preparedStatement.setString(3, desc);
		preparedStatement.setInt(4, category);
		preparedStatement.executeUpdate();
	}
	
	public void insertVideo(String url, String desc, int category) throws SQLException{
		String sql = "INSERT INTO videos (url,description,category) values(?,?,?)";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.setString(1, url);
		preparedStatement.setString(2, desc);
		preparedStatement.setInt(3, category);
		preparedStatement.executeUpdate();
	}
	
	public void insertArticle(String url, String title, String desc) throws SQLException{
		String sql = "INSERT INTO article (url,title,description) values(?,?,?)";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.setString(1, url);
		preparedStatement.setString(2, title);
		preparedStatement.setString(3, desc);
		preparedStatement.executeUpdate();
	}
	public void insertBook(String url, String title, String desc) throws SQLException{
		String sql = "INSERT INTO book (url,title,description) values(?,?,?)";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.setString(1, url);
		preparedStatement.setString(2, title);
		preparedStatement.setString(3, desc);
		preparedStatement.executeUpdate();
	}
	public void insertChapters(String url, String title, String desc) throws SQLException{
		String sql = "INSERT INTO chapters (url,title,description) values(?,?,?)";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.setString(1, url);
		preparedStatement.setString(2, title);
		preparedStatement.setString(3, desc);
		preparedStatement.executeUpdate();
	}
	public void addLike(String url, int like) throws SQLException{
		String sql = "UPDATE images set likes=? where url=?";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.setInt(1, like+1);
		preparedStatement.setString(2, url);
		preparedStatement.executeUpdate();
	}
	
	public ResultSet getImageInfo(String url) throws SQLException{
		String sql = "SELECT * FROM IMAGES WHERE url=?";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.setString(1,url);
		preparedStatement.executeQuery();
		return preparedStatement.executeQuery();
	}
	
}


