package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;

import javax.naming.NamingException;

import util.ConnectionPool;

public class GuestBookDAO {

	
	public ArrayList<GuestBookObj> getList() throws NamingException, SQLException {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			String sql = "SELECT * FROM guestbook";
			
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			ArrayList<GuestBookObj> books = new ArrayList<GuestBookObj>();
			
			while (rs.next()) {
				books.add(new GuestBookObj(rs.getString("gname"),
						rs.getString("gpassword"),rs.getString("gcontent")));
			} return books;
			
		} finally {
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		}
	}
	
    public boolean insert( String gname, String gpassword, String gcontent) throws NamingException, SQLException{
        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
            String sql = "INSERT INTO guestbook (gname, gpassword, gcontent) VALUES (?, ?, ?)";
            conn = ConnectionPool.get();
            pstmt = conn.prepareStatement(sql);
	            pstmt.setString(1, gname);
	            pstmt.setString(2, gpassword);
	            pstmt.setString(3, gcontent);
            
            int count = pstmt.executeUpdate();
            return (count == 1) ? true : false;
        } finally {
        	conn.close(); pstmt.close();
        }
    }
 // 비밀번호를 조회
    public String getPwd(String gname) throws NamingException, SQLException{
        String pwd = null;
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try {
        	conn = ConnectionPool.get();

            String sql = "SELECT gpassword FROM guestbook WHERE gname=?";
            pstmt = conn.prepareStatement(sql);

            pstmt.setString(1, gname);
            rs = pstmt.executeQuery();

            if(rs.next()) {
                pwd = rs.getString(1);
            }
        }
        finally {
        	conn.close(); pstmt.close(); rs.close();
        } return pwd;

        
    }

    public void delete(String gname) throws NamingException, SQLException{
        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
        	conn = ConnectionPool.get();

            String sql = "DELETE FROM guestbook WHERE gname=?";
            pstmt = conn.prepareStatement(sql);

            pstmt.setString(1, gname);
            pstmt.executeUpdate();
            
        }
        finally {
        	conn.close(); pstmt.close(); 
        }
    }
}

