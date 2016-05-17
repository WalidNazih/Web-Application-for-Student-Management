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

import beans.Image;
import beans.Log;
import classes.DAO;

/**
 * Servlet implementation class Logs
 */
@WebServlet("/Logs")
public class Logs extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Logs() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			DAO dao = new DAO("Simour","root","");
			ResultSet rs = dao.getLogs();
			ArrayList<Log> logList = new ArrayList<>();
			while(rs.next()){
				Log image = new Log(rs.getInt(1),rs.getString(2),rs.getString(3), rs.getString(4));
				logList.add(image);
			}
			HttpSession session = request.getSession();
			session.setAttribute("logList", logList);
			request.getRequestDispatcher("/logs.jsp").forward(request, response);
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
