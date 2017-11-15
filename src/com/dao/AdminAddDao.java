package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.bean.AdminAddBean;
import com.dao.DBConnection;
public class AdminAddDao {

	public String addAdmin(AdminAddBean adminAddBean)
	{
		
		String uname = adminAddBean.getUname();
		String pass1 = adminAddBean.getPass1();
		String pass2 = adminAddBean.getPass2();
	    String eadd1 = adminAddBean.getEadd1();
	    String eadd2 = adminAddBean.getEadd2();

	    Connection con = null;
		PreparedStatement preparedStatement = null;
		try
		{

			con = DBConnection.createConnection();
			String query = "insert into admin(uname,pass1,pass2,eadd1,eadd2) values (?,?,?,?,?)"; 
			preparedStatement = con.prepareStatement(query); 
			preparedStatement.setString(1, uname);
			preparedStatement.setString(2, pass1);
			preparedStatement.setString(3, pass2);
			preparedStatement.setString(4, eadd1);
			preparedStatement.setString(5, eadd2);
			int i= preparedStatement.executeUpdate();
			if (i!=0)  
				return "SUCCESS"; 
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return "Oops.. Something went wrong there..!";  
	}
			

}