

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Political
 */
public class Political extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Political() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String president = request.getParameter("president");
		String vp = request.getParameter("vp");
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
														//default/port number def/database name/root/password
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/chamenos_test","root","8210909");
			Statement st=con.createStatement();//Table name //table details                  //				//Values from HTML converted into SQL
			st.executeUpdate("UPDATE president SET total = total + 1 WHERE president = '"+president+"'");
			st.executeUpdate("UPDATE vp SET total = total + 1 WHERE vp = '"+vp+"'");
			response.sendRedirect("done.html"); //delete for second question?
			}
			
		catch(Exception e) {
			response.sendRedirect("form_fail.html");
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
