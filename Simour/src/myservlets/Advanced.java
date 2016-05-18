package myservlets;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.Article;
import beans.Book;
import beans.Chapter;
import beans.Image;
import beans.Lesson;
import beans.Video;
import classes.DAO;

/**
 * Servlet implementation class Advanced
 */
@WebServlet("/Advanced")
public class Advanced extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Advanced() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			DAO dao = new DAO("Simour","root","");
			String month = request.getParameter("monthAv");
			String year = request.getParameter("yearAv");
			ResultSet rs = dao.getImageByDate(month, year);
			ArrayList<Image> imageList = new ArrayList<>();
			while(rs.next()){
				Image image = new Image(rs.getInt(1), rs.getInt(5), rs.getString(2),rs.getString(3), rs.getString(4), rs.getInt(6), false, rs.getString(7));
				System.out.println(image.getTitle());
				imageList.add(image);
			}
			/*
			rs = dao.getBookByDate(month, year);
			ArrayList<Book> bookList = new ArrayList<>();
			while(rs.next()){
				Book article = new Book(rs.getInt(1), rs.getInt(6), rs.getString(2),rs.getString(3), rs.getString(4), rs.getString(5),rs.getString(6));
				System.out.println(article.getTitle());
		    	bookList.add(article);
			}*/
			rs = dao.getArticleByDate(month, year);
			ArrayList<Article> artList = new ArrayList<>();
			while(rs.next()){
				Article article = new Article(rs.getInt(1), rs.getInt(6), rs.getString(2),rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6));
				System.out.println(article.getTitle());
		    	artList.add(article);
			}
			/* rs = dao.getChapterByDate(month, year);
			ArrayList<Chapter> chapList = new ArrayList<>();
			while(rs.next()){
				Chapter chapter = new Chapter(rs.getInt(1), rs.getInt(6), rs.getString(2),rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6));
				System.out.println(chapter.getTitle());
				chapList.add(chapter);
			}*/
			rs = dao.getVideoByDate(month, year);
			ArrayList<Video> videoList = new ArrayList<>();
			while(rs.next()){
				Video video = new Video(rs.getInt(1), rs.getInt(5), rs.getInt(6), rs.getString(2), rs.getString(3),rs.getString(4), false, rs.getString(6));
				videoList.add(video);
			}
			rs = dao.getLessonByDate(month, year);
			ArrayList<Lesson> lessonList = new ArrayList<>();
			while(rs.next()){
				Lesson image = new Lesson(rs.getInt(1), rs.getString(2),rs.getString(3),rs.getString(4),rs.getInt(5),rs.getInt(6), rs.getString(7));
				lessonList.add(image);
				
			}
			
			HttpSession session = request.getSession();
			session.setAttribute("imageResAv", imageList);
			session.setAttribute("videoResAv", videoList);
			session.setAttribute("artResAv", artList);
			//session.setAttribute("bookResAv", bookList);
			//session.setAttribute("chapterResAv", chapList);
			session.setAttribute("lessonResAv", lessonList);
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		getServletContext().getRequestDispatcher("/rechercheAvancee.jsp").forward(
                request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
