<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String Book_refid = request.getParameter("Book_refid");
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
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from Books_details where Book_refid="+Book_refid;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
<head>
<center><br><input type="button" onclick="location.href='Home.jsp';" value="Home" style="font-size: 18pt; height: 40px; width:220px; background-color:#e6d1a5; font-family:'Droid Arabic Kufi', serif;" ></center>

<meta charset="ISO-8859-1">
<title>Update Book Details</title>
<style>
body{
		background-image:url('lib6.jpg');
  		background-repeat: no-repeat;
  		background-attachment: fixed;
  		background-size: 100% 100%;
  	}
.form-center{
	
  display:flex;
  justify-content: center;
  Background-color:#c5c9bd;
  margin-left:500px;
  margin-right:200px;
  margin-top:100px;
  margin-bottom:100px;
  width:500px; height:370px;
}
  	
</style>
</head>
<body>
<div class="form-center">

<form method="post" action="Update1.jsp">
<center><h1>Update the Book List</h1></center></br>
<b>Book id:</b><br>
<input type="text" name="Book_refid" value="<%=resultSet.getString("Book_refid") %>" readonly>
<br>
<b>Book Name:</b><br>
<input type="text" name="book_name" value="<%=resultSet.getString("book_name") %>">
<br>
<b>Author Name:</b><br>
<input type="text" name="Author_name" value="<%=resultSet.getString("Author_name") %>">
<br>
<b>Book Edition:</b><br>
<input type="text" name="Book_edition" value="<%=resultSet.getString("Book_edition") %>">
<br><br>
<input type="submit" value="submit">
</form>
</div>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>

</body>
</html>
