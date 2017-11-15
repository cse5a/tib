package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.ECBean;
import com.dao.DaoECell;

/**
 * Servlet implementation class ECellReg
 */
@WebServlet("/ECellReg")
public class ECellReg extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//1. Retrieving all parameters from the JSP page.
		
		String uname = request.getParameter("uname");
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String id = request.getParameter("id");
		String eadd1 = request.getParameter("eadd1");
		String eadd2 = request.getParameter("eadd2");
		String pass1 = request.getParameter("pass1");
		String pass2 = request.getParameter("pass2");
		
		//2. Setting all the values in Model class object.
		
		ECBean eb =  new ECBean();
		
		eb.setUname(uname);
		eb.setFname(fname);
		eb.setLname(lname);
		eb.setId(id);
		eb.setEadd1(eadd1);
		eb.setEadd2(eadd2);
		eb.setPass1(pass1);
		eb.setPass2(pass2);
		
		//3. Calling a method in Dao class to insert data in table.
		
		String sql = "insert into examcell (uname,fname,lname,id,eadd1,eadd2,pass1,pass2) values (?,?,?,?,?,?,?,?)";
		
		int i = DaoECell.registerUser(eb,sql);
		
		if(i!=0)
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
