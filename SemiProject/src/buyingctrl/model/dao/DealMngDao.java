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

import static member.common.JDBCTemplete.*;


public class DealMngDao {

	private Properties prop;
	private String progressing = "진행중";
	private String fin = "완료";
	private String cc = "취소";
	
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
	public ArrayList<DealMng> nrqselectList(Connection con, Member m) throws buyingctrlException {
		
		ArrayList<DealMng> nreqList = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("nreqselectList");
		
		try {
			nreqList = new ArrayList<DealMng>();
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, m.getMno());
			
			rset = pstmt.executeQuery();
			System.out.println(m.getMno());
			while(rset.next()) {
				DealMng dm = new DealMng();
				
				dm.setImages(rset.getString(1));
				dm.setDmcode(rset.getInt(2));
				dm.setBtitle(rset.getString(3));
				dm.setDealdate(rset.getDate(4));
				dm.setNickname(rset.getString(5));
				dm.setPrice(rset.getInt(6));
				
				dm.setMno(rset.getInt(7));
				
				dm.setProgress(rset.getString(8));
				
				
				
				
				nreqList.add(dm);
				System.out.println("구매 내역 전체 조회 리스트(DealMngDao) : "+ nreqList);
				
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
			pstmt.setString(2, progressing);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				DealMng dm = new DealMng();
				
				dm.setImages(rset.getString(1));
				dm.setDmcode(rset.getInt(2));
				dm.setBtitle(rset.getString(3));
				dm.setDealdate(rset.getDate(4));
				dm.setNickname(rset.getString(5));
				dm.setPrice(rset.getInt(6));
				
				dm.setMno(rset.getInt(7));
				
				dm.setProgress(rset.getString(8));
				
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
			pstmt.setString(2, fin);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				DealMng dm = new DealMng();
				
				dm.setImages(rset.getString(1));
				dm.setDmcode(rset.getInt(2));
				dm.setBtitle(rset.getString(3));
				dm.setDealdate(rset.getDate(4));
				dm.setNickname(rset.getString(5));
				dm.setPrice(rset.getInt(6));
				
				dm.setMno(rset.getInt(7));
				
				dm.setProgress(rset.getString(8));
				
				
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
			pstmt.setString(2, cc);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				DealMng dm = new DealMng();
				
				dm.setImages(rset.getString(1));
				dm.setDmcode(rset.getInt(2));
				dm.setBtitle(rset.getString(3));
				dm.setDealdate(rset.getDate(4));
				dm.setNickname(rset.getString(5));
				dm.setPrice(rset.getInt(6));
				
				dm.setMno(rset.getInt(7));
				
				dm.setProgress(rset.getString(8));
				
				
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

	//구매 전체 내역에서 검색
	public ArrayList<DealMng> searchAllList(Connection con, String keyword, Member m) throws buyingctrlException {
		
		ArrayList<DealMng> nreqList = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("searAllselect");
		
		try {
			
			nreqList = new ArrayList<DealMng>();
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, m.getMno());
			pstmt.setString(2, keyword);
			rset = pstmt.executeQuery();
			while(rset.next()){
				DealMng dm = new DealMng();
				
				dm.setImages(rset.getString(1));
				dm.setDmcode(rset.getInt(2));
				dm.setBtitle(rset.getString(3));
				dm.setDealdate(rset.getDate(4));
				dm.setNickname(rset.getString(5));
				dm.setPrice(rset.getInt(6));
				
				dm.setMno(rset.getInt(7));
				
				dm.setProgress(rset.getString(8));
				
				nreqList.add(dm);
				System.out.println("검색 내용(DealMngDao) : " + nreqList);
				System.out.println("키워드!!!!!!!!!!!!!");
			
			}
		}catch(SQLException e) {
			e.printStackTrace();
			throw new buyingctrlException(e.getMessage());
		}finally {
			close(rset);
			close(pstmt);
		}
		
		
		return nreqList;
	}


	
	
	

	

	
	
	
	
	
	
	
	
	
}
