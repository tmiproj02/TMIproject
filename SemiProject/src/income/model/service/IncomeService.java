package income.model.service;

import static member.common.JDBCTemplete.*;

import java.sql.Connection;
import java.util.ArrayList;

import income.model.dao.IncomeDao;
import income.model.vo.Income;

public class IncomeService {
	private Connection con;
	private IncomeDao id = new IncomeDao();
	public ArrayList<Income> selectIncome(int sno) {
		con = getConnection();
		
		ArrayList<Income> list = id.selectIncome(con, sno);
		
		close(con);
		
		return list;
	}
	
	
	
	
	
}
