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

import beans.Chapter;
import beans.Image;
import beans.Video;
import classes.DAO;

/**
 * Servlet implementation class Chapters
 */
@WebServlet("/Chapters")
public class Chapters extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Chapters() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			DAO dao = new DAO("simour", "root", "");
			ResultSet rs = dao.getChapters();
			ArrayList<Chapter> chapList = new ArrayList<>();
			while(rs.next()){
				Chapter chapter = new Chapter(rs.getInt(1), rs.getInt(6), rs.getString(2),rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6));
				chapList.add(chapter);
			}

			HttpSession session = request.getSession();
			session.setAttribute("chapL",chapList);
			request.getRequestDispatcher("chapters.jsp").forward(request, response);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
