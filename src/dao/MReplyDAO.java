package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.naming.NamingException;
import util.ConnectionPool;

public class MReplyDAO {
	public ArrayList<MReplyObj> getlist(String mno) throws NamingException, SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			String sql = "select * from mreply where mno = ? order by no desc";
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, mno);
			rs = pstmt.executeQuery();
			
			ArrayList<MReplyObj> mreplys = new ArrayList<MReplyObj>();
			
			while(rs.next()) {
				mreplys.add(new MReplyObj(rs.getString("no"), rs.getString("mno"), rs.getString("id"), rs.getString("content"), rs.getString("time")));
			}
			return mreplys;
		}finally {
			if(rs != null) rs.close();
			if(pstmt != null) rs.close();
			if(conn != null) conn.close();
		}
	}
	
	
	public boolean insertreply(String mno, String id, String content) throws NamingException, SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			String sql = "insert into mreply(mno, id, content) values(?,?,?)";
			
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, mno);
				pstmt.setString(2, id);
				pstmt.setString(3, content);
			
			int count = pstmt.executeUpdate();
			return(count == 1)? true:false;
		}finally {
			if(pstmt != null)pstmt.close();
			if(conn != null)conn.close();
		}
	}
}
