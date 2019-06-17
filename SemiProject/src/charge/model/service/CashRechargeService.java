package charge.model.service;

import static member.common.JDBCTemplete.*;

import java.sql.Connection;

import charge.model.dao.CashRechargeDao;
import charge.model.exception.CashRechargeException;
import member.model.vo.Member;

public class CashRechargeService  {

	
	private Connection con;
	private CashRechargeDao crDao = new CashRechargeDao();
	
	public int insertCash(Member m) throws CashRechargeException {
		// TODO Auto-generated method stub
		
		con = getConnection();
		int result = crDao.updateCash(con, m);

		if(result > 0) commit(con);
		else rollback(con);
		
		close(con);
		
		return result;
		
	}

}
