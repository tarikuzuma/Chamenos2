package com.admin;

import java.io.IOException;

import com.admin.dao.AdminDao;


import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


public class AdminLog extends HttpServlet {
	private static final long serialVersionUID = 1L;

    
    public AdminLog() {
    	super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String uname = request.getParameter("uname");
		String pass = request.getParameter("pass");
		
		AdminDao dao = new AdminDao();
		
		if (dao.check(uname, pass))
		{
			HttpSession session = request.getSession();
			session.setAttribute("username", uname);
			response.sendRedirect("Results.jsp");
		} else
		{
			response.sendRedirect("adminlog.jsp"); //admin password and username located in database, you cant register
		}
	}


}
