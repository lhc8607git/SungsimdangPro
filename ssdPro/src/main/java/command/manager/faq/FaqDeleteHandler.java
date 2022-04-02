package command.manager.faq;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.CommandHandler;
import service.manager.faq.DeleteService;

public class FaqDeleteHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String faq_code = request.getParameter("faq_code");
		
		int rowCount = 0;
		DeleteService deleteService = DeleteService.getInstance();
		rowCount = deleteService.delete(faq_code);
		
		if(rowCount == 1) {
			String location="faqlist.asp";
			response.sendRedirect(location);
		}
		
		return null;
	}

}
