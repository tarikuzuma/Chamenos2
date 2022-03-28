

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class Register
 */
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Register() {
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String pnumber = request.getParameter("pnumber");
		int age = Integer.parseInt(request.getParameter("age"));
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
														//default/port number def/database name/root/password
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/chamenos_test","root","8210909");
			Statement st=con.createStatement();//Table name //table details                  //				//Values from HTML converted into SQL
			st.executeUpdate("insert into log_in(name,email,pnumber,age) values('"+name+"','"+email+"','"+pnumber+"','"+age+"')");
			response.sendRedirect("home.html");
			}
			
		catch(Exception e) {
			response.sendRedirect("record_fail.html");
		}
	}

}
