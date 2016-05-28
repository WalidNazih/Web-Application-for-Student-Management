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

import beans.Classe;
import beans.Image;
import beans.Lesson;
import beans.Niveau;
import beans.Option;
import beans.Video;
import classes.DAO;

/**
 * Servlet implementation class Pedagogy
 */
@WebServlet("/Pedagogy")
public class Pedagogy extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Pedagogy() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		if (session.getAttribute("logged") != null) {
			if ((boolean) session.getAttribute("logged") == true) {
				try {
					DAO dao = new DAO("Simour", "root", "");
					ResultSet rs = dao.getOptions();
					ArrayList<Option> opList = new ArrayList<>();
					while (rs.next()) {
						Option image = new Option(rs.getInt(1), rs.getString(2));
						opList.add(image);
					}
					rs = dao.getLevel();
					ArrayList<Niveau> nivList = new ArrayList<>();
					while (rs.next()) {
						Niveau image = new Niveau(rs.getInt(1), rs.getString(2));
						nivList.add(image);
					}
					rs = dao.getClasses();
					ArrayList<Classe> classList = new ArrayList<>();
					while (rs.next()) {
						String niveau = null, option = null;
						for (Niveau n : nivList)
							if (n.getId() == rs.getInt(2))
								niveau = n.getName();
						for (Option o : opList)
							if (o.getId() == rs.getInt(3))
								option = o.getName();
						Classe image = new Classe(rs.getInt(1), niveau, option);
						classList.add(image);
					}
					rs = dao.getMostDownLessons();
					ArrayList<Lesson> topLesson = new ArrayList<>();
					while (rs.next()) {
						Lesson image = new Lesson(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
								rs.getInt(5), rs.getInt(6), rs.getString(7));
						topLesson.add(image);
					}

					session.setAttribute("opL", opList);
					session.setAttribute("nivL", nivList);
					session.setAttribute("classL", classList);
					session.setAttribute("topLesson", topLesson);
					request.getRequestDispatcher("pedagogy.jsp").forward(request, response);
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
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
