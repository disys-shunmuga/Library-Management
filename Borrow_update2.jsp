<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String Borrower_Id = request.getParameter("Borrower_Id");
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
String sql ="select * from borrower_details where Borrower_Id ="+Borrower_Id;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<center><br><input type="button" onclick="location.href='Home.jsp';" value="Home" style="font-size: 18pt; height: 40px; width:220px; background-color:#e6d1a5; font-family:'Droid Arabic Kufi', serif;" ></center>

<title>Update Borrow Detail</title>
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
  Background-color:grey;
  margin-left:500px;
  margin-right:200px;
  margin-top:100px;
  margin-bottom:100px;
  width:300px; height:370px;
}
  	
</style>
</head>
<body>
<div class="form-center">
<form method="post" action="borrow_update3.jsp">
<h1>Update the Record</h1>
<b>Student Id:</b><br>
<input type="text" name="Borrower_Id" value="<%=resultSet.getString("Borrower_Id") %>" readonly>
<br>
<b>Book Id:</b><br>
<input type="text" name="book_IId" value="<%=resultSet.getString("book_IId") %>">
<br>
<b>Borrowed Date:</b><br>
<input type="text" name="Borrowed_From" value="<%=resultSet.getString("Borrowed_From") %>">
<br>
<b>Return Date:</b><br>
<input type="text" name="Return_date" value="<%=resultSet.getString("Return_date") %>">
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