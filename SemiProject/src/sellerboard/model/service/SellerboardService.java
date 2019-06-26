package sellerboard.model.service;

import static member.common.JDBCTemplete.*;
import java.sql.Connection;
import java.util.ArrayList;

import sellerboard.model.dao.SellerBoardDao;
import sellerboard.model.exception.SellerboardException;
import sellerboard.model.vo.SellerBoard;
import sellerboard.model.vo.Talent;

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

	public int getListCount(String cCode, String code) {
		con = getConnection();
		int result = sbDao.getListCount(con,cCode,code);
		close(con);
		return result;
	}

	public ArrayList<SellerBoard> selectList(int currentPage, int pageLimit, int boardLimit, String cCode, String code) {
		con = getConnection();
		ArrayList<SellerBoard> list = sbDao.selectList(con,currentPage,pageLimit,boardLimit,cCode,code);
		close(con);
		
		
		return list;
	}

	public ArrayList<SellerBoard> myBoardSelect(int sno) throws SellerboardException {
		con=getConnection();
		ArrayList<SellerBoard> list = sbDao.myBoardSelect(con,sno);
		close(con);
		
		return list;
	}

	public int findSno(String email) throws SellerboardException {
		con = getConnection();
		
		int result = sbDao.findSno(con, email);
		
		close(con);
		
		System.out.println("SellerService에서 값 잘받아왔는지 확인" + result);
		
		if(result == 0) throw new SellerboardException("Sno를 가져오는 과정에서 문제발생");
		
		return result;
	}

	public Talent SelectTalent(String cCode, String code) {
		con = getConnection();
		
		String t1 = "";
		String t2 = "";
		Talent t = new Talent();
		if(code.equals("0")) {
			t1=sbDao.SelectTalent1(con, cCode);
			t.setTalent1(t1);
			System.out.println(t.getTalent1());
		} else {
			t1=sbDao.SelectTalent1(con, cCode);
			t2=sbDao.SelectTalent2(con, code);
			t.setTalent1(t1);
			t.setTalent2(t2);
			System.out.println(t.getTalent1());
		}
		
		close(con);
		
		return t;
	}

	public int getSearchedListCount(String searchWord) {
		int searchedListCount =0;
		con = getConnection();
		
		try {
			
			searchedListCount = sbDao.getSearchedListCount(searchWord,con);
			
			commit(con);
			
			close(con);
			
		}catch(Exception e) {
		
			e.printStackTrace();
		}
		
		return searchedListCount;
	}

}
