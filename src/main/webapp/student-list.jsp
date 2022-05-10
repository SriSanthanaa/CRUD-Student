<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Management Application</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>
<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: green">
			<div>
				<a href="https://www.xadmin.net" class="navbar-brand"> Student
					Management Application </a>
			</div>
				<ul id="MenuItems"><!--use this id in js-->
                    <li><a href="stud-form.jsp">Insert Student Detail</a></li>
                    <li><a href="stud-update.jsp">Update Student Details</a></li>
                    <li><a href="delete.jsp">Delete Student</a></li>
                    <li><a href="stud-list.jsp">Students list</a></li>
                    <li><a href="student-list.jsp">Fetch Single Student</a></li>
                </ul>
			
		</nav>
	</header>
	<br>
	<div class="container col-md-5">
		<div class="card">
		<h2>Enter the roll number of the student to be displayed:</h2>
			<div class="card-body">
	<form name="display" method="post" action = "action3.jsp">
		<p><label>Roll No: <input type= "number" name="rollno" required></label></p>
		<p><input type="Submit" name="Submit"></p>	
	</form>
	</div>
	</div>
	</div>
</body>
</html>