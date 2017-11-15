package com.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.NTSMBean;
import com.dao.DaoGT_SM;


/**
 * Servlet implementation class GetPostSM
 */
@WebServlet("/GetPostSM")
public class GetPostSM extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//1. Fetching data from the table.
		try
		{       

		    List<NTSMBean> ntb = DaoGT_SM.selectListNTSM(); 
		    request.setAttribute("beans", ntb); 
		    request.getRequestDispatcher("StudySection/StudyMaterial.jsp").forward(request, response); 


		}

		catch (Throwable theException)      
		{
		     System.out.println(theException); 
		}		
		
	}

}
