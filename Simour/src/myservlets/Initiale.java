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
import beans.Lesson;
import beans.Niveau;
import beans.Option;
import classes.DAO;

/**
 * Servlet implementation class Normale
 */
@WebServlet("/Initiale")
public class Initiale extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Initiale() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			DAO dao = new DAO("Simour", "root", "");
			ResultSet rs = dao.getOptions();
			ArrayList<Option> opList = new ArrayList<>();
			while(rs.next()){
				Option image = new Option(rs.getInt(1), rs.getString(2));
				opList.add(image);
			}
			rs = dao.getLevel();
			ArrayList<Niveau> nivList = new ArrayList<>();
			while(rs.next()){
				Niveau image = new Niveau(rs.getInt(1), rs.getString(2));
				nivList.add(image);
			}
			rs = dao.getClasses();
			ArrayList<Classe> classList = new ArrayList<>();
			ArrayList<Lesson> normaleLesson = new ArrayList<>();
			while(rs.next()){
				String niveau = null, option = null;
				for(Niveau n : nivList) if(n.getId() == rs.getInt(2)) niveau = n.getName();
				for(Option o : opList) if(o.getId() == rs.getInt(3)) option = o.getName();
				Classe image = new Classe(rs.getInt(1), niveau, option);
				if(!image.getNiveau().contains("Continued")){
					ResultSet rs1 = dao.getLessonByClass(image.getId());
					
					while(rs1.next()){
						Lesson lesson = new Lesson(rs1.getInt(1), rs1.getString(2),rs1.getString(3),rs1.getString(4),rs1.getInt(5),rs1.getInt(6));
						normaleLesson.add(lesson);
					}
				}
				classList.add(image);
			}
			
			

			HttpSession session = request.getSession();
			session.setAttribute("opL", opList);
			session.setAttribute("nivL", nivList);
			session.setAttribute("classL", classList);
			session.setAttribute("normaleLesson", normaleLesson);
			request.getRequestDispatcher("/normal.jsp").forward(request, response);
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
