<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>E Library Management</title>
<style>
body{
Background-image:url("library12.jpg");
background-attachment: fixed;
background-size:100% 100%;
background-repeat: no-repeat;
}
.topnav {
  overflow: hidden;
  background-color: #c3e8e3;
}

.topnav a {
  float: left;
  color: black;
  text-align: center;
  padding: 14px 16px;
  text-decoration:none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: blue;
  color: black;
}

.topnav a.active {
  background-color: null;
  color: Black;
}
</style>
</head>
<body>
	<div class="topnav">
  <a class="active" href="Create.jsp" style="font-size:20px;"> <i> <b> Create New Entry </b> </i> </a>
  <a href="index_update.jsp"  style="font-size:20px;"><i> <b> Update</b> </i> </a>
  <a href="index_delete.jsp" style="font-size:20px;"> <i> <b> Delete </b> </i> </a>
  <a href="stuindex.html" style="font-size:20px;"> <b> <i> Book Borrowed </b> </i> </a>
  <a href="index.html" style="font-size:20px;"> <b> <i> Book Details </b> </i> </a>
</div>
<center> <h1 style= "width:700px" style="font-size:50px;"> <b>Library Management System</b></h1></center>
<marquee style="font-size:30px;color:red;align:center"> ..! Welcome to our Web site ..! </marquee>
<u> <marquee style="font-size:30px;color:yellow;"> ..! Library Opens from 09.00 AM to 06.00 PM ..! </marquee></u>
</body>
</html>
