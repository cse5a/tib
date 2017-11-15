package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.bean.UserDeleteBean;

public class UserDeleteDao {

	public String deleteUser(UserDeleteBean userDeleteBean) {
		// TODO Auto-generated method stub
		String uname = userDeleteBean.getUname();
		String id = userDeleteBean.getId();		
		Connection con = null;
		PreparedStatement preparedStatement = null;
		try
		{
			con = DBConnection.createConnection();
			String query = "delete from login where uname='"+uname+"' and id='"+id+"'"; 
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
