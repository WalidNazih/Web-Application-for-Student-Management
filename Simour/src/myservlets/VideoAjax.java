package myservlets;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import classes.DAO;

/**
 * Servlet implementation class VideoAjax
 */
@WebServlet("/VideoAjax")
public class VideoAjax extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public VideoAjax() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int cat = Integer.parseInt(request.getParameter("cat"));
		DAO dao;
		try {
			dao = new DAO("simour", "root", "");
			ResultSet rs = dao.getVideoByCategory(cat);
			response.setContentType("text/html");
			while (rs.next()) {
				response.getWriter().println("<div class=\"col-sm-3\">");
				response.getWriter().println("<div class=\"thumbnail\">");
				response.getWriter().println("<div class=\"image view view-first\">");
				response.getWriter().println(
						"<img style=\"width: 100%; height: 230px; display: block;\" src=\""+rs.getString(4)+"\" alt=\"video\"  id=\"clickImage\"/>");
				response.getWriter().println("<div class=\"mask\" style=\"color: white\">");
				response.getWriter().println("<a href=\"#\" class=\"like\">");
				response.getWriter().println("<i style=\"color: white; margin-top: 90px\" class=\"fa fa-heart-o fa-2x\"></i>");
				response.getWriter().println("<img style=\"display: none; width: 100%; height: 230px;\" src=\""+rs.getString(2)+"\" alt=\"image\" id=\"clickImage\" /> </a>");
				response.getWriter().println("<a href=\"#\" class=\"vidpop\">");
				response.getWriter().println("<i style=\"color: white;margin-top: 90px\" class=\"fa fa-search fa-2x\"></i>");
				response.getWriter().println("<img style=\"display: none; width: 100%; height: 230px;\" src=\""+rs.getString(2)+"\"  alt=\"image\" id=\"clickImage\" /> </a> <br>");
				response.getWriter().println("<i id=\"likecount\" style=\"font-weight: bold\">"+rs.getString(6) +" likes</i>");
				response.getWriter().println("</div>");
				response.getWriter().println("</a>");
				response.getWriter().println("</div>");
				response.getWriter().println("<div class=\"caption\">");
				response.getWriter().println("<center>");
				response.getWriter().println("<p style=\"font-weight: bold; font-size: 20px\">"+rs.getString(3)+"</p>");
				response.getWriter().println("</center>");
				response.getWriter().println("</div>");
				response.getWriter().println("</div>");
				response.getWriter().println("</div>");
			}
			response.getWriter().close();
		} catch (ClassNotFoundException | SQLException e) {
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
