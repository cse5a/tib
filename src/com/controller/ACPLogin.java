package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.ALoginDB;


/**
 * Servlet implementation class ACPLogin
 */
@WebServlet("/ACPLogin")
public class ACPLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String uname = request.getParameter("uname");
		String pass = request.getParameter("pass");
		
		
	    ALoginDB adb = new ALoginDB();
		
		if(adb.check(uname, pass))
		{
			HttpSession session = request.getSession();
			session.setAttribute("username",uname);
			response.sendRedirect("Admin/admincp.jsp");
		}
		else
		{
			response.sendRedirect("Admin/AdminLogin.jsp");
		}
	}

}
