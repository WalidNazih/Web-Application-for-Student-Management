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
import beans.Image;
import beans.Lesson;
import beans.Slide;
import beans.Video;
import classes.DAO;

/**
 * Servlet implementation class IndexServlet
 */
@WebServlet("/IndexServlet")
public class IndexServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public IndexServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		try {
			DAO dao = new DAO("Simour","root","");
			ResultSet rs = dao.getLastImages(6);
			ArrayList<Image> lastIm = new ArrayList<>();
			while(rs.next()){
				ResultSet res = dao.getImageLikes(rs.getInt(1), request.getRemoteAddr());
				int i = 0;
				while(res.next()) i++;
				boolean boli = i == 0? false : true;
				Image image = new Image(rs.getInt(1), rs.getInt(5), rs.getString(2),rs.getString(3), rs.getString(4), rs.getInt(6), boli, rs.getString(7));
				lastIm.add(image);
			}
			rs = dao.getLastArticles(6);
			ArrayList<Article> lastArt = new ArrayList<>();
			while(rs.next()){
				Article article = new Article(rs.getInt(1), rs.getInt(6), rs.getString(2),rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6));
		    	lastArt.add(article);
			}
			rs = dao.getLastLessons(6);
			ArrayList<Lesson> lastLess = new ArrayList<>();
			while(rs.next()){
				Lesson article = new Lesson(rs.getInt(1),  rs.getString(2),rs.getString(3), rs.getString(4), rs.getInt(5),rs.getInt(6),rs.getString(7));
		    	lastLess.add(article);
			}
			rs = dao.getLastVideos(6);
			ArrayList<Video> lastVid = new ArrayList<>();
			while(rs.next()){
				Video video = new Video(rs.getInt(1), rs.getInt(5), rs.getInt(6), rs.getString(2), rs.getString(3),rs.getString(4), false,rs.getString(5));
				lastVid.add(video);
			}
			rs = dao.getSlides();
			ArrayList<Slide> slideList = new ArrayList<>();
			while(rs.next()){
				Slide image = new Slide(rs.getInt(1), rs.getString(2));
				slideList.add(image);
				
			}
			session.setAttribute("lastIm", lastIm);
			session.setAttribute("lastArt", lastArt);
			session.setAttribute("lastLess", lastLess);
			session.setAttribute("lastVid", lastVid);
			session.setAttribute("slideL", slideList);
			request.getRequestDispatcher("index.jsp").forward(request, response);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
