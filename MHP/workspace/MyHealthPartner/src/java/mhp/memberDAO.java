package mhp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class memberDAO {
	private memberDAO() {}
	public static memberDAO instance = new memberDAO();
	public static memberDAO getInstance() {return instance;}
	
	Connection conn=null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	public Connection getConnection() {
		String dbURL = "jdbc:mysql://127.0.0.1:3306/mhp?serverTimezone=UTC";
		String dbID = "root";
		String dbPassword = "";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
	
	public int userCheck(String id, String pw) {
		int check=-1;
		String dbpw = "";
		conn = getConnection();
		try {
			String sql = "select pw from member where id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				dbpw = rs.getString(1);
				if(dbpw.equals(pw)) {
					check=1;
				}
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally {
			if(conn!=null)
				try {conn.close();}catch(SQLException sqle) {}
			if(pstmt!=null)
				try {pstmt.close();}catch(SQLException sqle) {}
			if(rs!=null)
				try {rs.close();}catch(SQLException sqle) {}
		}
		
		return check;
	}
	
	public String findPw(String name, String id, String tel) {
		String pw="";
		try {
			conn=getConnection();
			String sql = "SELECT * FROM member WHERE name=? and id=? and tel=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2, id);
			pstmt.setString(3, tel);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				pw = rs.getString("pw");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			if(conn!=null)
				try {conn.close();}catch(SQLException sqle) {}
			if(pstmt!=null)
				try {pstmt.close();}catch(SQLException sqle) {}
			if(rs!=null)
				try {rs.close();}catch(SQLException sqle) {}
		}
		System.out.println(" pw 확인용 = " + pw);
		return pw;
	}

}
