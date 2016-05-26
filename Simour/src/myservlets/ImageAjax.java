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
 * Servlet implementation class ImageAjax
 */
@WebServlet("/ImageAjax")
public class ImageAjax extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ImageAjax() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int category = Integer.parseInt(request.getParameter("cat"));
		System.out.println(category);
		DAO dao;
		try {
			dao = new DAO("simour", "root", "");
			ResultSet rs = dao.getImageByCategory(category);
			response.setContentType("text/html");
			while (rs.next()) {

				
				response.getWriter().println("<div class=\"col-sm-3\">"
						+ "<div class=\"\">"
						+ "	<div class=\"image view view-first\">"

						+ "	<img style=\"width: 100%; height: 230px; display: block;\" "
							+ "		src=\""+rs.getString(2)+"\" alt=\"video\" id=\"clickImage\" />"
							+ "<div class=\"mask\" style=\"color: white;height:230px\">"
								+ "	<a href=\"#\" class=\"like\"><i"
									+ "	style=\"color: white; margin-top: 90px\" "
										+ "class=\"fa fa-heart-o fa-2x\"></i> <img "
										+ "style=\"display: none; width: 100%; height: 230px;\" "
										+ "src=\""+rs.getString(2)+"\" alt=\"image\" id=\"clickImage\" /> </a> <a "
										+ "href=\"#\" class=\"pop\"><i "
										+ "style=\"color: white; margin-top: 90px\" "
										+ "class=\"fa fa-search fa-2x\"></i> <img "
										+ "style=\"display: none; width: 100%; height: 230px;\" "
										+ "src=\""+rs.getString(2)+"\" alt=\"image\" id=\"clickImage\" /> </a> <br>"
										+ "<i id=\"likecount\" style=\"font-weight: bold\">"+rs.getString(6)+""
										+ " likes</i>"
								+ "</div>"


							+ "</div>"
							+ "<div class=\"caption\">"
								+ "<center>"
									+ "<p style=\"font-weight: bold; font-size: 20px; font-size: 15px; height:20px\">"+rs.getString(3)+"</p>"
								+ "</center>"
							+ "</div>"
						+ "</div>"
					+ "</div>");
			}
			response.getWriter().println("<script src=\"js/modalshow.js\"></script>");
			response.getWriter().println("<script src=\"js/ajax.js\"></script>");
			response.getWriter().close();
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
