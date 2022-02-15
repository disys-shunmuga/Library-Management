<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>    
<%@page import="java.util.*" %>
<%@page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<center><br><input type="button" onclick="location.href='Home.jsp';" value="Home" style="font-size: 18pt; height: 40px; width:220px; background-color:#e6d1a5; font-family:'Droid Arabic Kufi', serif;" ></center>

<meta charset="ISO-8859-1">
<title>Library Management</title>
<Style>
body{
	padding-top:50px;
	background-image: url('lib5.jpg');
  	background-repeat: no-repeat;
  	background-attachment: fixed;
  	background-size: 100% 100%;
}
</Style>
</head>
<body>
<%
String driverName = "com.mysql.cj.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "shunmugapragasam";
String userId = "root";
String password = "Welcome123#";
try{
	Class.forName(driverName);
} catch (Exception e)
{
	System.out.println(e);
}
Connection con = null;
Statement s = null;
ResultSet resultSet = null;
%>
<div class="container">
</br><center><h2 style="font-size: 20pt;font-family:'Droid Arabic Kufi', serif;background-color:powderblue; width:200px;algin:center"> Details of the Book</h2></center>
</br> <table class="table table-success table-striped" align="center" cellpadding="5" cellspacing="5" border="1.5" id="book"
 style="font-size: 20pt;height:20px;width:700px;
 background-color:powderblue;font-family:'Droid Arabic Kufi', serif;">
<tr>
<td><b>Book Name</b></td>
<td><b>Book Publish Year</b></td>
<td><b>Number of Books</b></td>
</tr>
<%
String name = request.getParameter("Book_refid");
try{
	con =DriverManager.getConnection(connectionUrl+dbName,userId,password);
	if(con!=null){System.out.println("Connected");}
	PreparedStatement st = con.prepareStatement("Select book_name,book_puyear,Num_of_books from Book_details where Book_refid=?");
	st.setString(1,name);

	resultSet = st.executeQuery();
	ResultSetMetaData rsmd = resultSet.getMetaData();
	if(resultSet.next())
	{
		out.println("<tr>");
		out.println("<td>"+resultSet.getString("book_name")+"</td>");
		out.println("<td>"+resultSet.getString("book_puyear")+"</td>");
		out.println("<td>"+resultSet.getString("Num_of_books")+"</td>");
		out.println("<tr>");
	}
	else
	{%>
		<script >
		alert("This Id is not valid. Thank you");
	</script>
	<%
	String redirectURL = "index.html";
    response.sendRedirect(redirectURL);
	}
}catch (Exception e)
{
	System.out.println(e);
}
%>
</table>
</div>
</body>
</html>