package command.manager.notice;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.CommandHandler;

import domain.NoticeManageDTO;
import service.manager.notice.ListService;

public class NoticeListHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {

		ListService listService = ListService.getInstance();
		List<NoticeManageDTO> list = listService.select();
		
		request.setAttribute("list", list);
		//request.setAttribute("pageBlock", "[1] 2 3 4 5 6 7 8 9 10 >");
		
		return "/manager/notice/noticelist";
	}
	
}
