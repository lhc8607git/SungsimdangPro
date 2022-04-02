package command.manager.faq;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.CommandHandler;
import service.manager.faq.EditService;

public class FaqEditHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		/*
		 * 작성자 String writer;
		 * 글제목 String subject;  
		 * 글내용	String content;  	
		*/	
		
		if( request.getMethod().equals("GET") ) {
			return "faqedit";
		}else if( request.getMethod().equals("POST") ) {  // P
			String faq_code =request.getParameter("faq_code") ;
			String manager_code = request.getParameter("manager_code");
			String title = request.getParameter("title");
			String content = request.getParameter("content");
	
		
		
			EditService editService = EditService.getInstance();
		
			int rowCount = editService.edit(faq_code, manager_code, title, content);
		
			if (rowCount == 1) {
			      String location = "faqlist.asp";
			      response.sendRedirect(location);
			} 
		}else {  // GET X, POST X
			response.sendError( HttpServletResponse.SC_METHOD_NOT_ALLOWED );
		}

		return null;
	}
}