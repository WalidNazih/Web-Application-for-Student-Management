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
				Image image = new Image(rs.getInt(1), rs.getInt(5), rs.getString(2),rs.getString(3), rs.getString(4), rs.getInt(6), boli);
				lastIm.add(image);
			}
			rs = dao.getLastArticles(6);
			ArrayList<Article> lastArt = new ArrayList<>();
			while(rs.next()){
				Article article = new Article(rs.getInt(1), rs.getInt(6), rs.getString(2),rs.getString(3), rs.getString(4), rs.getString(5));
		    	lastArt.add(article);
			}
			session.setAttribute("lastIm", lastIm);
			session.setAttribute("lastArt", lastArt);
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
