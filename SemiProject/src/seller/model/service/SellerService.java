package seller.model.service;

import static member.common.JDBCTemplete.*;
import java.sql.Connection;

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

}
