package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.bean.FacultyBean;

public class DaoFaculty {

	private static Connection connect() {
		Connection con = null;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tibforum", "root", "root");
			System.out.println("Faculty Connected");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return con;
	}

	public static int registerUser(FacultyBean fb, String sql) {
		// TODO Auto-generated method stub
		int i = 0;
		Connection con = connect();
		try {
			con.setAutoCommit(false);
			PreparedStatement ps = con.prepareStatement(sql);

			ps.setString(1, fb.getUname());
			ps.setString(2, fb.getFname());
			ps.setString(3, fb.getLname());
			ps.setString(4, fb.getId());
			ps.setString(5, fb.getDept());
			ps.setString(6, fb.getEadd1());
			ps.setString(7, fb.getEadd2());
			ps.setString(8, fb.getPass1());
			ps.setString(9, fb.getPass2());

			i = ps.executeUpdate();
			ps.close();
			
			if (i == 1) {
				String sql2 = "insert into login (uname,id,pass1) values (?,?,?)";
				try {
					ps = con.prepareStatement(sql2);
					ps.setString(1, fb.getUname());
					ps.setString(2, fb.getId());
					ps.setString(3, fb.getPass1());
					int j = ps.executeUpdate();
					if(j==1)
						con.commit();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					con.rollback();
					i=0;
				}
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			try {
				i=0;
				con.rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		return i;

	}

}
