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
import beans.Classe;
import beans.Lesson;
import beans.Niveau;
import beans.Option;
import classes.DAO;

/**
 * Servlet implementation class Research
 */
@WebServlet("/Research")
public class Research extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Research() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		if (session.getAttribute("logged") != null) {
			if ((boolean) session.getAttribute("logged") == true) {
				try {
					DAO dao = new DAO("Simour", "root", "");
					ResultSet rs = dao.getTopBooks();
					ArrayList<Book> opList = new ArrayList<>();
					while (rs.next()) {
						Book article = new Book(rs.getInt(1), rs.getInt(6), rs.getString(2),rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6));
						opList.add(article);
					}
					rs = dao.getTopArticles();
					ArrayList<Article> nivList = new ArrayList<>();
					while (rs.next()) {
						Article article = new Article(rs.getInt(1), rs.getInt(6), rs.getString(2),rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6));
						nivList.add(article);
					}
					rs = dao.getTopChapters();
					ArrayList<Chapter> classList = new ArrayList<>();
					while (rs.next()) {
						Chapter chapter = new Chapter(rs.getInt(1), rs.getInt(6), rs.getString(2),rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6));
						classList.add(chapter);
					}

					session.setAttribute("topBook", opList);
					session.setAttribute("topArt", nivList);
					session.setAttribute("topChap", classList);
					request.getRequestDispatcher("research.jsp").forward(request, response);
				} catch (ClassNotFoundException | SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				System.out.println((boolean) session.getAttribute("logged"));
			} else {
				request.setAttribute("allow", "You are not allowed to access this page.");
				request.getRequestDispatcher("error.jsp").forward(request, response);
				
			}
		} else {
			System.out.println();
			request.setAttribute("allow", "You are not allowed to access this page.");
			request.getRequestDispatcher("error.jsp").forward(request, response);
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
