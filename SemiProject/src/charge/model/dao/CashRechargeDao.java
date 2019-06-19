package charge.model.dao;

import static member.common.JDBCTemplete.*;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import charge.model.exception.CashRechargeException;
import charge.model.vo.Cash;
import member.model.vo.Member;

public class CashRechargeDao {

private Properties prop;
private Properties prop2;
	
//	public CashRechargeDao() {
//		prop = new Properties();
//		
//		String filePath
//		   = CashRechargeDao.class
//		   .getResource("/config/member-query.properties").getPath();
//		
//		try {
//		
//			prop.load(new FileReader(filePath));
//			
//		} catch (FileNotFoundException e) {
//
//			e.printStackTrace();
//			
//		} catch (IOException e) {
//			
//			e.printStackTrace();
//			
//		}
//	}

	//캐시 내역에서 '충전'으로 보여줄 부분
	public int insertRecharge(Connection con, Cash csh) throws CashRechargeException, FileNotFoundException, IOException{
		
		prop2 = new Properties();
		
		String filePath2
		   = CashRechargeDao.class
		   .getResource("/config/cashList-query.properties").getPath();
		
		prop2.load(new FileReader(filePath2));
		
		int result = 0;
		PreparedStatement pstmt = null;
		
		try {
			//String sql = "INSERT INTO CASH VALUES(SEQ_PAYNO.NEXTVAL,?,?,SYSDATE,?)";
			String sql = prop2.getProperty("insertChargeL");
			
			
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, csh.getMno());
			pstmt.setInt(2, csh.getPayp());
			pstmt.setString(3, csh.getClassify());
			
			result=pstmt.executeUpdate();
			
			
			
		} catch(SQLException e) {
			e.printStackTrace();
			throw new CashRechargeException(e.getMessage());
		} finally {
			close(pstmt);
		}
		
		
		
		
		return result;
	}

	
	
	
	
	
	//member에서 현재 캐시 보여줄 부분
	public int updateCash(Connection con, Member m) throws CashRechargeException, FileNotFoundException, IOException{
		
		prop = new Properties();
		
		String filePath
		   = CashRechargeDao.class
		   .getResource("/config/member-query.properties").getPath();
		
		prop.load(new FileReader(filePath));
		
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



	//캐시 사용내역 조회 리스트(구매관리)
	public ArrayList<Cash> selectList(Connection con, Member m) throws CashRechargeException, FileNotFoundException, IOException{
		
		ArrayList<Cash> rechargeList = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		prop2 = new Properties();
		
		String filePath2
		   = CashRechargeDao.class
		   .getResource("/config/cashList-query.properties").getPath();
		
		prop2.load(new FileReader(filePath2));
		
		String sql = prop2.getProperty("selectList");
		
		try {
			
			rechargeList = new ArrayList<Cash>();
			
			pstmt = con.prepareStatement(sql);			
			
			pstmt.setInt(1, m.getMno());
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				Cash cash = new Cash();
				
				cash.setPayno(rset.getInt(1));
				cash.setMno(rset.getInt(2));
				cash.setPayp(rset.getInt(3));
				cash.setPaydate(rset.getDate(4));
				cash.setClassify(rset.getString(5));
				
				rechargeList.add(cash);
				System.out.println("dao" + cash);
			}
			
			
		} catch(SQLException e) {
			e.printStackTrace();
			throw new CashRechargeException(e.getMessage());
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return rechargeList;
		
	}
	
	
	
	
	
}
