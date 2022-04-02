package command.manager.notice;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.CommandHandler;
import domain.NoticeManageDTO;
import service.manager.notice.ContentService;

public class NoticeContentHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String notice_code = request.getParameter("notice_code");
		
		ContentService contentService = ContentService.getInstance();
		NoticeManageDTO dto = contentService.selectOne(notice_code);
		
		request.setAttribute("dto", dto);
		
		return "/manager/notice/noticecontent";
	}

}
