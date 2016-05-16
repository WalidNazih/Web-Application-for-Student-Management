package myservlets;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.ImageLikes;
import beans.VideoLikes;
import classes.DAO;

/**
 * Servlet implementation class SimLogPan
 */
@WebServlet("/SimLogPan")
public class SimLogPan extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SimLogPan() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession sess = request.getSession();
		ServletContext context = getServletContext();
		if(sess.getAttribute("logged") != null){
    		if((boolean) sess.getAttribute("logged") == true){
    			try {
				DAO dao = new DAO("Simour", "root", "");
				ResultSet rs = dao.getLastImageLikes();
				ArrayList<ImageLikes> lastImgLike = new ArrayList<>();
				while(rs.next()){
					ResultSet rs1 = dao.getImageInfo(rs.getInt(2));
					while(rs1.next()){
					ImageLikes image = new ImageLikes(rs.getInt(1), rs1.getString(3),rs.getString(3));
					lastImgLike.add(image);
					System.out.println(image.getVisitor());
					}
					
				}
				rs = dao.getLastVideoLikes();
				ArrayList<VideoLikes> lastVidLike = new ArrayList<>();
				while(rs.next()){
					ResultSet rs1 = dao.getVideoInfo(rs.getInt(2));
					rs1.next();
					VideoLikes image = new VideoLikes(rs.getInt(1), rs1.getString(3),rs.getString(3));
					lastVidLike.add(image);
					
				}
				sess.setAttribute("lastImgLike", lastImgLike);
				sess.setAttribute("lastVidLike", lastVidLike);
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
    			
    			request.getRequestDispatcher("/WEB-INF/dashboard.jsp").forward(request, response);
    		}else{
        		request.getRequestDispatcher("simlog.jsp").forward(request, response);
        	}
    	}else{
    		request.getRequestDispatcher("simlog.jsp").forward(request, response);
    	}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
