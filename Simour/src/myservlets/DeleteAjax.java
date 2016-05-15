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

import beans.Classe;
import beans.Niveau;
import beans.Option;
import classes.DAO;

/**
 * Servlet implementation class DeleteAjax
 */
@WebServlet("/DeleteAjax")
public class DeleteAjax extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteAjax() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			PrintWriter pw = response.getWriter();
			response.setContentType("text/html");
			DAO dao = new DAO("Simour","root","");
			String value = request.getParameter("value");
			System.out.println(value);
			if(value.contains("Picture")){
				
				pw.println("<select name=\"item\" id=\"item\" style=\"width:100%\">");
				ResultSet rs = dao.getImages();
				while(rs.next()){
					pw.println("<option value=\""+rs.getString(3)+"\">"+rs.getString(3)+"</option>");
				}
				pw.println("<select>");
				pw.close();
			}else if(value.contains("Video")){
				
				pw.println("<select name=\"item\" id=\"item\" style=\"width:100%\">");
				ResultSet rs = dao.getVideos();
				while(rs.next()){
					pw.println("<option value=\""+rs.getString(3)+"\">"+rs.getString(3)+"</option>");
				}
				pw.println("<select>");
				pw.close();
			}else if(value.contains("Book")){
				
				pw.println("<select name=\"item\" id=\"item\" style=\"width:100%\">");
				ResultSet rs = dao.getBooks();
				while(rs.next()){
					pw.println("<option value=\""+rs.getString(3)+"\">"+rs.getString(3)+"</option>");
				}
				pw.println("<select>");
				pw.close();
			}else if(value.contains("Article")){
				
				pw.println("<select name=\"item\" id=\"item\" style=\"width:100%\">");
				ResultSet rs = dao.getArticles();
				while(rs.next()){
					pw.println("<option value=\""+rs.getString(3)+"\">"+rs.getString(3)+"</option>");
				}
				pw.println("<select>");
				pw.close();
			}else if(value.contains("Book Chapter")){
				
				pw.println("<select name=\"item\" id=\"item\" style=\"width:100%\">");
				ResultSet rs = dao.getChapters();
				while(rs.next()){
					pw.println("<option value=\""+rs.getString(3)+"\">"+rs.getString(3)+"</option>");
				}
				pw.println("<select>");
				pw.close();
			}else if(value.contains("(")){
				String niv = value.split("\\(")[1].substring(0, value.split("\\(")[1].length()-2);
				String opt = value.split("\\(")[0].trim();
				ResultSet rs = dao.getOptions();
				ArrayList<Option> opList = new ArrayList<>();
				while(rs.next()){
					Option image = new Option(rs.getInt(1), rs.getString(2));
					opList.add(image);
				}
				rs = dao.getLevel();
				ArrayList<Niveau> nivList = new ArrayList<>();
				while(rs.next()){
					Niveau image = new Niveau(rs.getInt(1), rs.getString(2));
					nivList.add(image);
				}
				rs = dao.getClasses();
				ArrayList<Classe> classList = new ArrayList<>();
				while(rs.next()){
					String niveau = null, option = null;
					for(Niveau n : nivList) if(n.getId() == rs.getInt(2)) niveau = n.getName();
					for(Option o : opList) if(o.getId() == rs.getInt(3)) option = o.getName();
					Classe image = new Classe(rs.getInt(1), niveau, option);
					System.out.println(image.getOption());
					classList.add(image);
				}
				pw.println("<select name=\"item\" id=\"item\" style=\"width:100%\">");
				for(Classe c : classList){

					if(c.getNiveau().equals(niv) && c.getOption().equals(opt)){
						System.out.println(c.getId());
						System.out.println(c.getNiveau());
						System.out.println(c.getOption());
						rs = dao.getLessonByClass(c.getId());
						while(rs.next()){
							pw.println("<option value=\""+rs.getString(3)+"\">"+rs.getString(3)+"</option>");
						}
					}
				}
				pw.println("<select>");
				pw.close();
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
