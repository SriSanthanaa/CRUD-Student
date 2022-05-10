<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import= "java.sql.*" %>
<%
try {
			Class.forName("org.postgresql.Driver");
			//connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/Student","postgres","sriraj2001");
}catch(ClassNotFoundException e){
e.printStackTrace();
}
Connection connection = null;
Statement stmt = null;
ResultSet rs = null;
%>
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

	<div class="row">
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

		<div class="container">
			<h3 class="text-center">List of Users</h3>
			<hr>
			<br>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>Roll Number</th>
						<th>Name</th>
						<th>Class</th>
					</tr>
				</thead>
				<%
				  try{
					  connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/Student","postgres","sriraj2001");
					  stmt = connection.createStatement();
					  String query = "select * from Student";
					  rs = stmt.executeQuery(query);
					  while(rs.next()){
				%>
				<tr>
				<td><%=rs.getInt("rollno") %></td>
				<td><%=rs.getString("stud_name") %></td>
				<td><%=rs.getString("stud_class") %></td>
				</tr>
				<%
					  }
					  connection.close();
				  }catch(Exception e){
					  e.printStackTrace();
				  }
				%>
			</table>
		</div>
	</div>
</body>
</html>