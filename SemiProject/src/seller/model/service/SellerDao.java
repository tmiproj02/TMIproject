package seller.model.service;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import seller.model.exception.SellerException;
import seller.model.vo.Seller;
import static member.common.JDBCTemplete.*;
public class SellerDao {
	
	Properties prop = null;
	
	public SellerDao() {
		prop = new Properties();
		  // 이 친구의 경로를 찾아서 filePath에 넣어준다.
		String filePath = SellerDao.class.getResource("/config/seller-query.properties").getPath();
	
		try {
			prop.load(new FileReader(filePath));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {	
			e.printStackTrace();
		}
		
	}
	
	
	
	public Seller selectSeller(Connection con, String email) throws SellerException {
		Seller result = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectSeller");
		
		try {
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, email);
			
			rset = pstmt.executeQuery();
			
			result = new Seller();
			if(rset.next()) {
				
				result.setIncome(rset.getInt("INCOME"));
				
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
			throw new SellerException(e.getMessage());
		} finally {
			close(rset);
			close(pstmt);
		}
		
		
		
		
		return result;
	}

}
