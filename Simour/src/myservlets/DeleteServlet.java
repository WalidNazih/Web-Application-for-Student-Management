package myservlets;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.IOUtils;

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
			if(type == null) type="";
			if(item == null) item="";
			if(type.contains("Picture")){
				ResultSet rs = dao.getImageByName(item);
				rs.next();
				InputStream input = new FileInputStream(getServletContext().getRealPath("")+""+rs.getString(2));
				OutputStream output = new FileOutputStream(getServletContext().getRealPath("")+"archive/images/"+rs.getString(2).split("/")[1]);
				IOUtils.copy(input, output);
				dao.deleteImage(item);
				dao.insertLog("Deleted the picture ("+item+")", request.getRemoteAddr());
				ServletContext context= getServletContext();
				RequestDispatcher rd= context.getRequestDispatcher("/GalleryBack");
				rd.forward(request, response);
			}else if(type.contains("Video")){
				ResultSet rs = dao.getVideoByName(item);
				rs.next();
				if(!rs.getString(2).contains("youtube.com")){
					InputStream input = new FileInputStream(getServletContext().getRealPath("")+""+rs.getString(2));
					OutputStream output = new FileOutputStream(getServletContext().getRealPath("")+"archive/videos/"+rs.getString(2).split("/")[1]);
					IOUtils.copy(input, output);
				}
				dao.deleteVideo(item);
				dao.insertLog("Deleted the video ("+item+")", request.getRemoteAddr());
				ServletContext context= getServletContext();
				RequestDispatcher rd= context.getRequestDispatcher("/GalleryBack");
				rd.forward(request, response);
			}else if(type.contains("Book")){
				ResultSet rs = dao.getBookByName(item);
				rs.next();
				InputStream input = new FileInputStream(getServletContext().getRealPath("")+""+rs.getString(2));
				OutputStream output = new FileOutputStream(getServletContext().getRealPath("")+"archive/books/"+rs.getString(2).split("/")[1]);
				IOUtils.copy(input, output);
				dao.deleteBook(item);
				dao.insertLog("Deleted the book ("+item+")", request.getRemoteAddr());
				ServletContext context= getServletContext();
				RequestDispatcher rd= context.getRequestDispatcher("/Research");
				rd.forward(request, response);
			}else if(type.contains("Article")){
				ResultSet rs = dao.getArticleByName(item);
				rs.next();
				InputStream input = new FileInputStream(getServletContext().getRealPath("")+""+rs.getString(2));
				OutputStream output = new FileOutputStream(getServletContext().getRealPath("")+"archive/articles/"+rs.getString(2).split("/")[1]);
				IOUtils.copy(input, output);
				dao.deleteArticle(item);
				dao.insertLog("Deleted the article ("+item+")", request.getRemoteAddr());
				ServletContext context= getServletContext();
				RequestDispatcher rd= context.getRequestDispatcher("/Research");
				rd.forward(request, response);
			}else if(type.contains("Book Chapter")){
				ResultSet rs = dao.getChapterByName(item);
				rs.next();
				InputStream input = new FileInputStream(getServletContext().getRealPath("")+""+rs.getString(2));
				OutputStream output = new FileOutputStream(getServletContext().getRealPath("")+"archive/book chapters/"+rs.getString(2).split("/")[1]);
				IOUtils.copy(input, output);
				dao.deleteChapter(item);
				dao.insertLog("Deleted the book chapter ("+item+")", request.getRemoteAddr());
				ServletContext context= getServletContext();
				RequestDispatcher rd= context.getRequestDispatcher("/Research");
				rd.forward(request, response);
			}else if(type.contains("(")){
				ResultSet rs = dao.getLessonByName(item);
				rs.next();
				InputStream input = new FileInputStream(getServletContext().getRealPath("")+""+rs.getString(2));
				OutputStream output = new FileOutputStream(getServletContext().getRealPath("")+"archive/lessons/"+rs.getString(2).split("/")[1]);
				IOUtils.copy(input, output);
				dao.deleteLesson(item);
				dao.insertLog("Deleted the lesson ("+item+")", request.getRemoteAddr());
				ServletContext context= getServletContext();
				RequestDispatcher rd= context.getRequestDispatcher("/Pedagogy");
				rd.forward(request, response);
			}else if(request.getParameter("slideBtn") != null){
				dao.deleteSlide(Integer.parseInt(item.split("")[0]));
				dao.insertLog("Deleted the slide ("+item+")", request.getRemoteAddr());
				ServletContext context= getServletContext();
				RequestDispatcher rd= context.getRequestDispatcher("/SimLogPan");
				rd.forward(request, response);
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
