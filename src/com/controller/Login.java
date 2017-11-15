package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.LoginDB;

@WebServlet("/Login")
public class Login extends HttpServlet {
	public static final long serialVersionUID = 1L;
	
	public Login() {
		super();
	}
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String uname = request.getParameter("uname");
		String pass = request.getParameter("pass");
		
		
	    LoginDB db = new LoginDB();
		
		if(db.check(uname, pass))
		{
			HttpSession session = request.getSession();
			session.setAttribute("username",uname);
			response.sendRedirect("home.jsp");
		}
		else
		{
			response.sendRedirect("login.jsp");
		}
	}

}
