<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update The Record</title>
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
<center><br><input type="button" onclick="location.href='Home.jsp';" value="Home" style="font-size: 18pt; height: 40px; width:220px; background-color:#e6d1a5; font-family:'Droid Arabic Kufi', serif;" ></center>

</head>
<body>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/shunmugapragasam";%>
<%!String user = "root";%>
<%!String psw = "Welcome123#";%>
<%
//String id = request.getParameter("id");
String Book_refid=request.getParameter("Book_refid");
String book_name=request.getParameter("book_name");
String Author_name=request.getParameter("Author_name");
String Book_edition=request.getParameter("Book_edition");

if(Book_refid != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(Book_refid);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update Books_details set Book_refid=?,book_name=?,Author_name=?,Book_edition=? where Book_refid="+Book_refid;
ps = con.prepareStatement(sql);
//ps.setString(1,id);
ps.setString(1, Book_refid);
ps.setString(2, book_name);
ps.setString(3, Author_name);
ps.setString(4, Book_edition);
int i = ps.executeUpdate();
if(i > 0)
{
	%>
	<script type="text/javascript">
	alert("Record Updated Sucessfully")
	</script>
	<%
}
else
{
	%>
	<script type="text/javascript">
	alert("There is a problem in updating Record.")
	</script>
	<%
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>
</body>
</html>