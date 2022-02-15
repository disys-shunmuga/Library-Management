<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<center><br><input type="button" onclick="location.href='Home.jsp';" value="Home" style="font-size: 18pt; height: 40px; width:220px; background-color:#e6d1a5; font-family:'Droid Arabic Kufi', serif;" ></center>

<title>Delete the Page</title>
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
<%
String Book_refid=request.getParameter("Book_refid");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/shunmugapragasam", "root", "Welcome123#");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM Books_details WHERE Book_refid="+Book_refid);
%>
<Script>
	alert("Data Deleted Successfully!");
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
