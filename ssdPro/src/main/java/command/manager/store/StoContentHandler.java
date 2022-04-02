package command.manager.store;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.CommandHandler;
import domain.StoManageDTO;
import service.manager.store.ContentService;

public class StoContentHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String store_code = request.getParameter("store_code");
		
		ContentService contentService = ContentService.getInstance();
		StoManageDTO dto = contentService.selectOne(store_code);
		
		request.setAttribute("dto", dto);
		
		return "/manager/store/storecontent";
	}

}
