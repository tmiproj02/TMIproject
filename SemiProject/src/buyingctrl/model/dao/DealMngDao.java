package buyingctrl.model.dao;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import buyingctrl.model.exception.buyingctrlException;

import member.model.vo.Member;
import sellerboard.model.vo.SellerBoard;

import static member.common.JDBCTemplete.*;


public class DealMngDao {

	private Properties prop;
	
	public DealMngDao() {
		prop = new Properties();
		
		String filePath
		   = DealMngDao.class
		   .getResource("/config/dealManage-query.properties").getPath();
		
		try {
		
			prop.load(new FileReader(filePath));
			
		} catch (FileNotFoundException e) {

			e.printStackTrace();
			
		} catch (IOException e) {
			
			e.printStackTrace();
			
		}
	}

	
	//요구사항 없는 구매내역 조회 리스트
	public ArrayList<SellerBoard> nrqselectList(Connection con, Member m) throws buyingctrlException {
		
		ArrayList<SellerBoard> nreqList = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("nreqselectList");
		
		try {			
			nreqList = new ArrayList<SellerBoard>();
			
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, m.getMno());
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				SellerBoard sb = new SellerBoard();
				
				sb.setImages(rset.getString("images"));
				sb.setBtitle(rset.getString("btitle"));
				sb.setPrice(rset.getInt("price"));
				sb.setDealdateB(rset.getDate("dealdateB"));
				
				nreqList.add(sb);
				System.out.println("요구사항 없는 구매내역 조회 리스트(DealMngDao) : "+ nreqList);
				
			}
			
		} catch(SQLException e) {
			e.printStackTrace();
			throw new buyingctrlException(e.getMessage());
		} finally {
			close(rset);
			close(pstmt);
		}
		
		
		return nreqList;
	}
	
	
	
	
	
	
	
	
	
}
