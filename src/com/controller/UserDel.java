package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.UserDeleteBean;
import com.dao.UserDeleteDao;


/**
 * Servlet implementation class UserDel
 */
@WebServlet("/UserDel")
public class UserDel extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname = request.getParameter("uname");
		String id  = request.getParameter("id");
		UserDeleteBean userDeleteBean = new UserDeleteBean();
		String deleteUser = "";
		userDeleteBean.setUname(uname);
		userDeleteBean.setId(id);
		UserDeleteDao userDeleteDao = new UserDeleteDao();
		if(uname != null && id !="")
		{
			 deleteUser = userDeleteDao.deleteUser(userDeleteBean);
		}		
		if(deleteUser.equals("SUCCESS"))   
		{
			response.sendRedirect("Admin/admincp.jsp"); 
			
		}
		else  
		{
			request.setAttribute("errMessage", deleteUser);
			response.sendRedirect(request.getContextPath()+"/Admin/userdeleteunsuccess.jsp");
		}
		

	}

}
