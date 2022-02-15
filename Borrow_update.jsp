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
<center><br><input type="button" onclick="location.href='Home.jsp';" value="Home" style="font-size: 18pt; height: 40px; width:220px; background-color:#e6d1a5; font-family:'Droid Arabic Kufi', serif;" ></center>

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
  Background-color:#deb6b6;
  margin-left:440px;
  margin-right:200px;
  margin-top:10px;
  margin-bottom:100px;
  width:460px; height:425px;
}
  	
</style>
</head>
<body>
<center><h1>List of Book Borrowed</h1></center>
<div class="form-center">

<table border="2">
<tr>
<td><b>Student Id</b></td>
<td><b>Book Id</b></td>
<td><b>Borrowed Date</b></td>
<td><b>Return Date</b></td>
<td><b>Update</b></td>
</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from borrower_details";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
	
	
	
	
	
	
	
	
	
	
	
	
	
	
%>
<tr>
<td><%=resultSet.getString("Borrower_Id") %></td>
<td><%=resultSet.getString("book_IId") %></td>
<td><%=resultSet.getString("Borrowed_From") %></td>
<td><%=resultSet.getString("Return_date") %></td>
<td><a href="Borrow_update2.jsp?Borrower_Id=<%=resultSet.getString("Borrower_Id")%>"><button type="button" class="update">update</button></a></td>
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