package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.AdminDeleteBean;
import com.dao.AdminDeleteDao;

/**
 * Servlet implementation class FacultyReg
 */
@WebServlet(name = "AdminDel", urlPatterns = { "/AdminDel" })
public class AdminDel extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname = request.getParameter("uname");
		String uid  = request.getParameter("uid");
		AdminDeleteBean adminDeleteBean = new AdminDeleteBean();
		String deleteAdmin = "";
		adminDeleteBean.setUname(uname);
		adminDeleteBean.setUid(uid);
		AdminDeleteDao adminDeleteDao = new AdminDeleteDao();
		if(uname != null && uid !="")
		{
			 deleteAdmin = adminDeleteDao.deleteAdmin(adminDeleteBean);
		}		
		if(deleteAdmin.equals("SUCCESS"))   
		{
			response.sendRedirect("Admin/admincp.jsp"); 
			
		}
		else  
		{
			request.setAttribute("errMessage", deleteAdmin);
			response.sendRedirect(request.getContextPath()+"/Admin/admindeleteunsuccess.jsp");
		}
		

	}


	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
