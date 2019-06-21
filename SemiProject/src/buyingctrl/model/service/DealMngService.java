package buyingctrl.model.service;

import java.sql.Connection;
import java.util.*;
import buyingctrl.model.dao.DealMngDao;
import buyingctrl.model.exception.buyingctrlException;
import member.model.vo.Member;
import sellerboard.model.vo.SellerBoard;

import static member.common.JDBCTemplete.*;


public class DealMngService {

	private Connection con;
	private DealMngDao dmDao = new DealMngDao();
	
	//요구사항 없는 구매내역 조회 리스트ㅠ_ㅠ
	public ArrayList<SellerBoard> nrselectList(Member m) throws buyingctrlException {

		con = getConnection();
		ArrayList<SellerBoard> nreqList = dmDao.nrqselectList(con, m);
		System.out.println("요청사항없음service : " + nreqList);
		
		close(con);
		
		return nreqList;
	}




	
	
	
	
	
	
	
	
}
