package com.tka;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class Student {
	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		System.out.println("Done...");
		Connection c =DriverManager.getConnection("jdbc:mysql://localhost:3307/215batch" ,"root","root");
		
		Statement s =c.createStatement();
		s.executeUpdate("insert into Student(RollNo,name,city)values(21,'av','goa')");
		System.out.println("Data inserted Successfully");
		c.close();
		s.close();
		
	}

}
