<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Results</title>
<style>
table, td, th {
  border: 1px solid;
  bordercolor: #5DADE2;
}

table {
  width: 30%;
  border-collapse: collapse;
  bordercolor: #5DADE2;
}

td {
  text-align: center;
}

body {
	font-family: "Montserrat", sans-serif; 
}
</style>
</head>
<body>
<%
		if(session.getAttribute("username") == null)
		{
			response.sendRedirect("adminlog.jsp");
		}
	%>
	
	
<div align = "center">
	<h3>Presidential Poll</h3>
<%
try {
Class.forName("com.mysql.jdbc.Driver");
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;

try{ 
connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/chamenos_test","root","8210909");
statement=connection.createStatement();
String sql ="SELECT * FROM president;";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<table>
  <tr>
    <td style="width:70%" ><%=resultSet.getString("president") %></td>
    <td><%=resultSet.getString("total") %></td>
  </tr>
</table>
<% 
		}

	} catch (Exception e) {
	e.printStackTrace();
}
%>
	<br>
	<h3>Vice President Poll</h3>
	
<%
try {
Class.forName("com.mysql.jdbc.Driver");
} catch (ClassNotFoundException e) {
e.printStackTrace();
}


try{ 
connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/chamenos_test","root","8210909");
statement=connection.createStatement();
String sql ="SELECT * FROM vp;";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<table>
  <tr>
    <td style="width:70%" ><%=resultSet.getString("vp") %></td>
    <td><%=resultSet.getString("total") %></td>
  </tr>
</table>
<% 
		}

	} catch (Exception e) {
	e.printStackTrace();
}
%>
<br>
	<h3>Spiderman Poll</h3>
	
<%
try {
Class.forName("com.mysql.jdbc.Driver");
} catch (ClassNotFoundException e) {
e.printStackTrace();
}


try{ 
connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/chamenos_test","root","8210909");
statement=connection.createStatement();
String sql ="SELECT * FROM spiderman;";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<table>
  <tr>
    <td style="width:70%" ><%=resultSet.getString("spiderman") %></td>
    <td><%=resultSet.getString("total") %></td>
  </tr>
</table>
<% 
		}

	} catch (Exception e) {
	e.printStackTrace();
}
%>

<br>
	<h3>Singer Poll</h3>
	
<%
try {
Class.forName("com.mysql.jdbc.Driver");
} catch (ClassNotFoundException e) {
e.printStackTrace();
}


try{ 
connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/chamenos_test","root","8210909");
statement=connection.createStatement();
String sql ="SELECT * FROM singer;";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<table>
  <tr>
    <td style="width:70%" ><%=resultSet.getString("singer") %></td>
    <td><%=resultSet.getString("total") %></td>
  </tr>
</table>
<% 
		}

	} catch (Exception e) {
	e.printStackTrace();
}
%>

<br>
	<h3>Boy Group Poll</h3>
	
<%
try {
Class.forName("com.mysql.jdbc.Driver");
} catch (ClassNotFoundException e) {
e.printStackTrace();
}


try{ 
connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/chamenos_test","root","8210909");
statement=connection.createStatement();
String sql ="SELECT * FROM bband;";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<table>
  <tr>
    <td style="width:70%" ><%=resultSet.getString("bband") %></td>
    <td><%=resultSet.getString("total") %></td>
  </tr>
</table>
<% 
		}

	} catch (Exception e) {
	e.printStackTrace();
}
%>

<br>
	<h3>Television Show Poll</h3>
	
<%
try {
Class.forName("com.mysql.jdbc.Driver");
} catch (ClassNotFoundException e) {
e.printStackTrace();
}


try{ 
connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/chamenos_test","root","8210909");
statement=connection.createStatement();
String sql ="SELECT * FROM tv;";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<table>
  <tr>
    <td style="width:70%" ><%=resultSet.getString("tv") %></td>
    <td><%=resultSet.getString("total") %></td>
  </tr>
</table>
<% 
		}

	} catch (Exception e) {
	e.printStackTrace();
}
%>

<br>
	<h3>James Bond Poll</h3>
	
<%
try {
Class.forName("com.mysql.jdbc.Driver");
} catch (ClassNotFoundException e) {
e.printStackTrace();
}


try{ 
connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/chamenos_test","root","8210909");
statement=connection.createStatement();
String sql ="SELECT * FROM bond;";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<table>
  <tr>
    <td style="width:70%" ><%=resultSet.getString("bond") %></td>
    <td><%=resultSet.getString("total") %></td>
  </tr>
</table>
<% 
		}

	} catch (Exception e) {
	e.printStackTrace();
}
%>

<br>
	<h3>Voters / Poll Users Data (ID, name, age)</h3>
	
<%
try {
Class.forName("com.mysql.jdbc.Driver");
} catch (ClassNotFoundException e) {
e.printStackTrace();
}


try{ 
connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/chamenos_test","root","8210909");
statement=connection.createStatement();
String sql ="SELECT id,name,age FROM log_in;";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<table>
  <tr>
    <td><%=resultSet.getString("id") %></td>
    <td><%=resultSet.getString("name") %></td>
    <td><%=resultSet.getString("age") %></td>
  </tr>
</table>
<% 
		}

	} catch (Exception e) {
	e.printStackTrace();
}
%>

<form action = "AdminOut">
		<input type = "submit" value = "Logout">
	</form>

</div>
</body>
</html>