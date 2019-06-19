package admin.serviceManage.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.serviceManage.model.service.ServiceManageService;


@WebServlet("/sRefuse.admin")
public class ServiceRefuseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public ServiceRefuseServlet() {
        super();
      
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String bTitle = request.getParameter("title");
		String nickName = request.getParameter("nickName");
		try {
			
		new ServiceManageService().refuseService(bTitle,nickName);
		System.out.println("삭제완료");
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	}

}
