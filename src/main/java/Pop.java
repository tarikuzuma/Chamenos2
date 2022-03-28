

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Pop
 */
public class Pop extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Pop() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
				String spiderman = request.getParameter("spiderman");
				String singer = request.getParameter("singer");
				String bband = request.getParameter("bband");
				String tv = request.getParameter("tv");
				String bond = request.getParameter("bond");
				
				try {
					Class.forName("com.mysql.jdbc.Driver");
																//default/port number def/database name/root/password
					Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/chamenos_test","root","8210909");
					Statement st=con.createStatement();//Table name //table details                  //				//Values from HTML converted into SQL
					st.executeUpdate("UPDATE spiderman SET total = total + 1 WHERE spiderman = '"+spiderman+"'");
					st.executeUpdate("UPDATE singer SET total = total + 1 WHERE singer = '"+singer+"'");
					st.executeUpdate("UPDATE bband SET total = total + 1 WHERE bband = '"+bband+"'");
					st.executeUpdate("UPDATE tv SET total = total + 1 WHERE tv = '"+tv+"'");
					st.executeUpdate("UPDATE bond SET total = total + 1 WHERE bond = '"+bond+"'");
					response.sendRedirect("done.html"); //delete for second question?
					}
					
				catch(Exception e) {
					response.sendRedirect("form_fail.html");
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
