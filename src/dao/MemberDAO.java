package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.NamingException;

import util.ConnectionPool;

public class MemberDAO {

	public int login(String id, String password) throws NamingException, SQLException {
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;

		try { 
			String sql = "SELECT id, password, admin FROM member WHERE id=?";
			conn = ConnectionPool.get();
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, id);
			rs = stmt.executeQuery();
			if (!rs.next()) {
				return 1;
			}if (!password.equals(rs.getString("password"))) {
				return 2;

			}return 0;
		} finally {
			if (rs != null)
				rs.close();
			if (stmt != null)
				stmt.close();
			if (conn != null)
				conn.close();
		}
	} 

	public boolean join(String id, String password, String name, String gender, String birth, String mail, String phone,
		String address, String quiz, String answer) throws NamingException, SQLException {
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;

		try {
			String sql = "INSERT INTO member(id, password, name, gender, birth, email, phone, address, quiz, answer) VALUES (?,?,?,?,?,?,?,?,?,?)";
			conn = ConnectionPool.get();
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, id);
			stmt.setString(2, password);
			stmt.setString(3, name);
			stmt.setString(4, gender);
			stmt.setString(5, birth);
			stmt.setString(6, mail);
			stmt.setString(7, phone);
			stmt.setString(8, address);
			stmt.setString(9, quiz);
			stmt.setString(10, answer);
			int count = stmt.executeUpdate();
			return (count == 1)? true : false;

		} finally {
			if (rs != null)
				rs.close();
			if (stmt != null)
				stmt.close();
			if (conn != null)
				conn.close();
		}
	}

	public ArrayList<MemberObj> getList() throws NamingException, SQLException {

		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;

		try {
			String sql = "SELECT * FROM member";

			conn = ConnectionPool.get();
			stmt = conn.prepareStatement(sql);
			rs = stmt.executeQuery();

			ArrayList<MemberObj> members = new ArrayList<MemberObj>();

			while (rs.next()) {
				members.add(new MemberObj(rs.getString("id"), rs.getString("password"), rs.getString("name"),
						rs.getString("gender"), rs.getString("birth"), rs.getString("email"), rs.getString("phone"),
						rs.getString("address"), rs.getString("quiz"), rs.getString("answer"), rs.getString("regiday"),rs.getString("admin")));
			} 
			return members;
		} finally {
			if (rs != null)
				rs.close();
			if (stmt != null)
				stmt.close();
			if (conn != null)
				conn.close();
		} 
	}


public MemberObj getDetail(String cid) throws NamingException, SQLException{
		
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		try {
			String sql = "SELECT * FROM member WHERE cid = ?";
			
			conn = ConnectionPool.get();
			stmt = conn.prepareStatement(sql);
				stmt.setNString(1, cid);
			rs = stmt.executeQuery();
		
			rs.next();
			
			String id = rs.getString(1); 
			String ps = rs.getString(2);
			String name = rs.getString(3); 
			String gender = rs.getString(4);			
			String birth = rs.getString(5); 
			String email = rs.getString(6);			
			String phone = rs.getString(7); 
			String addr = rs.getString(8);
			String quiz = rs.getString(9);
			String answer = rs.getNString(10);
			String date = rs.getString(11);
			String admin = rs.getString(12);
			
			MemberObj member = new MemberObj(id,ps,name,gender,birth,email,phone,addr,quiz,answer,date,admin);

			return member;
  
		} finally {
			if(rs != null) rs.close();
			if(stmt != null) stmt.close();
			if(conn != null) conn.close();
		}
	}





}