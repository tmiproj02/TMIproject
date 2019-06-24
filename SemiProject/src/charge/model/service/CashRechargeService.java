package charge.model.service;

import static member.common.JDBCTemplete.close;
import static member.common.JDBCTemplete.commit;
import static member.common.JDBCTemplete.getConnection;
import static member.common.JDBCTemplete.rollback;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import charge.model.dao.CashRechargeDao;
import charge.model.exception.CashRechargeException;
import charge.model.vo.Cash;
import member.model.vo.Member;

public class CashRechargeService  {

	
	private Connection con;
	private CashRechargeDao crDao = new CashRechargeDao();
	
	

	//캐시 내역에서 '충전'으로 DB에 들어갈 부분
		public int chargeInsert(Cash csh) throws CashRechargeException, FileNotFoundException, IOException {
			
			con = getConnection();
			int result = crDao.insertRecharge(con, csh);
			
			if(result > 0) commit(con);
			else rollback(con);
			
			close(con);
			
			return result;

		}

	
	
		//member에서 현재 캐시 +로 들어가는 부분
				public int insertCash(Member m) throws CashRechargeException, FileNotFoundException, IOException {
					
					con = getConnection();

					int result = crDao.updateCash(con, m);
					int recentCash = 0;
					
					/*
					 * if(result>0){
					 * commit(con);
					 * else
					 * rollback(con);
					 * 이 원래꺼!
					 */
					
					//현재 캐시가 변경되었으니 변경된 값을 화면에 부르기 위함(select)
					// no no no, just get the cash(int value) here
					// then change member's cash value to setter in session
					// in servlet
					if(result > 0) {
						commit(con);
						
						// int value
						recentCash = crDao.selectCash(con, m); 
						
						if(recentCash != 0) {
							commit(con);
						} else {
							rollback(con);
							throw new CashRechargeException("Exception, because the cash not charge!");
						}
						
					}
					
					close(con);
					
					return recentCash;
					
				}
	
		
	//캐시 사용내역 조회리스트
				public ArrayList<Cash> selectList(Member m) throws CashRechargeException, FileNotFoundException, IOException{
					con = getConnection();
					
					ArrayList<Cash> rechargeList = crDao.selectList(con, m);
					System.out.println("service"+rechargeList);
					close(con);
					
					return rechargeList;
				}


		//★캐시 필터
		public ArrayList<Cash> searchNotice(String category, Member m) throws FileNotFoundException, IOException {
			
			con = getConnection();
			
			//if(category.length() > 0) {
				ArrayList<Cash> rechargeList = crDao.searchList(con, m, category);
			
			
			close(con);
			
			return rechargeList;
			
		}

		
		
	
		

	//캐시 내역에서 '사용'으로 DB에 들어갈 부분
		public int spentCashInsert(Cash csh) throws FileNotFoundException, IOException, CashRechargeException {
			
			con = getConnection();
			int result = crDao.insertsptCash(con, csh);
			
			if(result > 0) commit(con);
			else rollback(con);
			
			close(con);
			
			return result;
		}


	//member에서 현재 캐시 -로 들어가는 부분
		public int minusinsertCash(Member m) throws FileNotFoundException, IOException, CashRechargeException {
			
			con = getConnection();

			int result = crDao.updateSptCash(con, m);
			int recentCash = 0;
			
			/*
			 * if(result>0){
			 * commit(con);
			 * else
			 * rollback(con);
			 * 이 원래꺼!
			 */
			
			//현재 캐시가 변경되었으니 변경된 값을 화면에 부르기 위함(select)
			// no no no, just get the cash(int value) here
			// then change member's cash value to setter in session
			// in servlet
			if(result > 0) {
				commit(con);
				
				// int value
				recentCash = crDao.selectCash(con, m); 
				
				if(recentCash != 0) {
					commit(con);
				} else {
					rollback(con);
					throw new CashRechargeException("Exception, 캐시감소안됨!");
				}
				
			}
			
			close(con);
			
			return recentCash;
			
			
			
		}



		public int CashUpdate(int mno,int tprice) throws FileNotFoundException, IOException, SQLException {
			con = getConnection();
			int result = crDao.CashUpdate(con,mno,tprice);
			if(result > 0) commit(con);
			else rollback(con);
			
			close(con);
			
			return result;
		}
		
		
		
		
}
