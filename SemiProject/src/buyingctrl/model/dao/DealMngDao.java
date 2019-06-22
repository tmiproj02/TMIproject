package buyingctrl.model.dao;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

import buyingctrl.model.exception.buyingctrlException;
import buyingctrl.model.vo.DealMng;
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

	
	//전체 구매내역 조회
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
				System.out.println("1");
				sb.setBtitle(rset.getString("btitle"));
				System.out.println("2");
				sb.setPrice(rset.getInt("price"));
				System.out.println("4");
				
				
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

	
	
	
	
	
	
	//진행중 조회
	public ArrayList<DealMng> ingselectList(Connection con, Member m) throws buyingctrlException {
		
		ArrayList<DealMng> dingList = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("ingselectList");
		
		try {
			dingList = new ArrayList<DealMng>();
			
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, m.getMno());
			pstmt.setString(2, "진행중");
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				DealMng dm = new DealMng();
				
				dm.setImages(rset.getString("images"));
				dm.setBtitle(rset.getString("btitle"));
				dm.setPrice(rset.getInt("price"));
				dm.setDmcode(rset.getInt("dmcode"));
				dm.setDealdate(rset.getDate("dealdate"));
				dm.setNickname(rset.getString("nickname"));
				
				
				dingList.add(dm);
				System.out.println("진행중인 구매내역 조회 리스트(DealMngDao) : "+ dingList);
				
			}
			
			
			
		} catch(SQLException e) {
			e.printStackTrace();
			throw new buyingctrlException(e.getMessage());
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return dingList;
		
		
	}

	//완료된 거래 리스트 조회
	public ArrayList<DealMng> finselectList(Connection con, Member m) throws buyingctrlException {
		
		ArrayList<DealMng> finList = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("finselectList");
		
		try {
			finList = new ArrayList<DealMng>();
			
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, m.getMno());
			pstmt.setString(2, "완료");
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				DealMng dm = new DealMng();
				
				dm.setImages(rset.getString("images"));
				dm.setBtitle(rset.getString("btitle"));
				dm.setPrice(rset.getInt("price"));
				dm.setDmcode(rset.getInt("dmcode"));
				dm.setDealdate(rset.getDate("dealdate"));
				dm.setNickname(rset.getString("nickname"));
				
				
				finList.add(dm);
				System.out.println("완료된 구매내역 조회 리스트(DealMngDao) : "+ finList);
				
			}
			
			
			
		} catch(SQLException e) {
			e.printStackTrace();
			throw new buyingctrlException(e.getMessage());
		} finally {
			close(rset);
			close(pstmt);
		}
		
		
		
		
		
		return finList;
	}


	
	//거래 취소 조회
	public ArrayList<DealMng> ccselectList(Connection con, Member m) throws buyingctrlException {
		
		ArrayList<DealMng> ccList = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("ccselectList");
		
		try {
			ccList = new ArrayList<DealMng>();
			
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, m.getMno());
			pstmt.setString(2, "취소");
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				DealMng dm = new DealMng();
				
				dm.setImages(rset.getString("images"));
				dm.setBtitle(rset.getString("btitle"));
				dm.setPrice(rset.getInt("price"));
				dm.setDmcode(rset.getInt("dmcode"));
				dm.setDealdate(rset.getDate("dealdate"));
				dm.setNickname(rset.getString("nickname"));
				
				
				ccList.add(dm);
				System.out.println("취소 구매내역 조회 리스트(DealMngDao) : "+ ccList);
				
			}
			
			
			
		} catch(SQLException e) {
			e.printStackTrace();
			throw new buyingctrlException(e.getMessage());
		} finally {
			close(rset);
			close(pstmt);
		}
		
		
		
		
		
		return ccList;
		
		
		
		
	}


	
	
	

	

	
	
	
	
	
	
	
	
	
}
