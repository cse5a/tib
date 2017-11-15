package com.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.NTNPDBean;
import com.dao.DaoGT_NPD;


/**
 * Servlet implementation class GetPostNPD
 */
@WebServlet("/GetPostNPD")
public class GetPostNPD extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//1. Fetching data from the table.
		try
		{       

		    List<NTNPDBean> ntb = DaoGT_NPD.selectListNTNPD(); 
		    request.setAttribute("beans", ntb); 
		    request.getRequestDispatcher("NewsSection/NPD.jsp").forward(request, response); 


		}

		catch (Throwable theException)      
		{
		     System.out.println(theException); 
		}	
	}

}
