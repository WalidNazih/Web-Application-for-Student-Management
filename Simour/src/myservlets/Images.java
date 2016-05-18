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
import beans.Message;
import beans.Video;
import classes.DAO;

/**
 * Servlet implementation class Images
 */
@WebServlet("/Images")
public class Images extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Images() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			DAO dao = new DAO("simour", "root", "");
			ResultSet rs = dao.getImages();
			ArrayList<Image> imageList = new ArrayList<>();
			while(rs.next()){
				ResultSet res = dao.getImageLikes(rs.getInt(1), request.getRemoteAddr());
				int i = 0;
				while(res.next()) i++;
				boolean boli = i == 0? false : true;
				Image image = new Image(rs.getInt(1), rs.getInt(5), rs.getString(2),rs.getString(3), rs.getString(4), rs.getInt(6), boli, rs.getString(7));
				System.out.println(image.getTitle()+" : "+image.isLiked());
				imageList.add(image);
			}
			rs = dao.getVideos();
			ArrayList<Video> videoList = new ArrayList<>();
			while(rs.next()){
				ResultSet res = dao.getVideoLikes(rs.getInt(1), request.getRemoteAddr());
				int i = 0;
				while(res.next()) i++;
				boolean boli = i == 0? false : true;
				Video video = new Video(rs.getInt(1), rs.getInt(5), rs.getInt(6), rs.getString(2), rs.getString(3),rs.getString(4), boli, rs.getString(5));
				videoList.add(video);
			}

			HttpSession session = request.getSession();
			session.setAttribute("imageL", imageList);
			session.setAttribute("vidL", videoList);
			request.getRequestDispatcher("gallery_front.jsp").forward(request, response);
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
