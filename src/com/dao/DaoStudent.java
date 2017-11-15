package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.bean.StudentBean;

public class DaoStudent {
	
	private static Connection connect() {
		// TODO Auto-generated method stub
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tibforum", "root", "root");
			System.out.println("Student Connected");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return con;
	}

	public static int registerUser(StudentBean sb, String sql) {
		// TODO Auto-generated method stub
		int i=0;
		Connection con = connect();
			try {
				con.setAutoCommit(false);
				PreparedStatement ps = con.prepareStatement(sql);
				
				ps.setString(1, sb.getUname());
				ps.setString(2, sb.getFname());
				ps.setString(3, sb.getLname());
				ps.setString(4, sb.getId());
				ps.setString(5, sb.getBranch());
				ps.setString(6, sb.getYear());
				ps.setString(7, sb.getEadd1());
				ps.setString(8, sb.getEadd2());
				ps.setString(9, sb.getPass1());
				ps.setString(10, sb.getPass2());
				
				i=ps.executeUpdate();
				ps.close();
				
				if(i==1) {
					String sql2= "insert into login (uname,id,pass1) values (?,?,?)";
					try {
						ps = con.prepareStatement(sql2);
						ps.setString(1, sb.getUname());
						ps.setString(2, sb.getId());
						ps.setString(3, sb.getPass1());
						int j = ps.executeUpdate();
						if(j==1)
							con.commit();
					} catch (SQLException e) {
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
				} catch(SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			
			return i;
	}

}