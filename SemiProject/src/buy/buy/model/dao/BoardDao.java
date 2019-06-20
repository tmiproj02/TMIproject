package buy.buy.model.dao;

import static buy.buy.common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import buy.buy.model.exception.BoardException;

import buy.buy.model.dao.BoardDao;

import buy.buy.model.vo.Board;

public class BoardDao {
	
	private Properties prop;
	
	public BoardDao () {
		prop = new Properties();
		
		String filePath = BoardDao.class
				.getResource("/buy/buy/config/board-query.properties").getPath();
		
		try {
			
			prop.load(new FileReader(filePath));
			
		} catch ( IOException e) {
			
		}
		
	}
	
	public Board selectOne(Connection con, int bno) throws BoardException {
		Board b = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectOne");
		
		try {
			pstmt = con.prepareStatement(sql);
			System.out.println("111");
			pstmt.setInt(1, bno);
			System.out.println("111");
			rset = pstmt.executeQuery();
			System.out.println("111");
			if(rset.next()) {
				b = new Board();
				b.setBno(bno);
				b.setBtitle(rset.getString("BTITLE"));
				b.setBcontent(rset.getString("BCONTENT"));
				b.setErecontent(rset.getString("ERECONTENT"));
				b.setRequest(rset.getString("REQUEST"));
				b.setPrice(rset.getInt("PRICE"));
				b.setBevaluation(rset.getInt("BEVALUATION"));
				b.setImages(rset.getString("IMAGES"));
				b.setEditablecount(rset.getInt("EDITABLECOUNT"));
				b.setDuedate(rset.getInt("DUEDATE"));
				
				System.out.println("111");
				
				
				
				
				
		
			}
		} catch (SQLException e) {
			
			throw new BoardException(e.getMessage());
		} finally {
			close(rset);
			close(pstmt);
			
		}
		
		
		return b;
	}

	public int updateReadCount(Connection con, int bno) {
		// TODO Auto-generated method stub
		return 0;
	}

}
