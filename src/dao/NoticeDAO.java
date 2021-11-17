package dao;

import java.sql.*;
import java.util.ArrayList;
import javax.naming.NamingException;
import util.ConnectionPool;

public class NoticeDAO {
	public ArrayList<NoticeObj> getlist() throws NamingException, SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			String sql = "select * from notice order by ntime desc";
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			ArrayList<NoticeObj> notices = new ArrayList<NoticeObj>();
			
			while(rs.next()) {
				notices.add(new NoticeObj(rs.getString("nid"), rs.getString("ntitle"), rs.getString("notice"), rs.getString("ntime")));
			}
			return notices;
		}finally {
			if(rs != null) rs.close();
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		}
	}
	public boolean insert(String ntitle, String notice) throws NamingException, SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			String sql = "insert into notice(ntitle, notice) values(?,?)";
			
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, ntitle);
				pstmt.setString(2, notice);
			int count = pstmt.executeUpdate();
			return(count == 1)? true:false;
		}finally {
			if(pstmt != null)pstmt.close();
			if(conn != null)conn.close();
		}
	}
	
	public NoticeObj getDetail(String nid) throws NamingException, SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			String sql = "select * from notice where nid = ?";
			
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
				pstmt.setString(1,nid);
			rs = pstmt.executeQuery();
			
			rs.next();
			
			nid = rs.getString(1);
			String ntitle = rs.getString(2);
			String notice = rs.getString(3);
			String ntime = rs.getString(4);
			
			NoticeObj notices = new NoticeObj(nid, ntitle, notice, ntime);
			
			return notices;
		}finally {
			if (rs != null) rs.close();
			if (pstmt != null)pstmt.close();
			if (conn != null)conn.close();
		}
	}
	
	public boolean del(String nid) throws NamingException, SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			String sql ="delete from notice where nid = ?";
			
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, nid);
				
			int count = pstmt.executeUpdate();
			return (count == 1)? true:false;
		}finally {
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		}
	}
	
	
	
	
}
