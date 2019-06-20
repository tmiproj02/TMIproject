package admin.memberManage.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.model.vo.ClientRequest;

@WebServlet("/clientRequest.do")
public class ClientRequestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public ClientRequestServlet() {
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			ClientRequest cr = null;
			String rTitle = request.getParameter("rTitle");
			String rContent = request.getParameter("rContent");
			
			
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		doGet(request, response);
	}

}
