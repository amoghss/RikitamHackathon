package com.onlineacad.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.onlineacad.bean.Teacher;

public class TeacherDao {
	
	public int addTeacher(Teacher teacher) throws ClassNotFoundException, SQLException
	{
		Connection connection=null;
		Class.forName("com.mysql.cj.jdbc.Driver");

		connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineAcad", "root", "test1234");
		
		Statement statement=connection.createStatement();
		//String query="select * from book where bookId="+bookId;
		String query="INSERT INTO teachers values ('"+teacher.getUname()+"','"+teacher.getFname()+"','"+teacher.getLname()+"',"+teacher.getPhnum()+
				",'"+teacher.getEmail()+"','"+teacher.getQualification()+"','"+teacher.getPassword()+"')";
				
		
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

	public Teacher verify(String uname, String pass) throws ClassNotFoundException, SQLException {
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
			
			if(pass.equals(rs.getString("pass")))
			{
				return new Teacher(rs.getString("uname"),rs.getString("fname"),rs.getString("lname"),rs.getInt("phnum"),rs.getString("email"),
						rs.getString("qualification"),rs.getString("password"));
			}
			return null;
		}
		catch(Exception e)
		{
			return null;
		}
	}


}
