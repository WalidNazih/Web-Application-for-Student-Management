package myservlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import classes.DAO;

/**
 * Servlet implementation class UpdateSettings
 */
@WebServlet("/UpdateSettings")
public class UpdateSettings extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateSettings() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getParameter("markUpdate") != null){
			String absence = request.getParameter("mark");
			try {
				DAO dao = new DAO("Simour","root","");
				dao.updateSettings("absence", absence);
				dao.insertLog("Updated absence setting to ("+absence+")", request.getRemoteAddr());
				request.getRequestDispatcher("dashboard.jsp").forward(request, response);
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else if(request.getParameter("newsUpdate") != null){
			String news = request.getParameter("news");
			System.out.println(news);
			try {
				DAO dao = new DAO("Simour","root","");
				dao.updateSettings("news", news);
				dao.insertLog("Updated news to ("+news+")", request.getRemoteAddr());
				dao.insertNotifi("Message from Mr Simour", news);
				request.getRequestDispatcher("dashboard.jsp").forward(request, response);
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
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
