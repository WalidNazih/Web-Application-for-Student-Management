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
 * Servlet implementation class WebVideo
 */
@WebServlet("/WebVideo")
public class WebVideo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public WebVideo() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = request.getParameter("urlweb");
		String modurl = null, thumbnail = null;
		if(url.contains("youtube.com")){
			modurl = "https://www.youtube.com/embed/";
			String[] splitUrl = url.split("=");
			modurl = modurl + splitUrl[1];
			thumbnail = "https://i.ytimg.com/vi/"+splitUrl[1]+"/maxresdefault.jpg";
		}
		
		String description = request.getParameter("desc");
		System.out.println(modurl);
		System.out.println(description);
		
		try {
			DAO dao = new DAO("simour","root","");
			dao.insertVideo(modurl, description, thumbnail, 1);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.getRequestDispatcher("gallery.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request,response);
	}

}
