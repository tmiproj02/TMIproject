package charge.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import charge.model.exception.CashRechargeException;
import charge.model.service.CashRechargeService;
import charge.model.vo.Cash;
import member.model.vo.Member;

/**
 * Servlet implementation class CashListServlet
 */
@WebServlet("/cList.bo")
public class CashListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CashListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			HttpSession session = request.getSession();
			Member m = (Member)session.getAttribute("member");

		ArrayList<Cash> rechargeList = new ArrayList<Cash>();
		
		CashRechargeService crs = new CashRechargeService();
		
		String page="";
	
		try {
			
			rechargeList = crs.selectList(m);
			System.out.println("2");
			page = "views/personBUY/billingHistory.jsp";
			System.out.println("3");
			request.setAttribute("rechargeList", rechargeList);
			System.out.println("4");
			request.getRequestDispatcher(page).forward(request, response);
		} catch(CashRechargeException e) {
			page = "/semi/views/common/errorPage.jsp";
			request.setAttribute("msg", "결제목록 불러오기 에러!");
			request.setAttribute("exception", e);
			e.printStackTrace();
			
			request.getRequestDispatcher(page).forward(request, response);
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
