package myservlets;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.Niveau;
import beans.Option;
import beans.Student;
import classes.DAO;

/**
 * Servlet implementation class Students
 */
@WebServlet("/Students")
public class Students extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Students() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DAO dao;
		try {
			dao = new DAO("simour","root","");
			if(request.getParameter("addstu") != null){
				HttpSession session = request.getSession();
				
				String classe = request.getParameter("classeStu");
				String cne = request.getParameter("cne");
				String fn = request.getParameter("prenom");
				String ln = request.getParameter("nom");
        		
        		String niv = classe.split("\\(")[1].substring(0,classe.split("\\(")[1].length()-1);
        		String op = classe.split("\\(")[0].substring(0,classe.split("\\(")[0].length()-1);
        		int nivId = 0, opId = 0;
        		ArrayList<Niveau> nivL = (ArrayList<Niveau>) session.getAttribute("nivL");
        		ArrayList<Option> opL = (ArrayList<Option>) session.getAttribute("opL");
        		for(Niveau n : nivL) if(n.getName().equals(niv)) nivId = n.getId();
        		for(Option o : opL) if(o.getName().equals(op)) opId = o.getId();
        		
        		ResultSet rs = dao.getClassByOption(opId, nivId);
        		rs.next();
        		dao.insertStudent(cne, ln, fn, rs.getInt(1));
        		dao.insertLog("Added Student ("+cne+")", request.getRemoteAddr());
        		ServletContext context= getServletContext();
    			RequestDispatcher rd= context.getRequestDispatcher("/Pedagogy");
    			rd.forward(request, response);
			}else if(request.getParameter("removestu") != null){
				HttpSession session = request.getSession();
				
				String classe = request.getParameter("classeStu");
				String cne = request.getParameter("cne");
        		
        		String niv = classe.split("\\(")[1].substring(0,classe.split("\\(")[1].length()-1);
        		String op = classe.split("\\(")[0].substring(0,classe.split("\\(")[0].length()-1);
        		int nivId = 0, opId = 0;
        		ArrayList<Niveau> nivL = (ArrayList<Niveau>) session.getAttribute("nivL");
        		ArrayList<Option> opL = (ArrayList<Option>) session.getAttribute("opL");
        		for(Niveau n : nivL) if(n.getName().equals(niv)) nivId = n.getId();
        		for(Option o : opL) if(o.getName().equals(op)) opId = o.getId();
        		
        		ResultSet rs = dao.getClassByOption(opId, nivId);
        		rs.next();
        		dao.deleteStudent(cne);
	    		dao.insertLog("Deleted Student "+cne, request.getRemoteAddr());
	    		ServletContext context= getServletContext();
				RequestDispatcher rd= context.getRequestDispatcher("/Pedagogy");
				rd.forward(request, response);
			}else if(request.getParameter("absent") != null){
				HttpSession session = request.getSession();
				String cne = request.getParameter("cne");
				String absHour = request.getParameter("absHour");
        		ResultSet rs = dao.getStudentInfo(cne);
        		rs.next();
        		
        		int abs = rs.getInt(7);
        		double note = rs.getDouble(6);
        		System.out.println("Absence : "+abs);
        		System.out.println("Note : "+note);
        		rs = dao.getSetting("absence");
        		rs.next();
        		System.out.println(Double.parseDouble(rs.getString(3)));
        		dao.markAbsent(cne, Double.parseDouble(absHour), note - (Double.parseDouble(absHour) / Double.parseDouble(rs.getString(3))));
        		
	    		dao.insertLog("Marked Student as absent "+cne, request.getRemoteAddr());
	    		ServletContext context= getServletContext();
				RequestDispatcher rd= context.getRequestDispatcher("/Pedagogy");
				rd.forward(request, response);
			}else if(request.getParameter("upMark") != null){
				HttpSession session = request.getSession();
				String cne = request.getParameter("cne");
				String mark = request.getParameter("mark");
        		
        		dao.updateMark(cne, Double.parseDouble(mark));
	    		dao.insertLog("Updated Student's Mark "+cne, request.getRemoteAddr());
	    		ServletContext context= getServletContext();
				RequestDispatcher rd= context.getRequestDispatcher("/Pedagogy");
				rd.forward(request, response);
			}else if(request.getParameter("infostu") != null){
				HttpSession session = request.getSession();
				String cne = request.getParameter("cne");
        		
        		ResultSet rs = dao.getStudentInfo(cne);
        		rs.next();
        		Student s = new Student(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),rs.getInt(5), rs.getDouble(6),rs.getInt(7));
        		request.setAttribute("student", s);
        		rs = dao.getSetting("absence");
        		rs.next();
        		request.setAttribute("absenceMark", s.getAbsence() / Double.parseDouble(rs.getString(3)));
        		request.setAttribute("absenceDef", rs.getString(3));
        		request.getRequestDispatcher("/students.jsp").forward(request,response);
			}
			
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
