package com.login;

import java.io.IOException;

import com.login.dao.LoginDao;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

    
    public Login() {
    	super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String email = request.getParameter("email");
		String pnumber = request.getParameter("pnumber");
		
		LoginDao dao = new LoginDao();
		int loginState = dao.check(email, pnumber); //checks DAO
		
		
			if (loginState==0) {
			HttpSession session = request.getSession();
			session.setAttribute("email", email);
			response.sendRedirect("votepoll2.html"); // adult poll
			}else if (loginState== 1) {
				HttpSession session = request.getSession();
				session.setAttribute("email", email);
				response.sendRedirect("votepoll1.html");  // kid poll
			 	} else if (loginState==-1) {
			 		response.sendRedirect("sign_inFail.html"); //fail
			 	}
	}


}
