package com.admin.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class AdminDao {
	String sql = "select *from adminlog where uname=? and pass =?";
	String url = "jdbc:mysql://localhost:3306/chamenos_test";
	String username = "root";
	String password = "8210909";
	public boolean check (String uname, String pass)
	{
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/chamenos_test","root","8210909");
			PreparedStatement st= con.prepareStatement(sql);
			st.setString(1, uname);
			st.setString(2, pass);
			ResultSet rs = st.executeQuery();
			if (rs.next()) {
	
				return true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
}
	

