<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<center><br><input type="button" onclick="location.href='Home.jsp';" value="Home" style="font-size: 18pt; height: 40px; width:220px; background-color:#e6d1a5; font-family:'Droid Arabic Kufi', serif;" ></center>
<meta charset="ISO-8859-1">
<title>Update the Record</title>
</head>
<body>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/shunmugapragasam";%>
<%!String user = "root";%>
<%!String psw = "Welcome123#";%>
<%
//String id = request.getParameter("id");
String Borrower_Id=request.getParameter("Borrower_Id");
String book_IId=request.getParameter("book_IId");
String Borrowed_From=request.getParameter("Borrowed_From");
String Return_date=request.getParameter("Return_date");
//String Borrowed_TO=request.getParameter("Borrowed_TO");
//String Issued_by=request.getParameter("Issued_by");

if(Borrower_Id != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(Borrower_Id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update borrower_details set Borrower_Id=?,book_IId=?,Borrowed_From=?,Return_date=? where Borrower_Id="+Borrower_Id;
ps = con.prepareStatement(sql);
//ps.setString(1,id);
ps.setString(1, Borrower_Id);
ps.setString(2, book_IId);
ps.setString(3, Borrowed_From);
ps.setString(4, Return_date);
int i = ps.executeUpdate();
if(i > 0)
{
	%>
	<Script>
		alert("Record Updated Successfully");
	</script>
	<%;
}
else
{
	%>
	<Script>
		alert("There is a problem in updating Record.");
	</script>
	<%;
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