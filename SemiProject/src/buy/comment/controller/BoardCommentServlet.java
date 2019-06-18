package comment.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import comment.model.service.BoardCommentService;
import comment.model.vo.BoardComment;

/**
 * Servlet implementation class BoardCommentServlet
 */
@WebServlet("/insertComment.bo")
public class BoardCommentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardCommentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int bno = Integer.parseInt(request.getParameter("bno"));
		int cno = Integer.parseInt(request.getParameter("cno"));
		String content = request.getParameter("ccontent");
		String writer = request.getParameter("cwriter");
		int cevaluation = Integer.parseInt(request.getParameter("cevaluation"));
		
		BoardComment bco = new BoardComment(bno, cno, writer, content, cevaluation);
		int result = new BoardCommentService().insertComment(bco);
		
		if(result > 0) {
			response.sendRedirect("listDetail.bo?bno=" + bno);
			
		}else {
			request.setAttribute("msg", "댓글 작성 실패!!");
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
