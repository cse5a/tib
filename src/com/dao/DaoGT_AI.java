package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.bean.NTAIBean;

public class DaoGT_AI {

	private static Connection Connect() {
		// TODO Auto-generated method stub
	Connection con = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tibforum", "root", "root");
			System.out.println("GT_AI Connected");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return con;
	}

	public static List<NTAIBean> selectListNTAI() {
		// TODO Auto-generated method stub
		String sql = "select uname,title,description,tags,post from newt_ai";
		Connection con = Connect();
		PreparedStatement ps = null;
		ResultSet rs = null;  

		List<NTAIBean> beans = new ArrayList<NTAIBean>();
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			
			while (rs.next()) {
				
				NTAIBean bean = new NTAIBean();
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
