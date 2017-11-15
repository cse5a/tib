package com.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.NTERRBean;
import com.dao.DaoGT_ERR;


/**
 * Servlet implementation class GetPostERR
 */
@WebServlet("/GetPostERR")
public class GetPostERR extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//1. Fetching data from the table.
		try
		{       

		    List<NTERRBean> ntb = DaoGT_ERR.selectListNTERR(); 
		    request.setAttribute("beans", ntb); 
		    request.getRequestDispatcher("ExaminationSection/ERR.jsp").forward(request, response); 


		}

		catch (Throwable theException)      
		{
		     System.out.println(theException); 
		}	
	}

}
