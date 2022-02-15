<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("id");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "shunmugapragasam";
String userid = "root";
String password = "Welcome123#";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update the Record</title>
<style>
body{
		background-image:url('lib13.jpg');
  		background-repeat: no-repeat;
  		background-attachment: fixed;
  		background-size: 100% 100%;
  	}
.form-center{
	
  display:flex;
  justify-content: center;
  Background-color:#e4eb67;
  margin-left:400px;
  margin-right:200px;
  margin-top:100px;
  margin-bottom:100px;
  width:500px; height:370px;
}
  	
</style>
<center><br><input type="button" onclick="location.href='Home.jsp';" value="Home" style="font-size: 18pt; height: 40px; width:220px; background-color:#e6d1a5; font-family:'Droid Arabic Kufi', serif;" ></center>

</head>
<body>
<center><h1>List Of Books</h1></center>
<div class="form-center">
<table border="1">
<tr>
<td><b>Book Id</b></td>
<td><b>Book Name</b></td>
<td><b>Author Name</b></td>
<td><b>Book Edition</b></td>
<td><b>Update</b></td>
</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from Books_details";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("Book_refid") %></td>
<td><%=resultSet.getString("book_name") %></td>
<td><%=resultSet.getString("Author_name") %></td>
<td><%=resultSet.getString("Book_edition") %></td>
<td><a href="update.jsp?Book_refid=<%=resultSet.getString("Book_refid")%>"><button type="button" class="update">update</button></a></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</div>
</body>
</html>