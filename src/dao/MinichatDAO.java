package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.naming.NamingException;
import util.ConnectionPool;

public class MinichatDAO {
	public ArrayList<MinichatObj> getchat() throws NamingException, SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			String sql = "select * from minichat order by ctime desc";
			
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			ArrayList<MinichatObj> chats = new ArrayList<MinichatObj>();
			
			while (rs.next()) {
				chats.add(new MinichatObj(rs.getString("no"), rs.getString("id"), rs.getString("ccontent"),rs.getString("ctime")));
			}return chats;
		} finally {
			if (rs != null) rs.close();
			if (pstmt != null) pstmt.close();
			if (conn != null) conn.close();
		}
	}
	
	public boolean insert(String id, String ccontent) throws NamingException, SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			String sql = "insert into minichat(id, ccontent) values (?,?)";
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, id);
				pstmt.setString(2, ccontent);
				
			int count = pstmt.executeUpdate();
			return (count == 1)? true:false;
		}finally {
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		}
	}
	
	
	
	
}
