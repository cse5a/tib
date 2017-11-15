package com.controller;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.FacultyBean;
import com.dao.DaoFaculty;

/**
 * Servlet implementation class FacultyReg
 */
@WebServlet(name = "FacultyReg", urlPatterns = { "/FacultyReg" })
public class FacultyReg extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.setContentType("text/html");
		//PrintWriter pw = response.getWriter();
		//1. Retrieving all parameters from the JSP page.
		
		String uname = request.getParameter("uname");
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String id = request.getParameter("id");
		String dept = request.getParameter("dept");
		String eadd1 = request.getParameter("eadd1");
		String eadd2 = request.getParameter("eadd2");
		String pass1 = request.getParameter("pass1");
		String pass2 = request.getParameter("pass2");
		
		//2. Setting all the values in Model class object.
		
		FacultyBean fb = new FacultyBean();
		fb.setUname(uname);
		fb.setFname(fname);
		fb.setLname(lname);
		fb.setId(id);
		fb.setDept(dept);
		fb.setEadd1(eadd1);
		fb.setEadd2(eadd2);
		fb.setPass1(pass1);
		fb.setPass2(pass2);
		
		//3. Calling a method in Dao class to insert data in table.
		
		String sql ="insert into faculty (uname,fname,lname,id,dept,eadd1,eadd2,pass1,pass2) values (?,?,?,?,?,?,?,?,?)";

		int i = DaoFaculty.registerUser(fb,sql);
	
        if(i!=0 ){  
        	 System.out.println("Value Inserted"); 
        	 response.sendRedirect("RegSuccess.jsp");
   
         }  
         else{  
        	 System.out.println("Value Not Inserted"); 
        	 response.sendRedirect("login.jsp");

          }  
        
	}

}
