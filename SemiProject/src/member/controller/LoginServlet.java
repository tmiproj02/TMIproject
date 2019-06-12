package member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.model.exception.MemberException;
import member.model.service.MemberService;
import member.model.vo.Member;


@WebServlet("/login.do")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public LoginServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 1. 인코딩
		request.setCharacterEncoding("UTF-8");
		
		String userEmail = request.getParameter("userEmail");
		String userPwd = request.getParameter("userPwd");
		
		String isSNS = request.getParameter("isSNS");
	
		Member m = new Member(userEmail,userPwd);
		m.setIsSNS(isSNS);
		System.out.println("로그인 시 isSNS: " + m.getIsSNS());
		
		MemberService ms = new MemberService();
		
		try {
			m = ms.selectMemeber(m);
			if(m.getEmailVerification().equals("0")) {
				request.setAttribute("msg", "메일인증이 되지않은 계정입니다.");
				request.getRequestDispatcher("views/loginFail.jsp").forward(request, response);
			} else {
			HttpSession session = request.getSession();
			session.setAttribute("member", m);
			RequestDispatcher view = request.getRequestDispatcher("index.jsp");
			view.forward(request, response);
			}
			
		} catch (Exception e) {
			request.setAttribute("msg", "아이디와 비밀번호가 일치하지 않습니다.");
			request.getRequestDispatcher("views/loginFail.jsp").forward(request, response);
			e.printStackTrace();
			// 로그인 실패!
		
		}
		
		

	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	}

}
