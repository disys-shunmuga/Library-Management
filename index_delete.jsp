<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
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
<!DOCTYPE html>
<html>
<head>
<center><br><input type="button" onclick="location.href='Home.jsp';" value="Home" style="font-size: 18pt; height: 40px; width:220px; background-color:#e6d1a5; font-family:'Droid Arabic Kufi', serif;" ></center>

<meta charset="ISO-8859-1">
<title>Delete the Record</title>
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
  Background-color:pink;
  margin-left:380px;
  margin-right:200px;
  margin-top:100px;
  margin-bottom:100px;
  width:500px; height:370px;
}
  	
</style>
</head>
<body>
<center><h1>DELETE THE RECORD</h1></center>
<div Class="form-center">
<table border="2">
<tr>
<td><b>Book Id</b></td>
<td><b>Book Name</b></td>
<td><b>Author Name</b></td>
<td><b>Book Edition</b></td>
<td><b>Delete</b></td>
</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from Books_details";
resultSet = statement.executeQuery(sql);
int i=0;
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("Book_refid") %></td>
<td><%=resultSet.getString("book_name") %></td>
<td><%=resultSet.getString("Author_name") %></td>
<td><%=resultSet.getString("Book_edition") %></td>
<td><a href="delete.jsp?Book_refid=<%=resultSet.getString("Book_refid") %>"><button type="button" class="delete">Delete</button></a></td>
</tr>
<%
i++;
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