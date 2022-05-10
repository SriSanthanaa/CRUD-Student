package com.sriadmin.studmanage.bean;

public class Student {
	public Student() {
		
	}
	private int rollno;
	private String stud_name;
	private String stud_class;
	
	public Student(int rollno, String stud_name, String stud_class) {
		super();
		this.rollno = rollno;
		this.stud_name = stud_name;
		this.stud_class = stud_class;
	}
	public Student(String stud_name, String stud_class) {
		super();
		this.stud_name = stud_name;
		this.stud_class = stud_class;
	}
	
	
	public int getRollno() {
		return rollno;
	}
	public void setRollno(int rollno) {
		this.rollno = rollno;
	}
	public String getStud_name() {
		return stud_name;
	}
	public void setStud_name(String stud_name) {
		this.stud_name = stud_name;
	}
	public String getStud_class() {
		return stud_class;
	}
	public void setStud_class(String stud_class) {
		this.stud_class = stud_class;
	}

	
}
