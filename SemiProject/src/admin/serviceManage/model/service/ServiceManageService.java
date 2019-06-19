package admin.serviceManage.model.service;

import static member.common.JDBCTemplete.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import admin.serviceManage.model.dao.ServiceManageDao;
import sellerboard.model.vo.SellerBoard;


public class ServiceManageService {
	// 필드 변수
	Connection con = null;
	ServiceManageDao sDao = new ServiceManageDao();

	public ArrayList<SellerBoard> selectServiceList() {
		ArrayList<SellerBoard> sList = null;
		con = getConnection();
		
		try {
			sList = sDao.selectServiceList(con);
		
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	
		return sList;
		
	}
	


	
	
}