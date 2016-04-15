package classes;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

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
	
	public ResultSet getMessageById(int id) throws SQLException{
		String sql = "SELECT * FROM MESSAGES WHERE id=1";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.executeQuery();
		return preparedStatement.executeQuery();
	}
	
	
	
}


