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
String Borrower_Id= request.getParameter("Borrower_Id");
String book_IId=request.getParameter("book_IId");
String Borrowed_From=request.getParameter("Borrowed_From");
//String Return_date=request.getParameter("Return_date");
//String Borrowed_TO=request.getParameter("Borrowed_TO");
//String Issued_by=request.getParameter("Issued_by");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Shunmugapragasam", "root", "Welcome123#");
System.out.println("Connected");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into borrower_details(Borrower_Id,book_IId,Borrowed_From) values ('"+Borrower_Id+"','"+book_IId+"','"+Borrowed_From+"')");
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
</body>
</html>