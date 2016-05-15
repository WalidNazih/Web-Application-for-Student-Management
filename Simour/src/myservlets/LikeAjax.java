package myservlets;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import classes.DAO;

/**
 * Servlet implementation class LikeAjax
 */
@WebServlet("/LikeAjax")
public class LikeAjax extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LikeAjax() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			DAO dao = new DAO("simour","root","");
			String imgurl = request.getParameter("imgurl");
			int boli = Integer.parseInt(request.getParameter("boli"));
			if(imgurl.endsWith(".jpg") || imgurl.endsWith(".png") || imgurl.endsWith(".gif") || imgurl.endsWith(".jpeg")){
				ResultSet rs = dao.getImageInfo(imgurl);
				rs.next();
				if(boli == 1) {
					dao.insertImageLike(rs.getInt(1), request.getRemoteAddr());
					dao.addLike(rs.getString(2), rs.getInt(6));
					response.setContentType("text/plain");
					response.getWriter().write(""+(rs.getInt(6)+1));
					response.getWriter().close();
				}else{
					dao.deleteImageLike(rs.getInt(1), request.getRemoteAddr());
					dao.deleteLike(rs.getString(2), rs.getInt(6));
					response.setContentType("text/plain");
					response.getWriter().write(""+(rs.getInt(6)-1));
					response.getWriter().close();
				}
			}else if(imgurl.endsWith(".avi") || imgurl.endsWith(".mp4") || imgurl.endsWith(".wmv") || imgurl.contains("youtube.com")){
				ResultSet rs = dao.getVideoInfo(imgurl);
				rs.next();
				if(boli == 1) {
					dao.insertVideoLike(rs.getInt(1), request.getRemoteAddr());
					dao.addLikeVideo(rs.getString(2), rs.getInt(6));
					response.setContentType("text/plain");
					response.getWriter().write(""+(rs.getInt(6)+1));
					response.getWriter().close();
				}else{
					dao.deleteVidLike(rs.getInt(1), request.getRemoteAddr());
					dao.deleteLikeVideo(rs.getString(2), rs.getInt(6));
					response.setContentType("text/plain");
					response.getWriter().write(""+(rs.getInt(6)-1));
					response.getWriter().close();
				}
			}
			
			
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
