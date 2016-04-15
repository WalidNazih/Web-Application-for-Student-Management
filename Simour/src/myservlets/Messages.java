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

import beans.Message;
import classes.DAO;

/**
 * Servlet implementation class Messages
 */
@WebServlet("/Messages")
public class Messages extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Messages() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id;
		if(request.getParameter("id") != null){
			id = Integer.parseInt(request.getParameter("id"));
		}else id=1;
		
		try {
			DAO dao = new DAO("simour", "root", "");
			ResultSet rs = dao.getMessages();
			ArrayList<Message> messageList = new ArrayList<>();
			while(rs.next()){
				Message message = new Message(rs.getInt(1), rs.getString(2), rs.getString(3),rs.getString(4), rs.getDate(5));
				messageList.add(message);
			}

			HttpSession session = request.getSession();
			session.setAttribute("messages", messageList);
			for(Message m : messageList){
				if(m.getId() == id) {
					session.setAttribute("selectedMessage", m);
					break;
				}
			}
			
			request.getRequestDispatcher("inbox.jsp").forward(request, response);
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
