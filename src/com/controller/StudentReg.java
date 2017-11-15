package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.StudentBean;
import com.dao.DaoStudent;

/**
 * Servlet implementation class StudentReg
 */
@WebServlet("/StudentReg")
public class StudentReg extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1. Retrieving all parameters from the JSP page.

		String uname = request.getParameter("uname");
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String id = request.getParameter("id");
		String branch = request.getParameter("branch");
		String year = request.getParameter("year");
		String eadd1 = request.getParameter("eadd1");
		String eadd2 = request.getParameter("eadd2");
		String pass1 = request.getParameter("pass1");
		String pass2 = request.getParameter("pass2");
		
		//2. Setting all the values in Model class object.
		StudentBean sb = new StudentBean();
		sb.setUname(uname);
		sb.setFname(fname);
		sb.setLname(lname);
		sb.setId(id);
		sb.setBranch(branch);
		sb.setYear(year);
		sb.setEadd1(eadd1);
		sb.setEadd2(eadd2);
		sb.setPass1(pass1);
		sb.setPass2(pass2);
		
		//3. Calling a method in Dao class to insert data in table.
		
		String sql = "insert into student (uname,fname,lname,id,branch,year,eadd1,eadd2,pass1,pass2) values (?,?,?,?,?,?,?,?,?,?)";
		int i = DaoStudent.registerUser(sb,sql);
		
		if (i!=0)
		{
			System.out.println("Value Inserted");
			response.sendRedirect("RegSuccess.jsp");
		}
		else
		{
			System.out.println("Value Not Inserted");
			response.sendRedirect("login.jsp");
		}

		
	}

}
