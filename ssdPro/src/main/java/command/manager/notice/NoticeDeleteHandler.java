package command.manager.notice;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.CommandHandler;
import service.manager.notice.DeleteService;

public class NoticeDeleteHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String notice_code = request.getParameter("notice_code");
		
		int rowCount = 0;
		DeleteService deleteService = DeleteService.getInstance();
		rowCount = deleteService.delete(notice_code);
		
		if(rowCount == 1) {
			String location="noticelist.asp";
			response.sendRedirect(location);
		}
		
		return null;
	}

}
