package myservlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import classes.DAO;

/**
 * Servlet implementation class DeleteServlet
 */
@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			DAO dao = new DAO("Simour", "root", "");
			String type = request.getParameter("type");
			String item = request.getParameter("item");
			if(type.contains("Picture")){
				dao.deleteImage(item);
			}else if(type.contains("Video")){
				dao.deleteVideo(item);
			}else if(type.contains("Book")){
				dao.deleteBook(item);
			}else if(type.contains("Article")){
				dao.deleteArticle(item);
			}else if(type.contains("Book Chapter")){
				dao.deleteChapter(item);
			}else if(type.contains("(")){
				dao.deleteLesson(item);
			}
			ServletContext context= getServletContext();
			RequestDispatcher rd= context.getRequestDispatcher("/GalleryBack");
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
