package command.manager.notice;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.CommandHandler;
import service.manager.notice.EditService;

public class NoticeEditHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		/*
		 * 작성자 String writer;
		 * 글제목 String subject;  
		 * 글내용	String content;  	
		*/	
		
		if( request.getMethod().equals("GET") ) {
			return "noticeedit";
		}else if( request.getMethod().equals("POST") ) {  // P
			String notice_code =request.getParameter("notice_code") ;
			String manager_code = request.getParameter("manager_code");
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			int is_fix = Integer.parseInt(request.getParameter("is_fix"));
			String img = request.getParameter("img");	
		
			EditService editService = EditService.getInstance();
		
			int rowCount = editService.edit(notice_code, manager_code, title, content, is_fix, img);
		
			if (rowCount == 1) {
			    String location = "noticelist.asp";
			    response.sendRedirect(location);
			} 
		}else {  // GET X, POST X
			response.sendError( HttpServletResponse.SC_METHOD_NOT_ALLOWED );
		}

		return null;
	}
}