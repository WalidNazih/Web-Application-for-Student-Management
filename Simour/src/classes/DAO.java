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
	
	public ResultSet getImageByCategory(int category) throws SQLException{
		String sql = "SELECT * FROM IMAGES WHERE CATEGORY=?";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.setInt(1,category);
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
	
}


