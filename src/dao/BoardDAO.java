package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;

import javax.naming.NamingException;

import util.ConnectionPool;

public class BoardDAO {

public ArrayList<BoardObj> getList() throws NamingException, SQLException {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			String sql = "SELECT * FROM board";
			
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			ArrayList<BoardObj> boards = new ArrayList<BoardObj>();
			
			while (rs.next()) {
				boards.add(new BoardObj(rs.getString("fno"),rs.getString("ftitle"),
						rs.getString("fcontent"),rs.getString("id"),rs.getString("fimage"),rs.getString("fdate")));
			} return boards;
			
		} finally {
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		}
	}
	
	public boolean insert(String ftitle, String id, String fcontent,  String fimage ) throws NamingException, SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			String sql = "INSERT INTO board (ftitle, id, fcontent, fimage, fdate) VALUES (?,?,?,?,?)";
			
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, ftitle);
				pstmt.setString(2, id);
				pstmt.setString(3, fcontent);
				pstmt.setString(4, fimage);
				pstmt.setString(5, LocalDate.now().toString());
				
			int count = pstmt.executeUpdate();
			return (count == 1) ? true : false;
			
		} finally {
			conn.close(); pstmt.close();
		}
	}

	public BoardObj getView(String fno) throws NamingException, SQLException {
		Connection conn = null;
		PreparedStatement pstmt= null;
		ResultSet rs = null;
	
		try {
			String sql = "SELECT * FROM board WHERE (fno = ?)";
			
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, fno);
			rs = pstmt.executeQuery();
			
			rs.next();
			
			String no = rs.getString(1);
			String title = rs.getString(2);
			String id = rs.getString(3);
			String content = rs.getString(4);
			String image = rs.getString(5);
			String date = rs.getString(6);
			
			BoardObj board = new BoardObj(no,title,id,content,image,date);
			return board;
			
		} finally {
			rs.close(); pstmt.close(); conn.close();
		}
	} 
	
	public boolean delete(String fno) throws NamingException, SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			String sql = "DELETE FROM board WHERE fno=?";
			
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, fno);
				
			int count = pstmt.executeUpdate();
			return (count == 1 ) ? true : false;
			
		} finally {
			pstmt.close(); conn.close();
		}
	}
}
