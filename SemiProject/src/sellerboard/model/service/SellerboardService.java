package sellerboard.model.service;

import static member.common.JDBCTemplete.*;
import java.sql.Connection;

import sellerboard.model.dao.SellerBoardDao;
import sellerboard.model.exception.SellerboardException;
import sellerboard.model.vo.SellerBoard;

public class SellerboardService {

	private Connection con;
	private SellerBoardDao sbDao = new SellerBoardDao();
	
	public int insertsellerBoard(SellerBoard sb) throws SellerboardException{
		//Dao = data access object
				con = getConnection();
				int result = sbDao.insertSellerboard(con,sb);
				//실행하면 숫자가 나오는데 숫자만 돌려주면 된다.		
				
				if(result>0) commit(con);
				else rollback(con);
				
				close(con);
				
				return result;
	}

}
