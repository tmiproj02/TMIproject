package admin.serviceManage.model.service;

import static member.common.JDBCTemplete.*;


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

	public void refuseService(String bTitle, String nickName) {

		try {
			con = getConnection();
			sDao.refuseService(bTitle,nickName,con);
			commit(con);
		}catch(Exception e) {
			rollback(con);
			e.printStackTrace();
			
		}
		
	}

	public ArrayList<SellerBoard> selectDocList(String email) {
			
		con = getConnection();
		ArrayList<SellerBoard> docList = null;
		try {
			docList = sDao.selectDocList(email,con);
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return docList;
	}
	

	
}