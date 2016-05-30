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
import beans.Group;
import beans.Lesson;
import beans.Niveau;
import beans.Option;
import classes.DAO;

/**
 * Servlet implementation class Encadrement
 */
@WebServlet("/Encadrement")
public class Encadrement extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Encadrement() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		DAO dao;
		ResultSet rs;
		try {
			dao = new DAO("Simour", "root", "");
			if (session.getAttribute("logged") != null) {
				if ((boolean) session.getAttribute("logged") == true) {
					
					if(request.getParameter("groupbtn") != null){
							
							String classe = request.getParameter("classSelect");
							String name = request.getParameter("name");
							String project = request.getParameter("project");
		            		
		            		String niv = classe.split("\\(")[1].substring(0,classe.split("\\(")[1].length()-1);
		            		String op = classe.split("\\(")[0].substring(0,classe.split("\\(")[0].length()-1);
		            		int nivId = 0, opId = 0;
		            		ArrayList<Niveau> nivL = (ArrayList<Niveau>) session.getAttribute("nivL");
		            		ArrayList<Option> opL = (ArrayList<Option>) session.getAttribute("opL");
		            		for(Niveau n : nivL) if(n.getName().equals(niv)) nivId = n.getId();
		            		for(Option o : opL) if(o.getName().equals(op)) opId = o.getId();
		            		
		            		rs = dao.getClassByOption(opId, nivId);
		            		rs.next();
		            		dao.insertGroup(name,project,rs.getInt(1));
		            		dao.insertLog("Added a group ("+name+")", request.getRemoteAddr());
							
					}
					
						rs = dao.getGroups();
						ArrayList<Group> ar = new ArrayList<>();
						while(rs.next()){
							Group g = new Group(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(1));
							ar.add(g);
						}
						rs = dao.getOptions();
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

						session.setAttribute("opL", opList);
						session.setAttribute("nivL", nivList);
						session.setAttribute("classL", classList);
						session.setAttribute("groupList", ar);
						request.getRequestDispatcher("encadrement.jsp").forward(request, response);
					
				} else {
					request.setAttribute("allow", "You are not allowed to access this page.");
					request.getRequestDispatcher("error.jsp").forward(request, response);
					
				}
			} else {
				System.out.println();
				request.setAttribute("allow", "You are not allowed to access this page.");
				request.getRequestDispatcher("error.jsp").forward(request, response);
			}
		} catch (ClassNotFoundException | SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
