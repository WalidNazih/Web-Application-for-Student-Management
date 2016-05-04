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
import classes.DAO;

/**
 * Servlet implementation class GalleryBack
 */
@WebServlet("/GalleryBack")
public class GalleryBack extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GalleryBack() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			DAO dao = new DAO("simour","root","");
			ResultSet rs = dao.getMostLikedImages();
			ArrayList<Image> imageList = new ArrayList<>();
			while(rs.next()){
				Image image = new Image(rs.getInt(1), rs.getInt(5), rs.getString(2),rs.getString(3), rs.getString(4), rs.getInt(6));
				System.out.println(image.getUrl() + " : "+ image.getLikes());
				imageList.add(image);
			}

			HttpSession session = request.getSession();
			session.setAttribute("topImages", imageList);
			
			request.getRequestDispatcher("gallery.jsp").forward(request, response);
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
