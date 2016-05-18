package myservlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.ImageLikes;
import beans.Lesson;
import beans.Slide;
import beans.VideoLikes;
import classes.DAO;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession sess = request.getSession();
		
    	if(request.getParameter("user") != null && request.getParameter("pass") != null){
        	if(request.getParameter("user").equals("admin") && request.getParameter("pass").equals("simour")){
        		sess.setAttribute("logged", true);
        		try {
					DAO dao = new DAO("Simour", "root", "");
					dao.insertLog("Logged in to backoffice", request.getRemoteAddr());
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
					rs = dao.getSlides();
					ArrayList<Slide> slideList = new ArrayList<>();
					while(rs.next()){
						Slide image = new Slide(rs.getInt(1), rs.getString(2));
						slideList.add(image);
						
					}
					sess.setAttribute("lastImgLike", lastImgLike);
					sess.setAttribute("lastVidLike", lastVidLike);
					sess.setAttribute("slideL", slideList);
				} catch (ClassNotFoundException | SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
        		request.getRequestDispatcher("/WEB-INF/dashboard.jsp").forward(request, response);
       		}else{
       			request.setAttribute("error", true);
       			request.setAttribute("errorMessage", "Invalid username or password please try again");
       			request.getRequestDispatcher("simlog.jsp").forward(request, response);
       		}
    	}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
