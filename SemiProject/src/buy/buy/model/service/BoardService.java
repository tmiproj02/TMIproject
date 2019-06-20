package buy.buy.model.service;

import static buy.buy.common.JDBCTemplate.*;



import java.sql.Connection;


import buy.buy.model.dao.BoardDao;
import buy.buy.model.exception.BoardException;
import buy.buy.model.vo.Board;


public class BoardService {
	
	private BoardDao bDao = new BoardDao();


	public Board buyOne(int bno) {
		// TODO Auto-generated method stub
		return null;
	}

	public Board selectOne(int bno) throws BoardException {
		Connection con = getConnection();
		
		Board b= bDao.selectOne(con, bno);

		close(con);
		return b;
	}


}
