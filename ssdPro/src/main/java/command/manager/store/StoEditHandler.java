package command.manager.store;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.CommandHandler;
import service.manager.store.EditService;

public class StoEditHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		/*
		 * 작성자 String writer;
		 * 글제목 String subject;  
		 * 글내용 String content;  	
		*/	
		
		if( request.getMethod().equals("GET") ) {
			return "storeedit";
		}else if( request.getMethod().equals("POST") ) {  // P
			String faq_code =request.getParameter("store_code") ;
			String manager_code = request.getParameter("manager_code");
			Integer is_global = Integer.parseInt(request.getParameter("is_global"));
			String region = request.getParameter("region");
			String name = request.getParameter("name");
			String brand = request.getParameter("brand");
			String tel = request.getParameter("tel");
			String address = request.getParameter("address");
			String operating_time = request.getParameter("operating_time");
			String lat = request.getParameter("lat");
			String lng = request.getParameter("lng");

		
			EditService editService = EditService.getInstance();
		
			int rowCount = editService.edit(faq_code, manager_code, is_global, region, name, brand, tel, address, operating_time, lat, lng);
		
			if (rowCount == 1) {
			     String location = "storelist.asp";
			     response.sendRedirect(location);
			} 
		}else {  // GET X, POST X
			response.sendError( HttpServletResponse.SC_METHOD_NOT_ALLOWED );
		}

		return null;
	}
}