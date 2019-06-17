package admin.memberManage.model.dao;

import java.io.FileNotFoundException;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;
import static member.common.JDBCTemplete.*;
import member.model.vo.Member;

public class MemberManageDao {
		
		Properties prop = null;
		
	public MemberManageDao() {

			prop = new Properties();
			String filePath = MemberManageDao.class.getResource("/config/admin-query.properties").getPath();
		
		try {
			prop.load(new FileReader(filePath));
		} catch (FileNotFoundException e) {
			
			e.printStackTrace();
		} catch (IOException e) {
			
			e.printStackTrace();
			}
	}
	
	public ArrayList<Member> selectMember(Connection con){
		Member m = null;
		ArrayList<Member> mList = new ArrayList<Member>();
		ResultSet rset = null;
		Statement stmt = null;
		String sql = prop.getProperty("selectMember");
		
		try {
			
			stmt = con.createStatement();
			rset = stmt.executeQuery(sql);
			
			while(rset.next()) {
				m = new Member();
				m.setEmail(rset.getString("email"));
				m.setUserName(rset.getString("nickName"));
				m.setEnrollDate(rset.getDate("enrolldate"));
	
				mList.add(m);
			}
			
			System.out.println("들어간 멤버 확인 : " + mList);
			
			return mList;
			
		} catch (SQLException e) {
			
			
			e.printStackTrace();
		}finally {
			close(rset);
			close(stmt);
		}
		
		return mList;
	}

	public void deleteMember(String email, Connection con) {
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("deleteMember");		
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.executeUpdate();
			System.out.println("회원삭제완료");
			
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
			
		}
		
		
	}
	
	
	
	
	
	
	
}
