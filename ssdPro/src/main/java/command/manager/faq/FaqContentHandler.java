package command.manager.faq;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.CommandHandler;
import domain.FaqManageDTO;
import service.manager.faq.ContentService;

public class FaqContentHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String faq_code = request.getParameter("faq_code");
		
		ContentService contentService = ContentService.getInstance();
		FaqManageDTO dto = contentService.selectOne(faq_code);
		
		request.setAttribute("dto", dto);
		
		return "/manager/faq/faqcontent";
	}

}
