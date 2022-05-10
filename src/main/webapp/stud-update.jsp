<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
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
				<a href="https://www.xadmin.net" class="navbar-brand"> Student Management Application </a>
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
			<div class="card-body">
				<form name = "update" method="post" action="action2.jsp">
				<label>Student Roll No: <input type = "number" name = "rollno" required></label>
				<br>
				<h2>Enter the details to be updated:</h2>
				
				<label>Student Name: <input type = "text" name = "stud_name" required></label>
				<label>Student Class: <input type = "text" name = "stud_class" required></label>
				<input type="Submit" value = "Update"/>
				
					
				</form>
			</div>
		</div>
	</div>
</body>
</html>