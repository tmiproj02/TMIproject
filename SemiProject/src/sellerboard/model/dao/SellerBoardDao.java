package sellerboard.model.dao;

import static member.common.JDBCTemplete.*;

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
			String sql = prop.getProperty("insertSellerboard");
			
			//1. PreparedStatement 객체 생성하기 pstmt는 실행 전에 반드시 쿼리 양식을 들고 있어야 한다.
			//그래서 미리 작성을함 문제는 입력값이 아주 많은데 한꺼번에 다 받아야 하기 때문에 주의가 필요하다.
			
			pstmt = con.prepareStatement(sql);
			
			
			System.out.println("값을 잘전달받는지 확인하기위함");
			System.out.println(sb.getBtitle());					//제목
			System.out.println(sb.getBcontent());				//상세 설명
			System.out.println(sb.getErecontent());				//수정 및 재진행 안내
			System.out.println(sb.getRequest());				//작업 전 요청사항	
			System.out.println(sb.getCategory1_code());			//상위 카테고리
			System.out.println(sb.getCategory2_code());			//하위 카테고리
			System.out.println(sb.getPrice());					//가격
			System.out.println(sb.getImages());					//이미지들
			System.out.println(sb.getEditablecount());			//수정 횟수
			System.out.println(sb.getDuedate());				//작업기간
			System.out.println(sb.getSpeed());					//빠른작업(옵션)
			
							//추가수정(옵션)
		
			
			// ? 에 해당하는 값을 추가 함
			pstmt.setString(1, sb.getBtitle());					//제목
			pstmt.setString(2, sb.getBcontent());				//상세 설명
			pstmt.setString(3, sb.getErecontent());				//수정 및 재진행 안내
			pstmt.setString(4, sb.getRequest());				//작업 전 요청사항
			pstmt.setString(5, sb.getCategory1_code());			//상위 카테고리
			pstmt.setString(6, sb.getCategory2_code());			//하위 카테고리
			pstmt.setInt(7, sb.getPrice());						//가격
			pstmt.setString(8, sb.getImages());					//이미지들
			pstmt.setInt(9, sb.getEditablecount());				//수정 횟수
			pstmt.setInt(10, sb.getDuedate());					//작업기간
			pstmt.setInt(11, sb.getSpeed());					//빠른작업(옵션)
					//빠른작업(옵션)
			pstmt.setInt(13, sb.getPlusedit());					//추가수정(옵션)
		
			
			result=pstmt.executeUpdate();
		} catch (SQLException e) {
			throw new SellerboardException(e.getMessage());
			
		} finally {
			close(pstmt);
		}
		
		return result;
	}

}
