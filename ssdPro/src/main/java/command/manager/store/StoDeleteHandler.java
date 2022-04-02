package command.manager.store;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.CommandHandler;
import service.manager.store.DeleteService;

public class StoDeleteHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String store_code = request.getParameter("store_code");
		
		int rowCount = 0;
		DeleteService deleteService = DeleteService.getInstance();
		rowCount = deleteService.delete(store_code);
		
		if(rowCount == 1) {
			String location="storelist.asp";
			response.sendRedirect(location);
		}
		
		return null;
	}

}
