package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.bean.NTSQBean;

public class DaoNT_SQ {
	
	private static Connection Connect() {
		// TODO Auto-generated method stub
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tibforum", "root", "root");
			System.out.println("NewT_SQ Connected");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return con;
	}

	public static int createTopic(NTSQBean ntsq, String sql) {
		// TODO Auto-generated method stub
		
		int i = 0;
		Connection con = Connect();
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, ntsq.getTitle());
			ps.setString(2, ntsq.getDescription());
			ps.setString(3, ntsq.getTags());
			ps.setString(4, ntsq.getPost());
			ps.setString(5, ntsq.getUname());
			
			i = ps.executeUpdate();
			ps.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return i;
	}

}