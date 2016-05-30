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
	
	public ResultSet getSlides() throws SQLException{
		String sql = "SELECT * FROM slides";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.executeQuery();
		return preparedStatement.executeQuery();
	}
	
	public ResultSet getSlideById(int id) throws SQLException{
		String sql = "SELECT * FROM slides where id=?";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.setInt(1, id);
		preparedStatement.executeQuery();
		return preparedStatement.executeQuery();
	}
	
	public ResultSet getConfig(String name) throws SQLException{
		String sql = "SELECT * FROM config where name=?";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.setString(1, name);
		preparedStatement.executeQuery();
		return preparedStatement.executeQuery();
	}
	
	public ResultSet getLogs() throws SQLException{
		String sql = "SELECT * FROM LOGS";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.executeQuery();
		return preparedStatement.executeQuery();
	}
	
	public void insertImageLike(int image, String visitor) throws SQLException{
		String sql = "INSERT INTO imagelikes (image,visitor) values(?,?)";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.setInt(1, image);
		preparedStatement.setString(2, visitor);
		preparedStatement.executeUpdate();
	}
	
	public void insertGroup(String name, String project, int classe) throws SQLException{
		String sql = "INSERT INTO groups (name,project,classe) values(?,?,?)";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.setString(1, name);
		preparedStatement.setString(2, project);
		preparedStatement.setInt(3, classe);
		preparedStatement.executeUpdate();
	}
	
	public void insertVideoLike(int image, String visitor) throws SQLException{
		String sql = "INSERT INTO videolikes (video,visitor) values(?,?)";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.setInt(1, image);
		preparedStatement.setString(2, visitor);
		preparedStatement.executeUpdate();
	}
	
	public void deleteImageLike(int image, String visitor) throws SQLException{
		String sql = "delete from imagelikes where (image = ? and visitor = ?)";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.setInt(1, image);
		preparedStatement.setString(2, visitor);
		preparedStatement.executeUpdate();
	}
	
	public void deleteBook(String title) throws SQLException{
		String sql = "delete from book where title = ?";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.setString(1, title);
		preparedStatement.executeUpdate();
	}
	
	public void deleteImage(String title) throws SQLException{
		String sql = "delete from images where title = ?";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.setString(1, title);
		preparedStatement.executeUpdate();
	}
	
	public void deleteArticle(String title) throws SQLException{
		String sql = "delete from article where title = ?";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.setString(1, title);
		preparedStatement.executeUpdate();
	}
	public void deleteLesson(String title) throws SQLException{
		String sql = "delete from lessons where title = ?";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.setString(1, title);
		preparedStatement.executeUpdate();
	}
	
	public void deleteChapter(String title) throws SQLException{
		String sql = "delete from chapters where title = ?";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.setString(1, title);
		preparedStatement.executeUpdate();
	}
	
	public void deleteVideo(String title) throws SQLException{
		String sql = "delete from videos where description = ?";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.setString(1, title);
		preparedStatement.executeUpdate();
	}
	
	public void deleteVidLike(int image, String visitor) throws SQLException{
		String sql = "delete from videolikes where (video = ? and visitor = ?)";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.setInt(1, image);
		preparedStatement.setString(2, visitor);
		preparedStatement.executeUpdate();
	}
	
	public ResultSet getImages() throws SQLException{
		String sql = "SELECT * FROM Images";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.executeQuery();
		return preparedStatement.executeQuery();
	}
	
	public ResultSet getGroups() throws SQLException{
		String sql = "SELECT * FROM Groups";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.executeQuery();
		return preparedStatement.executeQuery();
	}
	
	public ResultSet getImageByName(String name) throws SQLException{
		String sql = "SELECT * FROM Images where title like '%"+name+"%'";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.executeQuery();
		return preparedStatement.executeQuery();
	}
	
	public ResultSet getImageByDate(String month, String year) throws SQLException{
		String sql = "SELECT * FROM Images where (date like '%"+month+"%' and date like '%"+year+"%')";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.executeQuery();
		return preparedStatement.executeQuery();
	}
	
	public ResultSet getVideoByDate(String month, String year) throws SQLException{
		String sql = "SELECT * FROM videos where (date like '%"+month+"%' and date like '%"+year+"%')";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.executeQuery();
		return preparedStatement.executeQuery();
	}
	
	public ResultSet getBookByDate(String month, String year) throws SQLException{
		String sql = "SELECT * FROM book where (date like '%"+month+"%' and date like '%"+year+"%')";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.executeQuery();
		return preparedStatement.executeQuery();
	}
	
	public ResultSet getArticleByDate(String month, String year) throws SQLException{
		String sql = "SELECT * FROM article where (date like '%"+month+"%' and date like '%"+year+"%')";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.executeQuery();
		return preparedStatement.executeQuery();
	}
	
	public ResultSet getLessonByDate(String month, String year) throws SQLException{
		String sql = "SELECT * FROM lessons where (date like '%"+month+"%' and date like '%"+year+"%')";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.executeQuery();
		return preparedStatement.executeQuery();
	}
	
	public ResultSet getChapterByDate(String month, String year) throws SQLException{
		String sql = "SELECT * FROM chapters where (date like '%"+month+"%' and date like '%"+year+"%')";
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
	
	public ResultSet getVideoByName(String name) throws SQLException{
		String sql = "SELECT * FROM videos where description like '%"+name+"%'";
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
	
	public ResultSet getChapterByName(String name) throws SQLException{
		String sql = "SELECT * FROM chapters where title like '%"+name+"%'";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.executeQuery();
		return preparedStatement.executeQuery();
	}
	
	public ResultSet getImageLikes(int image, String visitor) throws SQLException{
		String sql = "SELECT * FROM imagelikes where (image=? and visitor like ?)";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.setInt(1, image);
		preparedStatement.setString(2, visitor);
		preparedStatement.executeQuery();
		return preparedStatement.executeQuery();
	}
	
	public ResultSet getVideoLikes(int image, String visitor) throws SQLException{
		String sql = "SELECT * FROM videolikes where (video=? and visitor like ?)";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.setInt(1, image);
		preparedStatement.setString(2, visitor);
		preparedStatement.executeQuery();
		return preparedStatement.executeQuery();
	}
	
	public ResultSet getLastVideoLikes() throws SQLException{
		String sql = "SELECT * FROM ( SELECT * FROM videolikes ORDER BY id DESC LIMIT 6 ) sub ORDER BY id ASC";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.executeQuery();
		return preparedStatement.executeQuery();
	}
	
	public ResultSet getTopBooks() throws SQLException{
		String sql = "SELECT * FROM ( SELECT * FROM book ORDER BY downloads DESC LIMIT 1 ) sub ORDER BY id ASC";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.executeQuery();
		return preparedStatement.executeQuery();
	}
	
	public ResultSet getTopArticles() throws SQLException{
		String sql = "SELECT * FROM ( SELECT * FROM article ORDER BY downloads DESC LIMIT 1 ) sub ORDER BY id ASC";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.executeQuery();
		return preparedStatement.executeQuery();
	}
	
	public ResultSet getTopChapters() throws SQLException{
		String sql = "SELECT * FROM ( SELECT * FROM chapters ORDER BY id DESC LIMIT 1 ) sub ORDER BY id ASC";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.executeQuery();
		return preparedStatement.executeQuery();
	}
	
	public ResultSet getLastImageLikes() throws SQLException{
		String sql = "SELECT * FROM ( SELECT * FROM imagelikes ORDER BY id DESC LIMIT 6 ) sub ORDER BY id ASC";
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
	
	public ResultSet getBookByName(String name) throws SQLException{
		String sql = "SELECT * FROM book where title like '%"+name+"%'";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.executeQuery();
		return preparedStatement.executeQuery();
	}
	
	public ResultSet getArticles() throws SQLException{
		String sql = "SELECT * FROM article ";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.executeQuery();
		return preparedStatement.executeQuery();
	}
	
	public ResultSet getArticleByName(String name) throws SQLException{
		String sql = "SELECT * FROM article where title like '%"+name+"%'";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.executeQuery();
		return preparedStatement.executeQuery();
	}
	
	public ResultSet getLessonByName(String name) throws SQLException{
		String sql = "SELECT * FROM lessons where title like '%"+name+"%'";
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
	
	public ResultSet getLastLessons(int count) throws SQLException{
		String sql = "SELECT * FROM ( SELECT * FROM lessons ORDER BY id DESC LIMIT ? ) sub ORDER BY id ASC";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.setInt(1,count);
		preparedStatement.executeQuery();
		return preparedStatement.executeQuery();
	}
	
	public ResultSet getLastVideos(int count) throws SQLException{
		String sql = "SELECT * FROM ( SELECT * FROM videos ORDER BY id DESC LIMIT ? ) sub ORDER BY id ASC";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.setInt(1,count);
		preparedStatement.executeQuery();
		return preparedStatement.executeQuery();
	}
	
	public ResultSet getLastArticles(int count) throws SQLException{
		String sql = "SELECT * FROM ( SELECT * FROM article ORDER BY id DESC LIMIT ? ) sub ORDER BY id ASC";
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
	
	public ResultSet getMostLikedVideos() throws SQLException{
		String sql = "SELECT * FROM Videos order by likes desc";
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
	
	public void insertMessage(String sender, String email, String subject, String message) throws SQLException{
		String sql = "INSERT INTO messages (sender,email,subject,message,date) values(?,?,?,?,?)";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.setString(1, sender);
		preparedStatement.setString(2, email);
		preparedStatement.setString(3, subject);
		preparedStatement.setString(4, message);
		preparedStatement.setString(5, new java.util.Date().toString());
		preparedStatement.executeUpdate();
	}
	
	public void insertImage(String url, String title, String desc, int category) throws SQLException{
		String sql = "INSERT INTO images (url,title,description,category,date) values(?,?,?,?,?)";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.setString(1, url);
		preparedStatement.setString(2, title);
		preparedStatement.setString(3, desc);
		preparedStatement.setInt(4, category);
		preparedStatement.setString(5, new java.util.Date().toString());
		preparedStatement.executeUpdate();
	}
	
	public void insertSlide(String url) throws SQLException{
		String sql = "INSERT INTO slides (url) values(?)";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.setString(1, url);
		preparedStatement.executeUpdate();
	}
	
	public void insertVideo(String url, String desc, String thumb, int category) throws SQLException{
		String sql = "INSERT INTO videos (url,description,thumb,category,date) values(?,?,?,?,?)";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.setString(1, url);
		preparedStatement.setString(2, desc);
		preparedStatement.setString(3, thumb);
		preparedStatement.setInt(4, category);
		preparedStatement.setString(5, new java.util.Date().toString());
		preparedStatement.executeUpdate();
	}
	
	public void insertArticle(String url, String title, String desc, String icon) throws SQLException{
		String sql = "INSERT INTO article (url,title,description,icon,date) values(?,?,?,?,?)";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.setString(1, url);
		preparedStatement.setString(2, title);
		preparedStatement.setString(3, desc);
		preparedStatement.setString(4, icon);
		preparedStatement.setString(5, new java.util.Date().toString());
		preparedStatement.executeUpdate();
	}
	public void insertBook(String url, String title, String desc, String icon) throws SQLException{
		String sql = "INSERT INTO book (url,title,description,icon,date) values(?,?,?,?,?)";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.setString(1, url);
		preparedStatement.setString(2, title);
		preparedStatement.setString(3, desc);
		preparedStatement.setString(4, icon);
		preparedStatement.setString(5, new java.util.Date().toString());
		preparedStatement.executeUpdate();
	}
	public void insertChapters(String url, String title, String desc, String icon) throws SQLException{
		String sql = "INSERT INTO chapters (url,title,description,icon,date) values(?,?,?,?,?)";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.setString(1, url);
		preparedStatement.setString(2, title);
		preparedStatement.setString(3, desc);
		preparedStatement.setString(4, icon);
		preparedStatement.setString(5, new java.util.Date().toString());
		preparedStatement.executeUpdate();
	}
	
	public void insertLog(String desc, String ip) throws SQLException{
		String sql = "INSERT INTO logs (description,ip,date) values(?,?,?)";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.setString(1, desc);
		preparedStatement.setString(2, ip);
		preparedStatement.setString(3, new java.util.Date().toString());
		preparedStatement.executeUpdate();
	}
	
	
	public void addLike(String url, int like) throws SQLException{
		String sql = "UPDATE images set likes=? where url=?";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.setInt(1, like+1);
		preparedStatement.executeUpdate();
	}
	
	public void addLink(String url) throws SQLException{
		String sql = "INSERT INTO links (url) values(?)";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.setString(1, url);
		preparedStatement.executeUpdate();
	}
	
	public ResultSet getLinks() throws SQLException{
		String sql = "SELECT * FROM links";
		preparedStatement = con.prepareStatement(sql);
		return preparedStatement.executeQuery();
	}
	
	public void markAbsent(String cne, double absence, double note) throws SQLException{
		String sql = "UPDATE etudiants set absence=?, note=? where cne like ?";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.setDouble(1, absence);
		preparedStatement.setDouble(2, note);
		preparedStatement.setString(3, cne);
		preparedStatement.executeUpdate();
	}
	
	public void updateMark(String cne, double note) throws SQLException{
		String sql = "UPDATE etudiants set note=? where cne like ?";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.setDouble(1, note);
		preparedStatement.setString(2, cne);
		preparedStatement.executeUpdate();
	}
	public void insertNotifi(String message, String item) throws SQLException{
		String sql = "INSERT INTO notifications (message,item) values(?,?)";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.setString(1, message);
		preparedStatement.setString(2, item);
		preparedStatement.executeUpdate();
	}
	public void updateSettings(String col, String value) throws SQLException{
		String sql = "UPDATE settings set value=? where setting=?";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.setString(1, value);
		preparedStatement.setString(2, col);
		preparedStatement.executeUpdate();
	}
	
	public void updateConfig(String col, String value) throws SQLException{
		String sql = "UPDATE config set value=? where name=?";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.setString(1, col);
		preparedStatement.setString(2, value);
		preparedStatement.executeUpdate();
	}
	
	public void addLikeVideo(String url, int like) throws SQLException{
		String sql = "UPDATE videos set likes=? where url=?";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.setInt(1, like);
		preparedStatement.setString(2, url);
		preparedStatement.executeUpdate();
	}
	
	public void deleteLike(String url, int like) throws SQLException{
		String sql = "UPDATE images set likes=? where url=?";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.setInt(1, like);
		preparedStatement.setString(2, url);
		preparedStatement.executeUpdate();
	}
	
	public void deleteSlide(int id) throws SQLException{
		String sql = "delete from slides where id=?";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.setInt(1, id);
		preparedStatement.executeUpdate();
	}
	public void deleteLikeVideo(String url, int like) throws SQLException{
		String sql = "UPDATE videos set likes=? where url=?";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.setInt(1, like);
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
	
	public ResultSet getStudentInfo(String cne) throws SQLException{
		String sql = "SELECT * FROM etudiants WHERE cne like ?";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.setString(1,cne);
		preparedStatement.executeQuery();
		return preparedStatement.executeQuery();
	}
	
	public ResultSet getImageInfo(int id) throws SQLException{
		String sql = "SELECT * FROM IMAGES WHERE id=?";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.setInt(1,id);
		preparedStatement.executeQuery();
		return preparedStatement.executeQuery();
	}
	
	public ResultSet getVideoInfo(int id) throws SQLException{
		String sql = "SELECT * FROM videos WHERE id=?";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.setInt(1,id);
		preparedStatement.executeQuery();
		return preparedStatement.executeQuery();
	}
	
	public ResultSet getVideoInfo(String url) throws SQLException{
		String sql = "SELECT * FROM videos WHERE url=?";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.setString(1,url);
		preparedStatement.executeQuery();
		return preparedStatement.executeQuery();
	}
	
	public ResultSet getOptions() throws SQLException{
		String sql = "SELECT * FROM options";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.executeQuery();
		return preparedStatement.executeQuery();
	}

	public ResultSet getLevel() throws SQLException{
		String sql = "SELECT * FROM niveaux";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.executeQuery();
		return preparedStatement.executeQuery();
	}
	public ResultSet getSetting(String setting) throws SQLException{
		String sql = "SELECT * FROM settings where setting like ?";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.setString(1, setting);
		preparedStatement.executeQuery();
		return preparedStatement.executeQuery();
	}
	
	public ResultSet getClasses() throws SQLException{
		String sql = "SELECT * FROM classes";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.executeQuery();
		return preparedStatement.executeQuery();
	}
	
	public void insertLesson(String url, String title, String icon, int classe) throws SQLException{
		String sql = "INSERT INTO lessons (url,title,icon,class,date) values(?,?,?,?,?)";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.setString(1, url);
		preparedStatement.setString(2, title);
		preparedStatement.setString(3, icon);
		preparedStatement.setInt(4, classe);
		preparedStatement.setString(5, new java.util.Date().toString());
		preparedStatement.executeUpdate();
	}
	
	public void insertLessonDownload(int id, int downloads) throws SQLException{
		String sql = "UPDATE lessons set downloads=? where id=?";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.setInt(2, id);
		preparedStatement.setInt(1, downloads+1);
		preparedStatement.executeUpdate();
	}
	
	public void insertClass(int niveau, int option) throws SQLException{
		String sql = "INSERT INTO classes (niveau,options) values(?,?)";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.setInt(1, niveau);
		preparedStatement.setInt(2, option);
		preparedStatement.executeUpdate();
	}
	
	public void insertStudent(String cne, String nom, String prenom, int classe) throws SQLException{
		String sql = "INSERT INTO etudiants (cne,nom,prenom,classe) values(?,?,?,?)";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.setString(1, cne);
		preparedStatement.setString(2, nom);
		preparedStatement.setString(3, prenom);
		preparedStatement.setInt(4, classe);
		preparedStatement.executeUpdate();
	}
	
	
	
	public void deleteStudent(String cne) throws SQLException{
		String sql = "DELETE FROM etudiants WHERE cne like ?";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.setString(1, cne);
		preparedStatement.executeUpdate();
	}
	
	public void deleteStudentByClass(int classe) throws SQLException{
		String sql = "DELETE FROM etudiants WHERE classe=?";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.setInt(1, classe);
		preparedStatement.executeUpdate();
	}
	
	public void deleteClass(int niveau, int option) throws SQLException{
		String sql = "DELETE FROM classes WHERE niveau=? and options=?";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.setInt(1, niveau);
		preparedStatement.setInt(2, option);
		preparedStatement.executeUpdate();
	}
	
	public ResultSet getClassByOption(int option, int level) throws SQLException{
		String sql = "SELECT * FROM classes WHERE (niveau=? and options=?)";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.setInt(1,level);
		preparedStatement.setInt(2,option);
		preparedStatement.executeQuery();
		return preparedStatement.executeQuery();
	}
	
	public ResultSet getVideoByCategory(int category) throws SQLException{
		String sql = "SELECT * FROM videos WHERE category=?";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.setInt(1,category);
		preparedStatement.executeQuery();
		return preparedStatement.executeQuery();
	}
	
	public ResultSet getLessons() throws SQLException{
		String sql = "SELECT * FROM lessons";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.executeQuery();
		return preparedStatement.executeQuery();
	}
	
	public ResultSet getLessonByUrl(String url) throws SQLException{
		String sql = "SELECT * FROM lessons WHERE url=?";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.setString(1,url);
		preparedStatement.executeQuery();
		return preparedStatement.executeQuery();
	}
	
	public ResultSet getMostDownLessons() throws SQLException{
		String sql = "SELECT * FROM lessons order by downloads desc";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.executeQuery();
		return preparedStatement.executeQuery();
	}
	
	public ResultSet getLessonByClass(int classe) throws SQLException{
		String sql = "SELECT * FROM lessons WHERE class=?";
		preparedStatement = con.prepareStatement(sql);
		preparedStatement.setInt(1,classe);
		preparedStatement.executeQuery();
		return preparedStatement.executeQuery();
	}
}


