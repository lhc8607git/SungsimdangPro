package command.manager.product;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.CommandHandler;
import domain.ProdManageDTO;

import service.manager.Prod.ContentService;

public class ProdContentHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String prd_code = request.getParameter("prd_code");
		
		ContentService contentService = ContentService.getInstance();
		ProdManageDTO dto = contentService.selectOne(prd_code);
		
		request.setAttribute("dto", dto);
		
		return "/manager/product/productcontent";
	}

}
