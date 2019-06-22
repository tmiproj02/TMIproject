package buyingctrl.model.service;

import java.sql.Connection;
import java.util.*;
import buyingctrl.model.dao.DealMngDao;
import buyingctrl.model.exception.buyingctrlException;
import buyingctrl.model.vo.DealMng;
import member.model.vo.Member;

import static member.common.JDBCTemplete.*;


public class DealMngService {

	private Connection con;
	private DealMngDao dmDao = new DealMngDao();
	
	//전체 구매 내역 조회
	public ArrayList<DealMng> nrselectList(Member m) throws buyingctrlException {

		con = getConnection();

		ArrayList<DealMng> nreqList = dmDao.nrqselectList(con, m);
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


	//구매 전체 내역에서 검색
	public ArrayList<DealMng> searchAllList(String keyword, Member m) throws buyingctrlException {
		
		con = getConnection();
		System.out.println("keyword service : " + keyword);
		ArrayList<DealMng> nreqList = null;
		
		nreqList = dmDao.searchAllList(con, keyword, m);
		
		
		return nreqList;
		
		
		
	}


	

	
	
	
	
	
	
	
	
}
