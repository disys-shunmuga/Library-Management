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
<title>Book Borrowed Details</title>
</head>
<Style>
body{
	padding-top:50px;
	background-color:green;
	background-image: url('library2.jpg');
  	background-repeat: no-repeat;
  	background-attachment: fixed;
  	background-size: 100% 100%;
}
</Style>
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
%>
</br><h2 style="font-size: 20pt;font-family:'Droid Arabic Kufi', serif;background-color:powderblue; width:200px;algin:right"> Book Borrowed Details</h2>
</br> <table class="table table-success table-striped" align="left" cellpadding="10" cellspacing="10" border="2" id="book" style="font-size: 20pt;height:200px;width:200px;
 background-color:white;font-family:'Droid Arabic Kufi', serif; ">
<tr>
<td><b>Book Id</b></td>
<td><b>Book Name</b></td>
<td><b>Book Borrowed Date</b></td>
<td><b>Book Return Date</b></td>
</tr>
<%
ResultSet resultSet = null;
%>
<div class="container">
<%
String name = request.getParameter("Stu_id");
try{
	con =DriverManager.getConnection(connectionUrl+dbName,userId,password);
	if(con!=null){System.out.println("Connected");}
	PreparedStatement st = con.prepareStatement("Select book_refid,book_name,Borrowed_From,Return_date from Borrower_details,Book_details where Borrower_Id=?");
	st.setString(1,name);
	
	resultSet = st.executeQuery();
	ResultSetMetaData rsmd = resultSet.getMetaData();
	if(resultSet.next())
	{
		
		out.println("<tr>");
		out.println("<td>"+resultSet.getString("book_refid")+"</td>");
		out.println("<td>"+resultSet.getString("book_name")+"</td>");
		out.println("<td>"+resultSet.getString("Borrowed_From")+"</td>");
		out.println("<td>"+resultSet.getString("Return_Date")+"</td>");
		out.println("<tr>");
	}
	else
	{
		
        String redirectURL = "stuindex.html";
        response.sendRedirect(redirectURL);
        %>
        <script>
        	alert("The Id is not There. Thank you.")
        </script>
        <%
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