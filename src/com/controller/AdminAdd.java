package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.AdminAddBean;
import com.dao.AdminAddDao;

/**
 * Servlet implementation class FacultyReg
 */
@WebServlet(name = "AdminAdd", urlPatterns = { "/AdminAdd" })
public class AdminAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uname = request.getParameter("uname");
		String pass1 = request.getParameter("pass1");
		String pass2 = request.getParameter("pass2");
		String eadd1 = request.getParameter("eadd1");
		String eadd2 = request.getParameter("eadd2");

		AdminAddBean adminAddBean = new AdminAddBean();
				
				String addAdmin = "";
				adminAddBean.setUname(uname);
				adminAddBean.setPass1(pass1);
				adminAddBean.setPass2(pass2);
				adminAddBean.setEadd1(eadd1);
				adminAddBean.setEadd2(eadd2);

				AdminAddDao adminAddDao = new AdminAddDao();
				
				if(uname != null && uname !="")
				{
					 addAdmin = adminAddDao.addAdmin(adminAddBean);
				}	
				
				if(addAdmin.equals("SUCCESS"))  
				{
					response.sendRedirect("Admin/admincp.jsp"); 
					
					
				}
				
				else  
				{
					request.setAttribute("errMessage", addAdmin);
					response.sendRedirect(request.getContextPath()+"/Admin/admincp.jsp");
				}
			}

	}

