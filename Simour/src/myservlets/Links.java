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

import beans.Link;
import classes.DAO;

/**
 * Servlet implementation class Links
 */
@WebServlet("/Links")
public class Links extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Links() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("links servlet");
		try {
			DAO dao = new DAO("simour", "root", "");
			if(request.getParameter("addlink") != null){
				String link = request.getParameter("link");
				System.out.println(link);
				dao.addLink(link);
				ServletContext context= getServletContext();
				RequestDispatcher rd= context.getRequestDispatcher("/SimLogPan");
				rd.forward(request, response);
			}else{
				ResultSet rs = dao.getLinks();
				ArrayList<Link> ar = new ArrayList<>();
				while(rs.next()){
					Link l = new Link(rs.getInt(1), rs.getString(2));
					ar.add(l);
				}
				request.setAttribute("linkList", ar);
				RequestDispatcher rd= request.getRequestDispatcher("links.jsp");
				rd.forward(request, response);
			}
			
		} catch (Exception e) {
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
