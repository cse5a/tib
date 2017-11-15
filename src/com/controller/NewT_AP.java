package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.NTAPBean;
import com.dao.DaoNT_AP;

/**
 * Servlet implementation class NewT_AP
 */
@WebServlet("/NewT_AP")
public class NewT_AP extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		//1. Retrieving all parameters from the JSP page.
		
		String title = request.getParameter("title");
		String description = request.getParameter("description");
		String tags = request.getParameter("tags");
		String post = request.getParameter("post");
		String uname = request.getParameter("uname");
		
		//2. Setting all the values in Model class object.
		NTAPBean ntap = new NTAPBean();
		
		ntap.setTitle(title);
		ntap.setDescription(description);
		ntap.setTags(tags);
		ntap.setPost(post);
		ntap.setUname(uname);
		
		//3. Calling a method in Dao class to insert data in table.

		String sql = "insert into newt_ap (title,description,tags,post,uname) values (?,?,?,?,?)";
		int i = DaoNT_AP.createTopic(ntap,sql);
		if(i!=0)
			{
				System.out.println("Value Inserted");
				response.sendRedirect("GetPostAP");
			}
		else
			{
				System.out.println("Value Not Inserted");
				response.sendRedirect("home.jsp");
			}
		
	}

}
