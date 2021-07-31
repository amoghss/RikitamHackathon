package com.onlineacad.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onlineacad.bean.Student;
import com.onlineacad.bean.Teacher;
import com.onlineacad.dao.StudentDao;
import com.onlineacad.dao.TeacherDao;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/signin")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		response.getWriter().append("Served at: ").append(request.getContextPath());
		RequestDispatcher dispatcher =request.getRequestDispatcher("home.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		int c=Integer.valueOf(request.getParameter("choice"));
		String uname= request.getParameter("uname");
		String pass= request.getParameter("pwd");
	
	
		int s=1;
		if(c==1)
		{
			TeacherDao td=new TeacherDao();
			Teacher stats = null;
			try {
				stats = td.verify(uname, pass);
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			finally
			{
			if(stats==null)
			{
				s=0;
			}
			else
			{
				RequestDispatcher dispatcher =request.getRequestDispatcher("home.jsp");
				dispatcher.forward(request, response);
			}
			}
		}
		else
		{
			StudentDao sd=new StudentDao();
			Student stats = null;
			try {
				
				stats = sd.verify(uname, pass);
			} 
			catch (ClassNotFoundException | SQLException e)
			{
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			finally
			{
				if(stats==null)
				{
					s=0;
				}
				else
				{
					RequestDispatcher dispatcher =request.getRequestDispatcher("home.jsp");
					dispatcher.forward(request, response);
				}
			}
		}
		
		
//		if(stats==1)
//		{
//		RequestDispatcher dispatcher =request.getRequestDispatcher("home.jsp");
//		dispatcher.forward(request, response);
//		}
		//doGet(request, response);
	}

}
