package admin.memberManage.model.service;

import java.sql.Connection;

import java.util.ArrayList;

import admin.memberManage.model.dao.MemberManageDao;
import member.model.vo.Member;
import static member.common.JDBCTemplete.*;

public class MemberManageService {
		// 필드 변수
		Connection con = null;
		MemberManageDao mDao = new MemberManageDao();
	

	public ArrayList<Member> selectMember() {
		
		con = getConnection();
		ArrayList<Member> mList = mDao.selectMember(con);
		
		
		return mList;
	}


	public void deleteMember(String email) {
		con = getConnection();
		
		mDao.deleteMember(email,con);
		
	}

	
	
	
	
}
