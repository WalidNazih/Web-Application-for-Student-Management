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
import classes.DAO;

/**
 * Servlet implementation class ManageClasses
 */
@WebServlet("/ManageClasses")
public class ManageClasses extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ManageClasses() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		DAO dao;
		try {
			dao = new DAO("simour","root","");
			if(request.getParameter("add") != null){
				HttpSession session = request.getSession();
				ArrayList<Niveau> nivL = (ArrayList<Niveau>) session.getAttribute("nivL");
	    		ArrayList<Option> opL = (ArrayList<Option>) session.getAttribute("opL");
	    		int nivId =0, opId = 0;
	    		
	    		for(Niveau n : nivL) if(n.getName().contains(request.getParameter("levelSelect").trim())) nivId = n.getId();
	    		for(Option o : opL) if(o.getName().contains(request.getParameter("optionSelect").trim())) opId = o.getId();
				
	    		dao.insertClass(nivId,opId);
	    		dao.insertLog("Added a class ("+request.getParameter("optionSelect") +"("+request.getParameter("levelSelect")+")"+")", request.getRemoteAddr());
			}else if(request.getParameter("remove") != null){
				System.out.println("Remove");
				HttpSession session = request.getSession();
				ArrayList<Niveau> nivL = (ArrayList<Niveau>) session.getAttribute("nivL");
	    		ArrayList<Option> opL = (ArrayList<Option>) session.getAttribute("opL");
	    		int nivId =0, opId = 0;
	    		
	    		for(Niveau n : nivL) if(n.getName().contains(request.getParameter("levelSelect").trim())) nivId = n.getId();
	    		for(Option o : opL) if(o.getName().contains(request.getParameter("optionSelect").trim())) opId = o.getId();
	    		
	    		ResultSet rs = dao.getClassByOption(opId, nivId);
        		rs.next();
				dao.deleteStudentByClass(rs.getInt(1));
	    		dao.deleteClass(nivId,opId);
	    		
	    		dao.insertLog("Deleted a class ("+request.getParameter("optionSelect") +"("+request.getParameter("levelSelect")+")"+")", request.getRemoteAddr());
			}
			ServletContext context= getServletContext();
			RequestDispatcher rd= context.getRequestDispatcher("/Pedagogy");
			rd.forward(request, response);
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
