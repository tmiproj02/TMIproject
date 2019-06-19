package sellerboard.model.dao;

import static member.common.JDBCTemplete.close;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;

import seller.model.dao.SellerDao;
import sellerboard.model.exception.SellerboardException;
import sellerboard.model.vo.SellerBoard;

public class SellerBoardDao {

	// SQL을 별도로보관하는  Properties 객체 생성하기
		private Properties prop;
		
	public SellerBoardDao() {
		prop = new Properties();
		
		//properties 경로 연결
		String filePath = SellerDao.class.getResource("/config/board-query.properties").getPath();
		
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
		
		
	public int insertSellerboard(Connection con, SellerBoard sb) throws SellerboardException{
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
			System.out.println(sb.getBtitle());
			System.out.println(sb.getBcontent());
			System.out.println(sb.getErecontent());
			System.out.println(sb.getRequest());
			System.out.println(sb.getCategory1_code());
			System.out.println(sb.getCategory2_code());
			System.out.println(sb.getPrice());
			System.out.println(sb.getImages());
			System.out.println(sb.getEditablecount());
			System.out.println(sb.getDuedate());
			System.out.println(sb.getSpeed());
			System.out.println(sb.getPlusedit());
			
			// ? 에 해당하는 값을 추가 함
			pstmt.setString(1, sb.getBtitle());
			pstmt.setString(2, sb.getBcontent());
			pstmt.setString(3, sb.getErecontent());
			pstmt.setString(4, sb.getRequest());
			pstmt.setString(5, sb.getCategory1_code());
			pstmt.setString(6, sb.getCategory2_code());
			pstmt.setInt(7, sb.getPrice());
			pstmt.setString(8, sb.getImages());
			pstmt.setInt(9, sb.getEditablecount());
			pstmt.setInt(10, sb.getDuedate());
			pstmt.setInt(11, sb.getSpeed());
			pstmt.setInt(12, sb.getPlusedit());
			
			result=pstmt.executeUpdate();
		} catch (SQLException e) {
			throw new SellerboardException(e.getMessage());
			
		} finally {
			close(pstmt);
		}
		
		return result;
	}

}
