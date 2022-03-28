package com.login.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginDao {
	String sql = "select *from log_in where email=? and pnumber =?";
	String url = "jdbc:mysql://localhost:3306/chamenos_test";
	String username = "root";
	String password = "8210909";
	public int check (String email, String pnumber)
	{
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/chamenos_test","root","8210909");
			PreparedStatement st= con.prepareStatement(sql);
			st.setString(1, email);
			st.setString(2, pnumber);
			ResultSet rs = st.executeQuery();
			if (rs.next()) {
				int age = rs.getInt(5);	//correspondent to the table
					if (age > 18) {
						return 0; //Adult Voting Poll
					} else if (age < 18){
						return 1; //Kid Voting Poll
					} 
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; //returns error which executes the redirect to sign-in
	} 
}
	

