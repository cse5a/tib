package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.NTSSGBean;
import com.dao.DaoNT_SSG;



/**
 * Servlet implementation class NewT_SSG
 */
@WebServlet("/NewT_SSG")
public class NewT_SSG extends HttpServlet {
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
		NTSSGBean ntssg = new NTSSGBean();	
		ntssg.setTitle(title);
		ntssg.setDescription(description);
		ntssg.setTags(tags);
		ntssg.setPost(post);
		ntssg.setUname(uname);
				
		//3. Calling a method in Dao class to insert data in table.

		String sql = "insert into newt_ssg (title,description,tags,post,uname) values (?,?,?,?,?)";
		int i = DaoNT_SSG.createTopic(ntssg,sql);
		if(i!=0)
		{
			System.out.println("Value Inserted");
			response.sendRedirect("GetPostSSG");
		}
		else
		{
		System.out.println("Value Not Inserted");
		response.sendRedirect("home.jsp");
		}
	}

}
