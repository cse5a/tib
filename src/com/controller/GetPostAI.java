package com.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.NTAIBean;
import com.dao.DaoGT_AI;

/**
 * Servlet implementation class GetPost
 */
@WebServlet("/GetPostAI")
public class GetPostAI extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		//1. Fetching data from the table.
		try
		{       

		    List<NTAIBean> ntb = DaoGT_AI.selectListNTAI(); 
		    //System.out.println("My Data"+ntb);
		    request.setAttribute("beans", ntb); 
		    request.getRequestDispatcher("AccountSection/Information.jsp").forward(request, response); 


		}

		catch (Throwable theException)      
		{
		     System.out.println(theException); 
		}
	}
		    
}


