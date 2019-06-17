package charge.model.dao;

import static member.common.JDBCTemplete.*;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;

import charge.model.exception.CashRechargeException;

import member.model.vo.Member;

public class CashRechargeDao {

private Properties prop;
	
	public CashRechargeDao() {
		prop = new Properties();
		
		String filePath
		   = CashRechargeDao.class
		   .getResource("/config/member-query.properties").getPath();
		
		try {
		
			prop.load(new FileReader(filePath));
			
		} catch (FileNotFoundException e) {

			e.printStackTrace();
			
		} catch (IOException e) {
			
			e.printStackTrace();
			
		}
	}
	
	
	public int updateCash(Connection con, Member m) throws CashRechargeException{
		
		int result = 0;
		PreparedStatement pstmt = null;
		
		try {

			String sql = prop.getProperty("updateCash");
			
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, m.getCash());
			pstmt.setString(2, m.getEmail());

			result = pstmt.executeUpdate();

		} catch(SQLException e) {
			e.printStackTrace();
			throw new CashRechargeException(e.getMessage());
		} finally {
			close(pstmt);
		}
		
		return result;
	}

}
