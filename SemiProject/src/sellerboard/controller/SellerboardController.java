package sellerboard.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;
//import com.oreilly.servlet.MultipartRequest;
//import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

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
		/*
		if(!ServletFileUpload.isMultipartContent(request)) {//여러개를 보내지 않았느냐?
			//만약 multipart/form-data 로 보내지 않았으면 에러 발생
			
			request.setAttribute("msg", "멀티파트 폼으로 전송해야 합니다.");
			request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
			
			//에러페이지에 대한 Exception을 남기지 않았기 때문에 에러가 났을시 nullpoint가뜬다.
		}
		
		//IMG 처리 부분
		// 1. 전송할 파일 크기 설정하기
		int maxSize = 1024*1024*10;	//10MB
		
		//2. multipart/form-data 형식으로 전송되었는지 확인!
		if(!ServletFileUpload.isMultipartContent(request)) {	//MultipartContent 형식으로 전달이 되지 않았느냐?
			//만약 올바른  multipart/form-data로 전송되지 않았을 경우 에러페이지로 즉시 이동시킨다.
			request.setAttribute("msg", "multipart를 통한 전송이 아닙니다.");
			request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
		}
		
		//3. 웹 상의 루트(최상위 경로) 경로를 활용하여 저장할 폴더의 위치 지정하기
		String root = request.getServletContext().getRealPath("resources/");
		//게시판의 첨부파일을 저장할 폴더 이름 지정하기
		//**폴더를 자동으로 만들어 주지 않기 때문에 미리 폴더를 준비해야 한다.
		String savePath = root+"selleruploadIMG/";
		
		//4. 실제 담아온 파일 기타 정보들을 활용하여 MultipartRequest 생성하기
		
		MultipartRequest mrequest = new MultipartRequest(request, // 변경하기 위한 원본 객체
														savePath, // 파일 저장 경로
														 maxSize, // 저장할 파일의 최대 크기
														 "UTF-8", // 저장할 문자셋 설정
														 new DefaultFileRenamePolicy() // 만약 동일한 이름의 파일을 저장했을 경우 
														 							   // 기존의 파일과 구분하기 위해 새로운 파일명 뒤에 숫자를 붙이는 규칙
														);
		
		
		*/
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
		int extradate1 = Integer.parseInt(request.getParameter("extradate1"));					//추가 수정(옵션)
		int extradate2 = Integer.parseInt(request.getParameter("extradate2"));					//추가 수정(옵션)
		
		
		
		//request를 가져오려했는데 이미 요청받는 request와 겹쳐서 requesttobuyer로 받았음
	
		SellerBoard sb = new SellerBoard(btitle, bcontent, erecontent, requesttobuyer, category1_code, category2_code, price, images, editablecount, duedate, speed, plusedit,extradate1,extradate2);
		
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
