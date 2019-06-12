package member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.model.service.MemberService;
import member.model.vo.Member;

/**
 * Servlet implementation class MemberSearchId
 */
@WebServlet("/searchId.do")
public class MemberSearchId extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberSearchId() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userName = request.getParameter("sName");
		String memberSSN = String.join("-", request.getParameter("sSsn1"),request.getParameter("sSsn2"));
		
		Member m = new Member();
		m.setSid(userName, memberSSN);
		
		MemberService ms = new MemberService(); 
		
		String result = ms.searchId(m);
		
		if(result != null) {
			request.setAttribute("name", userName);
			request.setAttribute("email", result);
			request.getRequestDispatcher("views/searchSuccess.jsp").forward(request, response);
		}else {
			request.setAttribute("msg", "해당되는 이메일이 없습니다.");
			request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
