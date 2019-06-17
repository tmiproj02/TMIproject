package charge.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import charge.model.exception.CashRechargeException;
import charge.model.service.CashRechargeService;
import member.model.vo.Member;

/**
 * Servlet implementation class CashRechargeServlet
 */
@WebServlet("/mCashRec.bo")
public class CashRechargeServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CashRechargeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 1. 인코딩
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		int Cash = Integer.parseInt(request.getParameter("price"));
		String email = request.getParameter("email");

		Member m = new Member(Cash);
		m.setEmail(email);
		
		CashRechargeService crs = new CashRechargeService();
		
		try {

			crs.insertCash(m);
			
			response.sendRedirect("/semi/views/personBUY/billingHistory.jsp");

		} catch(CashRechargeException e) {
			
			request.setAttribute("msg", "캐시 충전 중 에러 발생!!");
			request.setAttribute("exception", e);
		
			request
			.getRequestDispatcher("views/common/errorPage.jsp")
			.forward(request, response);
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
