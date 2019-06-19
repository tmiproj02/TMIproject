package seller.model.service;

import static member.common.JDBCTemplete.close;
import static member.common.JDBCTemplete.commit;
import static member.common.JDBCTemplete.getConnection;
import static member.common.JDBCTemplete.rollback;

import java.sql.Connection;

import seller.model.dao.SellerDao;
import seller.model.exception.SellerException;
import seller.model.vo.Seller;


public class SellerService {
	
	SellerDao sDao = new SellerDao();
	Connection con;
	
	public Seller selectSeller(String email) throws SellerException {
		con = getConnection();
		
		Seller result = sDao.selectSeller(con, email);
		
		close(con);
		
		return result;
	}
	public int insertSeller(Seller s) throws SellerException {
		//Dao = data access object
		con = getConnection();
		int result = sDao.insertSeller(con,s);
		//실행하면 숫자가 나오는데 숫자만 돌려주면 된다.		
		
		if(result>0) commit(con);
		else rollback(con);
		
		close(con);
		
		return result;
	}

}
