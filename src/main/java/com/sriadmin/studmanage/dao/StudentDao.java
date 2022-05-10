package com.sriadmin.studmanage.dao;

import java.sql.*;
//import java.util.*;
import com.sriadmin.studmanage.bean.*;
public class StudentDao {
	//private static final String INSERT_STUDENTS_SQL = "INSERT INTO Student" + " VALUES " + " (?, ?, ?);";
	//private static final String SELECT_STUDENTS_BY_ROLLNO = "SELECT * FROM Student WHERE rollno = ?;";
	//private static final String SELECT_ALL_STUDENTS = "SELECT * FROM Student;";
	//private static final String DELETE_STUDENTS_BY_ROLLNO = "DELETE FROM Student WHERE rollno = ?;";

	static PreparedStatement pst = null;
	static Connection connection = null;
	
	
	
	public static Connection get_connection(){
		connection = null;
		try {
			Class.forName("org.postgresql.Driver");
			connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/Student","postgres","sriraj2001");
			if(connection != null) {		
				System.out.println("Connection ok");
			}
			else {
				System.out.println("Connection fail");
			}
		}catch(SQLException e) {
			System.out.println("Error in connecting Postgre");
			e.printStackTrace();
		}catch(Exception ex) {
			System.out.println(ex);
		}
		return connection;
	}
	
	public static int insertStudent(Student stud) {
		int status = 0;
		
		try{
			connection = get_connection();
			pst = connection.prepareStatement("insert into Student(rollno,stud_name,stud_class) values(?,?,?)");
			pst.setInt(1, stud.getRollno());
			pst.setString(2, stud.getStud_name());
			pst.setString(3, stud.getStud_class());
			System.out.println(pst);
			status = pst.executeUpdate();
			connection.close();
		}catch(SQLException e) {
			printSQLException(e);
		}
		return status;
	}
	

	public static int selectAllStudents() {
		int status = 0;
		try {
			Connection connection = get_connection();
			pst = connection.prepareStatement("select * from Student");
			status = pst.executeUpdate();
			connection.close();
		} catch (SQLException e) {
			printSQLException(e);
		}
		return status;
	}
	
	public static int updateStudent(Student stud) {
		int status=0;	
		try{
			Connection connection = get_connection();
			pst = connection.prepareStatement("UPDATE Student SET stud_name = ?,stud_class = ? WHERE rollno = ?"); 
			//System.out.println("Updated User:"+pst);
			pst.setString(1, stud.getStud_name());
			pst.setString(2, stud.getStud_class());
			pst.setInt(3, stud.getRollno());

			status = pst.executeUpdate();
			connection.close();
		}catch(SQLException e) {
			printSQLException(e);
		}
		
		return status;
	}
	
	public static int deleteStudent(Student stud) 

{
		int rowDelete = 0;
		try{
			Connection connection = get_connection();
			pst = connection.prepareStatement("DELETE FROM Student WHERE rollno = ?");
			pst.setInt(1, stud.getRollno() );
			rowDelete = pst.executeUpdate();
			connection.close();
		}catch(SQLException e) {
			printSQLException(e);
		}

		return rowDelete;
	}
	public static int findStudent(int id) {
		int rowDelete = 0;
		try{
			Connection connection = get_connection();
			pst = connection.prepareStatement("SELECT * FROM Student WHERE rollno = ?");
			pst.setInt(1,  id);
			rowDelete = pst.executeUpdate();
			connection.close();
		}catch(SQLException e) {
			printSQLException(e);
		}

		return rowDelete;
	}

	
	
	private static void printSQLException(SQLException e) {
		for (Throwable ex : e) {
			if (e instanceof SQLException) {
				e.printStackTrace(System.err);
				System.err.println("SQLState: " + ((SQLException) e).getSQLState());
				System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
				System.err.println("Message: " + e.getMessage());
				Throwable t = ex.getCause();
				while (t != null) {
					System.out.println("Cause: " + t);
					t = t.getCause();
				}
			}
		}
		
	}
	
}

