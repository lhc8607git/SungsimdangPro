package command.manager.ad;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.CommandHandler;
import domain.AdManageDTO;
import service.manager.ad.EditService;
import service.manager.ad.WriteService;

public class AdWriteHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request
			, HttpServletResponse response) throws Exception {
		
		if( request.getMethod().equals("GET") ) {
			return "adwrite";
		}else if( request.getMethod().equals("POST") ) {  // POST ¹æ½Ä
			String manager_code = request.getParameter("manager_code");
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			
			AdManageDTO dto = new AdManageDTO();
				dto.setManager_code(manager_code);
				dto.setTitle(title);
				dto.setContent(content);
		
			WriteService writeService = WriteService.getInstance();
			int rowCount = writeService.write(dto);
		
			if (rowCount == 1) {
			      String location = "adlist.asp";
			      response.sendRedirect(location);
			} 
		}else {  // GET X, POST X
			response.sendError( HttpServletResponse.SC_METHOD_NOT_ALLOWED );
		}
		
		return null;
	
	}
}


