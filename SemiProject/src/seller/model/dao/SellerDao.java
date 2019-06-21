package seller.model.dao;

import static member.common.JDBCTemplete.close;

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

public class SellerDao {
	// SQL을 별도로보관하는  Properties 객체 생성하기
	private Properties prop;
	
	public SellerDao() {
		prop = new Properties();
		
		//properties 경로 연결
		String filePath = SellerDao.class.getResource("/config/seller-query.properties").getPath();
		
		try {
			prop.load(new FileReader(filePath));
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			System.out.println("Dao부분 file not found");
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			System.out.println("Dao부분 IO Exception");
			e.printStackTrace();
		}
		
	}
	
	// 판매자 추가 파트
	public int insertSeller(Connection con, Seller s) throws SellerException {
		// 결과 확인을 위한 변수 result 생성
		int result = 0;
				
		PreparedStatement pstmt = null;
				
		try {
			// 준비할 쿼리문 작성하기
			String sql = prop.getProperty("insertSeller");
			
			//1. PreparedStatement 객체 생성하기 pstmt는 실행 전에 반드시 쿼리 양식을 들고 있어야 한다.
			//그래서 미리 작성을함 문제는 입력값이 아주 많은데 한꺼번에 다 받아야 하기 때문에 주의가 필요하다.
			
			pstmt = con.prepareStatement(sql);
			
			
			System.out.println("값을 잘전달받는지 확인하기위함");
			System.out.println(s.getBankname());
			System.out.println(s.getBanknumber());
			System.out.println(s.getCareerdate1());
			System.out.println(s.getCareerdate2());
			System.out.println(s.getCareerdate3());
			System.out.println(s.getCareer1());
			System.out.println(s.getCareer2());
			System.out.println(s.getCareer3());
			System.out.println(s.getCertificat1());
			System.out.println(s.getCertificat2());
			System.out.println(s.getCertificat3());
			System.out.println(s.getIntrotext());
			
			// ? 에 해당하는 값을 추가 함
			pstmt.setString(1, s.getBankname());
			pstmt.setString(2, s.getBanknumber());
			pstmt.setString(3, s.getCareerdate1());
			pstmt.setString(4, s.getCareerdate2());
			pstmt.setString(5, s.getCareerdate3());
			pstmt.setString(6, s.getCareer1());
			pstmt.setString(7, s.getCareer2());
			pstmt.setString(8, s.getCareer3());
			pstmt.setString(9, s.getCertificat1());
			pstmt.setString(10, s.getCertificat2());
			pstmt.setString(11, s.getCertificat3());
			pstmt.setString(12, s.getIntrotext());
			
			result=pstmt.executeUpdate();
		} catch (SQLException e) {
			throw new SellerException(e.getMessage());
			
		} finally {
			close(pstmt);
		}
		return result;
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
				result.setSno(rset.getInt("SNO"));
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











