package myservlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
