package charge.model.service;

import static member.common.JDBCTemplete.close;
import static member.common.JDBCTemplete.commit;
import static member.common.JDBCTemplete.getConnection;
import static member.common.JDBCTemplete.rollback;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import charge.model.dao.CashRechargeDao;
import charge.model.exception.CashRechargeException;
import charge.model.vo.Cash;
import member.model.vo.Member;

public class CashRechargeService  {

	
	private Connection con;
	private CashRechargeDao crDao = new CashRechargeDao();
	
	

	//캐시 내역에서 '충전'으로 보여줄 부분
	public int chargeInsert(Cash csh) throws CashRechargeException, FileNotFoundException, IOException {
		
		con = getConnection();
		int result = crDao.insertRecharge(con, csh);
		
		if(result > 0) commit(con);
		else rollback(con);
		
		close(con);
		
		return result;

	}

	
	
	//member에서 현재 캐시 보여줄 부분
		public int insertCash(Member m) throws CashRechargeException, FileNotFoundException, IOException {
			// TODO Auto-generated method stub
			
			con = getConnection();
			int result = crDao.updateCash(con, m);
			
			if(result > 0) commit(con);
			else rollback(con); 
			
			close(con);
			
			return result;
			
		}
	
		
	//캐시 사용내역 조회리스트
		public ArrayList<Cash> selectList(Member m) throws CashRechargeException, FileNotFoundException, IOException{
			con = getConnection();
			
			ArrayList<Cash> rechargeList = crDao.selectList(con, m);
			System.out.println("service"+rechargeList);
			close(con);
			
			return rechargeList;
		}
}
