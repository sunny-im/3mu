package dao;

import java.sql.*;
import java.util.ArrayList;
import javax.naming.NamingException;
import util.ConnectionPool;

public class MBoardDAO {
	public ArrayList<MBoardObj> serch(String msub, String mtitle) throws NamingException, SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			String sql = "select * from MBoard where msub = ? and mtitle like";
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql + "'%"+mtitle+"%'");
				pstmt.setString(1, msub);
			rs = pstmt.executeQuery();
			
			ArrayList<MBoardObj> mboards = new ArrayList<MBoardObj>();
			
			while(rs.next()) {
				mboards.add(new MBoardObj(rs.getString("mno"),rs.getString("id"),rs.getString("msub"),rs.getString("mtitle"),rs.getString("mcontent"),rs.getString("mimg"),rs.getString("mtime")));
			}
			return mboards;
		}finally {
			if(rs != null) rs.close();
			if(pstmt != null) rs.close();
			if(conn != null) conn.close();
		}
	}
	public ArrayList<MBoardObj> getlist() throws NamingException, SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			String sql = "select * from MBoard order by mtime desc";
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			ArrayList<MBoardObj> mboards = new ArrayList<MBoardObj>();
			
			while(rs.next()) {
				mboards.add(new MBoardObj(rs.getString("mno"),rs.getString("id"),rs.getString("msub"),rs.getString("mtitle"),rs.getString("mcontent"),rs.getString("mimg"),rs.getString("mtime")));
			}
			return mboards;
		}finally {
			if(rs != null) rs.close();
			if(pstmt != null) rs.close();
			if(conn != null) conn.close();
		}
	}
	

	
	public boolean insert(String id, String msub, String mtitle, String mcontent, String mimg) throws NamingException, SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			String sql = "insert into MBoard(id, msub, mtitle, mcontent, mimg) values(?,?,?,?,?)";
			
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, id);
				pstmt.setString(2, msub);
				pstmt.setString(3, mtitle);
				pstmt.setString(4, mcontent);
				pstmt.setString(5, mimg);
				
			int count = pstmt.executeUpdate();
			return(count == 1)? true:false;
		}finally {
			if(pstmt != null)pstmt.close();
			if(conn != null)conn.close();
		}
				
	}
	
	public MBoardObj getDetail(String mno) throws NamingException, SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			String sql = "select * from MBoard where mno = ?";
			
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, mno);
			rs = pstmt.executeQuery();
			
			rs.next();
			
			mno = rs.getString(1);
			String id = rs.getString(2);
			String msub = rs.getString(3);
			String mtitle = rs.getString(4);
			String mcontent = rs.getString(5);
			String mimg = rs.getString(6);
			String mtime = rs.getString(7);
			
			MBoardObj mboard = new MBoardObj(mno, id, msub, mtitle, mcontent, mimg, mtime);
			
			return mboard;
			
		}finally {
			if (rs != null) rs.close();
			if (pstmt != null)pstmt.close();
			if (conn != null)conn.close();
		}
	}
	
	public boolean del(String mno) throws NamingException, SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			String sql = "delete from MBoard where mno = ?";
			
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, mno);
				
			int count = pstmt.executeUpdate();
			return (count == 1)? true:false;
		}finally {
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		}
	}
	
	
	
}
