package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.bean.AdminDeleteBean;
import com.dao.DBConnection;

public class AdminDeleteDao {
	

	public String deleteAdmin(AdminDeleteBean adminDeleteBean)
	{
		String uname = adminDeleteBean.getUname();
		String uid =adminDeleteBean.getUid();
		Connection con = null;
		PreparedStatement preparedStatement = null;
		try
		{
			con = DBConnection.createConnection();
			String query = "delete from admin where uname='"+uname+"' and uid='"+uid+"'";
			preparedStatement = con.prepareStatement(query);
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
