<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>    
	<%@page import="java.util.*" %>
	<%@page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<center><br><input type="button" onclick="location.href='Home.jsp';" value="Home" style="font-size: 18pt; height: 40px; width:220px; background-color:#e6d1a5; font-family:'Droid Arabic Kufi', serif;" ></center>

<title> Create a new Entry </title>
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
  margin-left:520px;
  margin-right:200px;
  margin-top:100px;
  margin-bottom:100px;
  width:300px; height:370px;
}
  	
</style>
</head>
<body>
<%
String book_refid= request.getParameter("book_refid");
String book_name=request.getParameter("book_name");
String Author_name=request.getParameter("Author_name");
String Book_edition=request.getParameter("Book_edition");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Shunmugapragasam", "root", "Welcome123#");
System.out.println("Connected");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into Books_details(book_refid,book_name,Author_name,Book_edition) values ('"+book_refid+"','"+book_name+"','"+Author_name+"','"+Book_edition+"')");
%>
<script type="text/javascript">
	alert("The Record inserted Successfully. Thank you.")
</script>
<%
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>


<div class="form-center">
<form action="Create.jsp" method= post name="f1"  >
<h1>Insert New Book</h1>
<b>Book Id:</b><br>
<input type="text" name="book_refid" placeholder="Enter the Book Id" style="font-size: 12pt; background-color:white;font-family:'Droid Arabic Kufi', serif; ">
<br><br>
<b>Book Name:</b><br>
<input type="text" name="book_name" placeholder="Enter the Book Name" style="font-size: 12pt; background-color:white;font-family:'Droid Arabic Kufi', serif; ">
<br><br>
<b>Author Name:</b><br>
<input type="text" name="Author_name" placeholder="Enter the Author_name" style="font-size: 12pt; background-color:white;font-family:'Droid Arabic Kufi', serif; ">
<br><br>
<b>Book Edition:</b><br>
<input type="text" name="Book_edition" placeholder="Enter the Book_edition" style="font-size: 12pt; background-color:white;font-family:'Droid Arabic Kufi', serif; ">
<br><br>
<input type="submit" value="submit" style="font-size: 12pt; background-color:green;width:200px;height:50px;font-family:'Droid Arabic Kufi', serif;" )>
</form>
</div>
</body>
</html>