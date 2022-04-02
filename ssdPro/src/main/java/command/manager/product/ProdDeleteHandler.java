package command.manager.product;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.CommandHandler;
import service.manager.Prod.DeleteService;

public class ProdDeleteHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String prd_code = request.getParameter("prd_code");
		
		int rowCount = 0;
		DeleteService deleteService = DeleteService.getInstance();
		rowCount = deleteService.delete(prd_code);
		
		if(rowCount == 1) {
			String location="productlist.asp";
			response.sendRedirect(location);
		}
		
		return null;
	}

}
