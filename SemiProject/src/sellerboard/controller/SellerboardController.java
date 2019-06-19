package sellerboard.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sellerboard.model.exception.SellerboardException;
import sellerboard.model.service.SellerboardService;
import sellerboard.model.vo.SellerBoard;


/**
 * Servlet implementation class SellerService
 */
@WebServlet("/sellerboard.do")
public class SellerboardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SellerboardController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("서비스 서블릿으로 무사히 진입성공");
		//인코딩
		request.setCharacterEncoding("UTF-8");
		response.setContentType(" text/html; charset=UTF-8"); 
		
		//form 버튼이 눌렸을 때 getParameter로 값을 받아온다 
		//
		String btitle = request.getParameter("btitle");										//제목
		String bcontent = request.getParameter("bcontent");									//상세 설명
		String erecontent = request.getParameter("erecontent");								//수정 및 재진행 안내
		String requesttobuyer = request.getParameter("requesttobuyer");						//작업 전 요청사항
		String category1_code = request.getParameter("category1_code");						//상위 카테고리
		String category2_code = request.getParameter("category2_code");						//하위 카테고리
		int price = Integer.parseInt(request.getParameter("price"));						//가격
		String images = request.getParameter("images");										//이미지들
		int editablecount = Integer.parseInt(request.getParameter("editablecount"));		//수정 횟수
		int duedate = Integer.parseInt(request.getParameter("duedate"));					//작업 기간
		int speed = Integer.parseInt(request.getParameter("speed"));						//빠른 작업(옵션)
		int plusedit = Integer.parseInt(request.getParameter("plusedit"));					//추가 수정(옵션)
		
		//request를 가져오려했는데 이미 요청받는 request와 겹쳐서 requesttobuyer로 받았음
	
		SellerBoard sb = new SellerBoard(btitle, bcontent, erecontent, requesttobuyer, category1_code, category2_code, price, images, editablecount, duedate, speed, plusedit);
		
		SellerboardService sbs = new SellerboardService();
		
		
		try {
			sbs.insertsellerBoard(sb);
			System.out.println("판매서비스 등록완료");
		
			response.sendRedirect("views/seller/SellerboardComplete.jsp");
		} catch(SellerboardException e) {
			request.setAttribute("msg", "판매 등록 중 에러가 발생했어");
			request.setAttribute("exception", e); // 화면을 던져줄거니까
			
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
