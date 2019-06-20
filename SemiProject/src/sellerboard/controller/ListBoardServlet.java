package sellerboard.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sellerboard.model.service.SellerboardService;
import sellerboard.model.vo.PageInfo;
import sellerboard.model.vo.SellerBoard;

/**
 * Servlet implementation class ListBoardServlet
 */
@WebServlet("/selectList.bo")
public class ListBoardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListBoardServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//인코딩
		request.setCharacterEncoding("UTF-8");
		response.setContentType(" text/html; charset=UTF-8"); 
		
		ArrayList<SellerBoard> list = null;
		SellerboardService bs = new SellerboardService();
		
		int startPage;
		int endPage;
		int maxPage;
		int currentPage;
		int pageLimit;
		int boardLimit;
		
		currentPage = 1;
		pageLimit = 5;
		boardLimit = 12;
		String cate = request.getParameter("cate");
		System.out.println(cate);
		
		
		if(request.getParameter("currentPage")!=null) {
			currentPage
			= Integer.parseInt(request.getParameter("currentPage"));
		}
		
		int listCount = bs.getListCount();
		
		System.out.println("총 게시물 개수 : " + listCount);
		
		
		maxPage = (int)((double)listCount/boardLimit+0.99);
		
		startPage = (int)((double)currentPage/(pageLimit+1))*pageLimit+1;
		
		endPage = startPage+pageLimit-1;
		if(endPage>maxPage) {
			endPage = maxPage;
		}
		
		list = bs.selectList(currentPage, pageLimit, boardLimit);
		
		String page="";
		if(list != null) {
			page="views/categoryPage/"+cate+".jsp"; 
			request.setAttribute("list", list);
			
			PageInfo pi = new PageInfo(currentPage, listCount, pageLimit, boardLimit, maxPage, startPage, endPage);
			request.setAttribute("pi", pi);
					
		}else {
			page="views/common/errorPage.jsp";
			request.setAttribute("msg", "게시글 목록 조회 실패");
		}
		request.getRequestDispatcher(page).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
