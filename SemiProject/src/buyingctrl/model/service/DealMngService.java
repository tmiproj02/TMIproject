package buyingctrl.model.service;

import java.sql.Connection;
import java.util.*;
import buyingctrl.model.dao.DealMngDao;
import buyingctrl.model.exception.buyingctrlException;
import buyingctrl.model.vo.DealMng;
import member.model.vo.Member;
import sellerboard.model.vo.SellerBoard;

import static member.common.JDBCTemplete.*;


public class DealMngService {

	private Connection con;
	private DealMngDao dmDao = new DealMngDao();
	
	//전체 구매 내역 조회
	public ArrayList<SellerBoard> nrselectList(Member m) throws buyingctrlException {

		con = getConnection();

		ArrayList<SellerBoard> nreqList = dmDao.nrqselectList(con, m);
		System.out.println("구매전체조회service : " + nreqList);
		
		close(con);
		
		return nreqList;
	}

	
	
	//진행중 조회
	public ArrayList<DealMng> ingselectList(Member m) throws buyingctrlException {
		
		con = getConnection();
		ArrayList<DealMng> dingList = dmDao.ingselectList(con, m);
		System.out.println("진행중조회service : " + dingList);
		
		close(con);
		
		return dingList;
		
	}


	//거래 완료 조회
	public ArrayList<DealMng> finselectList(Member m) throws buyingctrlException {
		
		con = getConnection();
		ArrayList<DealMng> finList = dmDao.finselectList(con, m);
		System.out.println("완료리스트조회service : " + finList);
		
		close(con);
		
		return finList;
		
		
		
	}


	//거래 취소 조회
	public ArrayList<DealMng> ccselectList(Member m) throws buyingctrlException {

		con = getConnection();
		ArrayList<DealMng> ccList = dmDao.ccselectList(con, m);
		System.out.println("완료리스트조회service : " + ccList);
		
		close(con);
		
		return ccList;
	}


	

	
	
	
	
	
	
	
	
}
