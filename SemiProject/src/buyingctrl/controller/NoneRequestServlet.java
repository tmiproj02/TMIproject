package buyingctrl.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import buyingctrl.model.exception.buyingctrlException;
import buyingctrl.model.service.DealMngService;
import member.model.vo.Member;
import sellerboard.model.vo.SellerBoard;

/**
 * Servlet implementation class NoneRequestServlet
 */
@WebServlet("/nReq.bo")
public class NoneRequestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NoneRequestServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		Member m = (Member)session.getAttribute("member");
		
		
		
		ArrayList<SellerBoard> nreqList = new ArrayList<SellerBoard>();
		
		DealMngService dms = new DealMngService();
		
		String page="";
		
		try {
			nreqList = dms.nrselectList(m);
			
			page = "views/personBUY/buyingcontrol.jsp";
			
			request.setAttribute("nreqList", nreqList);
			
			request.getRequestDispatcher(page).forward(request, response);
		} catch(buyingctrlException e) {
				page = "/semi/views/common/errorPage.jsp";
				request.setAttribute("msg", "요구사항이 없는 것 불러오기 에러!");
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
