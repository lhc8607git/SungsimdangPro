package command.manager.ad;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.CommandHandler;
import domain.AdManageDTO;
import service.manager.ad.ContentService;

public class AdContentHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String ad_code = request.getParameter("ad_code");
		
		ContentService contentService = ContentService.getInstance();
		AdManageDTO dto = contentService.selectOne(ad_code);
		
		request.setAttribute("dto", dto);
		
		return "/manager/ad/adcontent";
	}

}
