package admin.memberManage.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import admin.memberManage.model.service.MemberManageService;
import member.model.vo.Member;

@WebServlet("/memberSelect")
public class MemberSelectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public MemberSelectServlet() {
        super();
       
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			ArrayList<Member> mList = null;
			String page ="";
			
			try {
			
			MemberManageService mms = new MemberManageService();
			mList = mms.selectMember();
			page = "views/adminPages/production/memberManage.jsp";
			System.out.println("서블릿의 mList : " + mList);
			request.setAttribute("mList", mList);
			
			}catch(Exception e ){
				System.out.println("멤버 조회 중 문제 발생!");
				e.printStackTrace();
			}
			HttpSession session = request.getSession();
			session.setAttribute("mList", mList);
			response.sendRedirect(page);
			
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
