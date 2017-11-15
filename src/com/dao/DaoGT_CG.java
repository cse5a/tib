package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import com.bean.NTCGBean;

public class DaoGT_CG {
	
	private static Connection Connect() {
		// TODO Auto-generated method stub
	Connection con = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tibforum", "root", "root");
			System.out.println("GT_CG Connected");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return con;
	}

	public static List<NTCGBean> selectListNTCG() {
		// TODO Auto-generated method stub
		String sql = "select uname,title,description,tags,post from newt_cg";
		Connection con = Connect();
		PreparedStatement ps = null;
		ResultSet rs = null;  

		List<NTCGBean> beans = new ArrayList<NTCGBean>();
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			
			while (rs.next()) {
				
				NTCGBean bean = new NTCGBean();
	            bean.setTitle(rs.getString("title"));
	            bean.setDescription(rs.getString("description"));
	            bean.setTags(rs.getString("tags"));
	            bean.setPost(rs.getString("post"));
	            bean.setUname(rs.getString("uname"));
	            beans.add(bean);			
							
			}
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return beans;
	}

}
