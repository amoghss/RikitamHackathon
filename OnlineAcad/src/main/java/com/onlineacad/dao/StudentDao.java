package com.onlineacad.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.onlineacad.bean.Student;
import com.onlineacad.bean.Teacher;

public class StudentDao {
	
	public int addStudent(Student student) throws ClassNotFoundException, SQLException
	{
		Connection connection=null;
		Class.forName("com.mysql.cj.jdbc.Driver");

		connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineAcad", "root", "test1234");
		
		Statement statement=connection.createStatement();
		//String query="select * from book where bookId="+bookId;
		String query="INSERT INTO students values ('"+student.getUname()+"','"+student.getFname()+"','"+student.getLname()+"',"+student.getPhnum()+
				",'"+student.getEmail()+"','"+student.getPassword()+"')";
				
		
		try
		{
			statement.executeUpdate(query);
			return 1;
		}
		
		catch(Exception e)
		{
			return 0;
		}
	}

	public Student verify(String uname, String pass) throws ClassNotFoundException, SQLException {
		// TODO Auto-generated method stub
			Connection connection=null;
			Class.forName("com.mysql.cj.jdbc.Driver");

			connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineAcad", "root", "test1234");
			
			Statement statement=connection.createStatement();
			
			String query="select * from teachers where uname='"+uname+"'";
			
			ResultSet rs=statement.executeQuery(query);
			
			try
			{
				rs.next();
				
				if( pass.equals(rs.getString("pass")))
				{
					return new Student(rs.getString("uname"),rs.getString("fname"),rs.getString("lname"),rs.getInt("phnum"),rs.getString("email"),rs.getString("password"));
				}
				return null;
			}
			catch(Exception e)
			{
				return null;
			}
		}
	}


