package myservlets;

import java.io.IOException;
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
				System.out.println("sd");
				HttpSession session = request.getSession();
				ArrayList<Niveau> nivL = (ArrayList<Niveau>) session.getAttribute("nivL");
	    		ArrayList<Option> opL = (ArrayList<Option>) session.getAttribute("opL");
	    		int nivId =0, opId = 0;
	    		//System.out.println(nivL.get(2).getName().equals(request.getParameter("levelSelect").trim()));
	    		
	    		for(Niveau n : nivL) if(n.getName().contains(request.getParameter("levelSelect").trim())) nivId = n.getId();
	    		for(Option o : opL) if(o.getName().contains(request.getParameter("optionSelect").trim())) opId = o.getId();
				
	    		dao.insertClass(nivId,opId);
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
