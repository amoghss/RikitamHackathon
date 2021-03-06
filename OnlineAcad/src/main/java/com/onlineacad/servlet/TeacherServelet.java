package com.onlineacad.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onlineacad.bean.Teacher;
import com.onlineacad.dao.TeacherDao;

/**
 * Servlet implementation class TeacherServelet
 */
@WebServlet("/register")
public class TeacherServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TeacherServelet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		RequestDispatcher dispatcher =request.getRequestDispatcher("signin.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String uname= request.getParameter("uname");
		String fname= request.getParameter("fname");
		String lname= request.getParameter("lname");
		int phnum=Integer.valueOf(request.getParameter("phnum"));
		String email= request.getParameter("email");
		String qualification= request.getParameter("qualfication");
		String pass= request.getParameter("pwd");
		String cpass= request.getParameter("cpwd");
		//System.out.println(pass==cpass);
		
		
		Teacher teach=new Teacher(uname, fname, lname, phnum, email, qualification, pass);
		
		TeacherDao teachdao=new TeacherDao();
		
		try {
			System.out.println(teachdao.addTeacher(teach));
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		RequestDispatcher dispatcher =request.getRequestDispatcher("signin.jsp");
		dispatcher.forward(request, response);
		//doGet(request, response);
	}

}
