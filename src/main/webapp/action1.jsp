<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import = "com.sriadmin.studmanage.bean.*"
    import = "com.sriadmin.studmanage.dao.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Management System</title>
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
<jsp:useBean id = "ob" class= "com.sriadmin.studmanage.bean.Student"/>
<jsp:setProperty property="*" name="ob"/>
<%
String msg;
if(StudentDao.deleteStudent(ob) >0){
	msg = "Success";
}
else{
	msg = "Student Id not found";
}
out.print(msg);
%>
</body>
</html>