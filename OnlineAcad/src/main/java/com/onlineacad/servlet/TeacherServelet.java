package com.onlineacad.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		RequestDispatcher dispatcher =request.getRequestDispatcher("webapp/signin.jsp");
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
		String qualification= request.getParameter("qualification");
		String pass= request.getParameter("pwd");
		String cpass= request.getParameter("cpwd");
		System.out.println(pass==cpass);
		
		RequestDispatcher dispatcher =request.getRequestDispatcher("webapp/signin.jsp");
		dispatcher.forward(request, response);
		//doGet(request, response);
	}

}
