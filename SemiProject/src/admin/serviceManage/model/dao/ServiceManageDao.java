package admin.serviceManage.model.dao;

import static member.common.JDBCTemplete.close;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import admin.memberManage.model.dao.MemberManageDao;
import sellerboard.model.vo.SellerBoard;


public class ServiceManageDao {
		Properties prop = null;
		
	public ServiceManageDao() {
		prop = new Properties();
		String filePath = MemberManageDao.class.getResource("/config/admin-query.properties").getPath();
	
		try {
			prop.load(new FileReader(filePath));
		} catch (FileNotFoundException e) {
			
			e.printStackTrace();
		} catch (IOException e) {
			
			e.printStackTrace();
			}
	}
	
	
	
	public ArrayList<SellerBoard> selectServiceList(Connection con) {
			
		ArrayList<SellerBoard> sList = new ArrayList<SellerBoard>();
		SellerBoard sb = null;
		ResultSet rset = null;
		Statement stmt = null;
		String sql = prop.getProperty("selectServiceList");
		
		try {
			
			stmt = con.createStatement();
			rset = stmt.executeQuery(sql);
			
			while(rset.next()) {
					
			}
			
			
		
			
			return sList;
			
		} catch (SQLException e) {
			
			
			e.printStackTrace();
		}finally {
			close(rset);
			close(stmt);
		}
		
		return sList;
	}
		
}

	

