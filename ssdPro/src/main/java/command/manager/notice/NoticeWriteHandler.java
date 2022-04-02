package command.manager.notice;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.CommandHandler;
import domain.NoticeManageDTO;
import service.manager.notice.WriteService;

public class NoticeWriteHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request
			, HttpServletResponse response) throws Exception {
		
		if( request.getMethod().equals("GET") ) {
			return "noticewrite";
		}else if( request.getMethod().equals("POST") ) {  // POST ¹æ½Ä
			String manager_code = request.getParameter("manager_code");
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			int is_fix = Integer.parseInt( request.getParameter("is_fix") );
			String img = request.getParameter("img");
			
			NoticeManageDTO dto = new NoticeManageDTO();
			dto.setManager_code(manager_code);
			dto.setTitle(title);
			dto.setContent(content);
			dto.setIs_fix(is_fix);
			dto.setImg(img);
			
			WriteService writeService = WriteService.getInstance();
			int rowCount = writeService.write(dto);
		
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


