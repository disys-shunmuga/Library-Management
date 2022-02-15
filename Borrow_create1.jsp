<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<center><br><input type="button" onclick="location.href='Home.jsp';" value="Home" style="font-size: 18pt; height: 40px; width:220px; background-color:#e6d1a5; font-family:'Droid Arabic Kufi', serif;" ></center>

<title>Create New Entry</title>
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
  margin-left:526px;
  margin-right:200px;
  margin-top:100px;
  margin-bottom:100px;
  width:300px; height:370px;
}
  	
</style>
</head>
<body>
<div class="form-center">
<form action="Borrow_create.jsp" method= post name="f1"  >
<h1>Insert New Record</h1>
<b>Student Id:</b><br>
<input type="text" name="Borrower_Id" placeholder="Enter the student_Id" style="font-size: 12pt; background-color:white;font-family:'Droid Arabic Kufi', serif; ">
<br><br>
<b>Book Id:</b><br>
<input type="text" name="book_IId" placeholder="Enter the Book_Id" style="font-size: 12pt; background-color:white;font-family:'Droid Arabic Kufi', serif; ">
<br><br>
<b>Borrowed Date:</b><br>
<input type="text" name="Borrowed_From" placeholder="Enter the Borrow Date" style="font-size: 12pt; background-color:white;font-family:'Droid Arabic Kufi', serif; ">
<br><br>
<input type="submit" value="submit" style="font-size: 12pt; background-color:green;width:200px;height:50px;font-family:'Droid Arabic Kufi', serif;" )>
</form>
</div>

</body>
</html>